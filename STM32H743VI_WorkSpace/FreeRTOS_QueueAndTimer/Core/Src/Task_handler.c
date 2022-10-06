#include "main.h"

int extract_command(command_t *cmd);
void process_Command(command_t	*cmd);

const char *msg_inv = "////Invalid option////\n";
const char *RTCTask = "Inside RTC task\n";

void Menu_Task(void *param)
{
	uint32_t cmd_addr;

	command_t *cmd;

	int option;

	const char* msg_menu = "\n========================\n"
							"|         Menu         |\n"
							"========================\n"
								"LED effect    ----> 0\n"
								"Date and time ----> 1\n"
								"Exit          ----> 2\n"
								"Enter your choice here : ";

	while(1){
		xQueueSend(q_Print,&msg_menu,portMAX_DELAY);

		//wait for menu commands
		xTaskNotifyWait(0,0,&cmd_addr,portMAX_DELAY);
		cmd = (command_t*)cmd_addr;

		if(cmd->lenght == 1)
		{
			option = cmd->payload[0] - 48;
			switch(option)
			{
				case 0:
					current_state = sLEDEffect;
					xTaskNotify(LED_Task_Handle,0,eNoAction);
					break;
				case 1:
					current_state = sRTCMenu;
					xTaskNotify(RTC_Task_Handle,0,eNoAction);
					break;
				case 2: /*implement exit */
					break;
				default:
					xQueueSend(q_Print,&msg_inv,portMAX_DELAY);
					continue;
			}

		}else{
			//invalid entry
			xQueueSend(q_Print,&msg_inv,portMAX_DELAY);
			continue;
		}


		//wait to run again when some other task notifies
		xTaskNotifyWait(0,0,NULL,portMAX_DELAY);

	}//while super loop
}

void LED_Task(void *param)
{
	uint32_t cmd_addr;
	command_t *cmd;
	const char* msg_led = "========================\n"
						  "|      LED Effect     |\n"
						  "========================\n"
						  "(none,e1,e2,e3,e4)\n"
						  "Enter your choice here : ";

	while(1){
		/*Wait for notification (Notify wait) */
		xTaskNotifyWait(0,0,NULL,portMAX_DELAY);

		/*Print LED menu */
		xQueueSend(q_Print,&msg_led,portMAX_DELAY);

		/*wait for LED command (Notify wait) */
		xTaskNotifyWait(0,0,&cmd_addr,portMAX_DELAY);
		cmd = (command_t*)cmd_addr;

		if(cmd->lenght <= 4)
		{
			if(! strcmp((char*)cmd->payload,"none"))
				led_effect_stop();
			else if (! strcmp((char*)cmd->payload,"e1"))
				led_effect(1);
			else if (! strcmp((char*)cmd->payload,"e2"))
				led_effect(2);
			else if (! strcmp((char*)cmd->payload,"e3"))
				led_effect(3);
			else if (! strcmp((char*)cmd->payload,"e4"))
				led_effect(4);
			else
				xQueueSend(q_Print,&msg_inv,portMAX_DELAY); /*print invalid message */
		}else
			xQueueSend(q_Print,&msg_inv,portMAX_DELAY);

		/* update state variable */
		current_state = sMainMenu;

		/*Notify menu task */
		xTaskNotify(Menu_Task_Handle,0,eNoAction);

	}
}


// User inout is in ASCII so this function converts ASCII to a number
uint8_t getnumber(uint8_t *p , int lenght)
{

	int value ;

	if(lenght > 1)
	   value =  ( ((p[0]-48) * 10) + (p[1] - 48) );
	else
		value = p[0] - 48;

	return value;

}

void RTC_Task(void *param)
{

	command_t *cmd;
	const char* msg_rtc1 = "========================\n"
							"|         RTC          |\n"
							"========================\n";

	const char* msg_rtc2 = "Configure Time            ----> 0\n"
							"Configure Date            ----> 1\n"
							"Enable reporting          ----> 2\n"
							"Exit                      ----> 3\n"
							"Enter your choice here : ";


	const char *msg_rtc_hh = "Enter hour(1-12):";
	const char *msg_rtc_mm = "Enter minutes(0-59):";
	const char *msg_rtc_ss = "Enter seconds(0-59):";

	const char *msg_rtc_dd  = "Enter date(1-31):";
	const char *msg_rtc_mo  ="Enter month(1-12):";
	const char *msg_rtc_dow  = "Enter day(1-7 sun:1):";
	const char *msg_rtc_yr  = "Enter year(0-99):";

	const char *msg_conf = "Configuration successful\n";
	const char *msg_rtc_report = "Enable time&date reporting(y/n)?: ";


	uint32_t cmd_addr;

	static int rtc_state = 0;
	int menu_code;

	RTC_TimeTypeDef time;
	RTC_DateTypeDef date;


#define HH_CONFIG 		0
#define MM_CONFIG 		1
#define SS_CONFIG 		2

#define DATE_CONFIG 	0
#define MONTH_CONFIG 	1
#define YEAR_CONFIG 	2
#define DAY_CONFIG 		3


	while(1){
		/*Notify wait (wait till someone notifies) */
		xTaskNotifyWait(0,0,NULL,portMAX_DELAY);

		/*Print the menu and show current date and time information */
		xQueueSend(q_Print,&msg_rtc1,portMAX_DELAY);
		show_time_date();
		xQueueSend(q_Print,&msg_rtc2,portMAX_DELAY);


		while(current_state != sMainMenu){

			/*Wait for command notification (Notify wait) */
			xTaskNotifyWait(0,0,&cmd_addr,portMAX_DELAY);
			cmd = (command_t*)cmd_addr;

			switch(current_state)
			{
				case sRTCMenu:{
					/*process RTC menu commands */
					if(cmd->lenght == 1)
					{
						menu_code = cmd->payload[0] - 48;
						switch(menu_code)
						{
						case 0:
							current_state = sRTCTimeConfig;
							xQueueSend(q_Print,&msg_rtc_hh,portMAX_DELAY);
							break;
						case 1:
							current_state = sRTCDateConfig;
							xQueueSend(q_Print,&msg_rtc_dd,portMAX_DELAY);
							break;
						case 2 :
							current_state = sRTCReport;
							xQueueSend(q_Print,&msg_rtc_report,portMAX_DELAY);
							break;
						case 3 :
							current_state = sMainMenu;
							break;
						default:
							current_state = sMainMenu;
							xQueueSend(q_Print,&msg_inv,portMAX_DELAY);
						}

					}else{
						current_state = sMainMenu;
						xQueueSend(q_Print,&msg_inv,portMAX_DELAY);
					}
					break;}

				case sRTCTimeConfig:{
					/*get hh, mm, ss infor and configure RTC */
					/*take care of invalid entries */
					switch(rtc_state)
						{
							case HH_CONFIG:{
								uint8_t hour = getnumber(cmd->payload , cmd->lenght);
								time.Hours = hour;
								rtc_state = MM_CONFIG;
								xQueueSend(q_Print,&msg_rtc_mm,portMAX_DELAY);
								break;}
							case MM_CONFIG:{
								uint8_t min = getnumber(cmd->payload , cmd->lenght);
								time.Minutes = min;
								rtc_state = SS_CONFIG;
								xQueueSend(q_Print,&msg_rtc_ss,portMAX_DELAY);
								break;}
							case SS_CONFIG:{
								uint8_t sec = getnumber(cmd->payload , cmd->lenght);
								time.Seconds = sec;
								if(!validate_rtc_information(&time,NULL))
								{
									rtc_configure_time(&time);
									xQueueSend(q_Print,&msg_conf,portMAX_DELAY);
									show_time_date();
								}else
									xQueueSend(q_Print,&msg_inv,portMAX_DELAY);

								current_state = sMainMenu;
								rtc_state = 0;
								break;}
						}

					break;}

				case sRTCDateConfig:{

					/*get date, month, day , year info and configure RTC */

					/*take care of invalid entries */
					switch(rtc_state)
						{
							case DATE_CONFIG:{
								uint8_t d = getnumber(cmd->payload , cmd->lenght);
								date.Date = d;
								rtc_state = MONTH_CONFIG;
								xQueueSend(q_Print,&msg_rtc_mo,portMAX_DELAY);
								break;}
							case MONTH_CONFIG:{
								uint8_t month = getnumber(cmd->payload , cmd->lenght);
								date.Month = month;
								rtc_state = DAY_CONFIG;
								xQueueSend(q_Print,&msg_rtc_dow,portMAX_DELAY);
								break;}
							case DAY_CONFIG:{
								uint8_t day = getnumber(cmd->payload , cmd->lenght);
								date.WeekDay = day;
								rtc_state = YEAR_CONFIG;
								xQueueSend(q_Print,&msg_rtc_yr,portMAX_DELAY);
								break;}
							case YEAR_CONFIG:{
								uint8_t year = getnumber(cmd->payload , cmd->lenght);
								date.Year = year;

								if(!validate_rtc_information(NULL,&date))
								{
									rtc_configure_date(&date);
									xQueueSend(q_Print,&msg_conf,portMAX_DELAY);
									show_time_date();
								}else
									xQueueSend(q_Print,&msg_inv,portMAX_DELAY);

								current_state = sMainMenu;
								rtc_state = 0;
								break;}
						}


					break;}

				case sRTCReport:{
					/*enable or disable RTC current time reporting over ITM printf */
					if(cmd->lenght == 1)
					{
						if(cmd->payload[0] == 'y'){
							if(xTimerIsTimerActive(RTC_timer) == pdFALSE)
								xTimerStart(RTC_timer,portMAX_DELAY);
						}else if (cmd->payload[0] == 'n'){
							xTimerStop(RTC_timer,portMAX_DELAY);
						}else{
							xQueueSend(q_Print,&msg_inv,portMAX_DELAY);
						}

					}else
					    xQueueSend(q_Print,&msg_inv,portMAX_DELAY);

					current_state = sMainMenu;
					break;}

			}// switch end

		} //while end


		/*Notify menu task */
		xTaskNotify(Menu_Task_Handle,0,eNoAction);

		}//while super loop end
}

void CommandHanding_Task(void *param)
{
	BaseType_t	Retunred_Val;
	command_t	Command;

	while(1)
	{
		// Wait indefinitely and capture return value if it receives notification from call back
		Retunred_Val = xTaskNotifyWait(0, 0, NULL, portMAX_DELAY);
		if(Retunred_Val == pdTRUE)
		{
			// Process user input stored in the input queue
			process_Command(&Command);
		}
	}
}

void process_Command(command_t	*cmd)
{
	extract_command(cmd);

	switch(current_state)
	{
		case	sMainMenu:
			xTaskNotify(Menu_Task_Handle, (uint32_t)cmd, eSetValueWithOverwrite);
			break;
		case	sLEDEffect:
			xTaskNotify(LED_Task_Handle, (uint32_t)cmd, eSetValueWithOverwrite);
			break;
		case	sRTCMenu:
		case	sRTCTimeConfig:
		case	sRTCDateConfig:
		case	sRTCReport:
			xTaskNotify(RTC_Task_Handle, (uint32_t)cmd, eSetValueWithOverwrite);
			break;
	}
}


int extract_command(command_t *cmd)
{
	uint8_t item;
	BaseType_t status;

	status = uxQueueMessagesWaiting(q_Data);
	if(!status) return -1;
	uint8_t i=0;

	do
	{
		status = xQueueReceive(q_Data, &item, 0);
		if(status == pdTRUE)	cmd->payload[i++] = item;
	}while(item != '\n');
	cmd->payload[i-1] = '\0';
	cmd->lenght = i-1;	/* Saving lenghtgth of the command excluding null char*/

	return 0;
}

void Print_Task(void *param)
{
	uint32_t *msg;
	while(1){
		xQueueReceive(q_Print, &msg, portMAX_DELAY);
		HAL_UART_Transmit(&huart3,(uint8_t*)msg, strlen((char*)msg), HAL_MAX_DELAY);
	}
}
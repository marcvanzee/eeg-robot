#include <WiServer.h>
unsigned char local_ip[]       = {192,168,0,100};  //  IP address of WiShield
unsigned char gateway_ip[]     = {192,168,0,1};    //  Router or gateway IP address
unsigned char subnet_mask[]    = {255,255,255,0};  //  Subnet mask for the local network
const prog_char ssid[] PROGMEM = {"brainbox"};      //  Name of the router (SSID), max 32 Bytes
unsigned char security_type    = 0;                //  0 - open; 1 - WEP; 2 - WPA; 3 - WPA2
const prog_char security_passphrase[] PROGMEM = {"marcz"}; //  Password for Wireless network, max 64 characters
prog_uchar wep_keys[] PROGMEM  = { 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d,  // Key 0
				   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // Key 1
				   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // Key 2
				   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00	  // Key 3
				};
unsigned char wireless_mode    = 1;  //  Setup the wireless mode; 1 - WIRELESS_MODE_INFRA; 2 - WIRELESS_MODE_ADHOC
unsigned char ssid_len;
unsigned char security_passphrase_len;


/*
 *  Setup Servo's
*/

//  This happens by including the Servo Library and defining Servo's
#include <Servo.h>
Servo leftServo; 
Servo rightServo; 

//  Static vars
//  These are defined constants and can't be changed
#define leftServoPin   2  // Conected Pin to the left servo
#define rightServoPin  3  // Conected Pin to the right servo
#define speed          90

void setup() {
  
  //  WISERVER
  WiServer.init(servePage);          //  Initialize WiServer and have it use the sendMyPage function to serve pages
  Serial.begin(57600);               //  Start Serial communication for debugging
  WiServer.enableVerboseMode(true);  //  Bug fix mode true or false
  
  //  SERVO
  pinMode(leftServoPin, OUTPUT);     //  Set Left servoPin's as output
  pinMode(rightServoPin, OUTPUT);    //  Set Right servoPin's as output
  leftServo.attach(leftServoPin);    //  Attach left pin to servo's
  rightServo.attach(rightServoPin);  //  Attach Right pin to servo's
  robotControl(0);                   //  Stop Robot by using the robotControl function
  
}

void loop () {
 
  WiServer.server_task();  //  Run WiServer

}

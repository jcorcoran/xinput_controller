/**
 * xinput_controller
 *
 * Intended for FRC use as a generic joystick/button box platform.
 *
 * based on flight stick example from:
 * https://github.com/dmadison/MSF-XINPUT/blob/master/MSF_XINPUT/examples/MSF_FightStick/MSF_FightStick.ino
 *
 **/

//Includes
#include <Bounce.h>
#include "xinput.h"

//General Declarations
#define MILLIDEBOUNCE 20  //Debounce time in milliseconds
#define NUMBUTTONS 14     //Number of all buttons (including d-pad)
#define NUMBUTTONSONLY 10 //Number of non-dpad buttons 

//Digital Pin Declarations
#define pinUP 23     //Up on stick pin
#define pinDN 22     //Down on stick pin
#define pinLT 21     //Left on stick pin
#define pinRT 20     //Right on stick pin
#define pinB1 2      //Button 1 pin
#define pinB2 3      //Button 2 pin
#define pinB3 4      //Button 3 pin
#define pinB4 5      //Button 4 pin
#define pinB5 6      //Button 5 pin
#define pinB6 7      //Button 6 pin
#define pinB7 8      //Button 7 pin
#define pinB8 9      //Button 8 pin
#define pinB9 10     //Select 9 pin
#define pinB10 11    //Start 10 pin
#define pinOBLED 13  //Onboard LED pin

//Analog Pin Declarations
#define pinLX 0        //Left X axis pin
#define pinLY 1        //Left Y axis pin
#define pinRX 2        //Right X axis pin
#define pinRY 3        //Right Y axis pin
#define pinLeftTrig  4 //Left trigger
#define pinRightTrig 5 //Right trigger

//DISABLED ANALOG INPUTS
#define LEFT_STICK_DISABLED false
#define RIGHT_STICK_DISABLED true
#define TRIGGER_DISABLED true

#define ANALOG_RES 13     // Resolution of the analog reads (bits)

//Position of a button in the button status array
#define POSUP 0
#define POSDN 1
#define POSLT 2
#define POSRT 3
#define POSB1 4
#define POSB2 5
#define POSB3 6
#define POSB4 7
#define POSB5 8
#define POSB6 9
#define POSB7 10
#define POSB8 11
#define POSB9 12
#define POSB10 13

//Global Variables
byte buttonStatus[NUMBUTTONS];  //array Holds a "Snapshot" of the button status to parse and manipulate

//Setup Button Debouncing
Bounce joystickUP = Bounce(pinUP, MILLIDEBOUNCE);
Bounce joystickDOWN = Bounce(pinDN, MILLIDEBOUNCE);
Bounce joystickLEFT = Bounce(pinLT, MILLIDEBOUNCE);
Bounce joystickRIGHT = Bounce(pinRT, MILLIDEBOUNCE);
Bounce button1 = Bounce(pinB1, MILLIDEBOUNCE);
Bounce button2 = Bounce(pinB2, MILLIDEBOUNCE);
Bounce button3 = Bounce(pinB3, MILLIDEBOUNCE);
Bounce button4 = Bounce(pinB4, MILLIDEBOUNCE);
Bounce button5 = Bounce(pinB5, MILLIDEBOUNCE);
Bounce button6 = Bounce(pinB6, MILLIDEBOUNCE);
Bounce button7 = Bounce(pinB7, MILLIDEBOUNCE);
Bounce button8 = Bounce(pinB8, MILLIDEBOUNCE);
Bounce button9 = Bounce(pinB9, MILLIDEBOUNCE);
Bounce button10 = Bounce(pinB10, MILLIDEBOUNCE);

//Initiate the xinput class and setup the LED pin
XINPUT controller(LED_ENABLED, pinOBLED);

//void Configure Inputs and Outputs
void setupPins()
{
    //Configure the direction of the pins
    //All inputs with internal pullups enabled
    pinMode(pinUP, INPUT_PULLUP);
    pinMode(pinDN, INPUT_PULLUP);
    pinMode(pinLT, INPUT_PULLUP);
    pinMode(pinRT, INPUT_PULLUP);
    pinMode(pinB1, INPUT_PULLUP);
    pinMode(pinB2, INPUT_PULLUP);
    pinMode(pinB3, INPUT_PULLUP);
    pinMode(pinB4, INPUT_PULLUP);
    pinMode(pinB5, INPUT_PULLUP);
    pinMode(pinB6, INPUT_PULLUP);
    pinMode(pinB7, INPUT_PULLUP);
    pinMode(pinB8, INPUT_PULLUP);
    pinMode(pinB9, INPUT_PULLUP);
    pinMode(pinB10, INPUT_PULLUP);
    pinMode(pinOBLED, OUTPUT);  
    //Set the LED to low to make sure it is off
    digitalWrite(pinOBLED, LOW);
}

//Update the debounced button statuses
//We are looking for falling edges since the boards are built
//for common ground sticks
void buttonRead()
{
  if (joystickUP.update()) {buttonStatus[POSUP] = joystickUP.fallingEdge();}
  if (joystickDOWN.update()) {buttonStatus[POSDN] = joystickDOWN.fallingEdge();}
  if (joystickLEFT.update()) {buttonStatus[POSLT] = joystickLEFT.fallingEdge();}
  if (joystickRIGHT.update()) {buttonStatus[POSRT] = joystickRIGHT.fallingEdge();}
  if (button1.update()) {buttonStatus[POSB1] = button1.fallingEdge();}
  if (button2.update()) {buttonStatus[POSB2] = button2.fallingEdge();}
  if (button3.update()) {buttonStatus[POSB3] = button3.fallingEdge();}
  if (button4.update()) {buttonStatus[POSB4] = button4.fallingEdge();}
  if (button5.update()) {buttonStatus[POSB5] = button5.fallingEdge();}
  if (button6.update()) {buttonStatus[POSB6] = button6.fallingEdge();}
  if (button7.update()) {buttonStatus[POSB7] = button7.fallingEdge();}
  if (button8.update()) {buttonStatus[POSB8] = button8.fallingEdge();}
  if (button9.update()) {buttonStatus[POSB9] = button9.fallingEdge();}
  if (button10.update()) {buttonStatus[POSB10] = button10.fallingEdge();}
}

//ProcessInputs
void processInputs()
{
  //Update the DPAD
  controller.dpadUpdate(buttonStatus[POSUP], buttonStatus[POSDN], buttonStatus[POSLT], buttonStatus[POSRT]);

  //Buttons
  if (buttonStatus[POSB1]) {controller.buttonUpdate(BUTTON_A, 1);}
  else  {controller.buttonUpdate(BUTTON_A, 0);}
  if (buttonStatus[POSB2]) {controller.buttonUpdate(BUTTON_B, 1);}
  else {controller.buttonUpdate(BUTTON_B, 0);}
  if (buttonStatus[POSB3]) {controller.buttonUpdate(BUTTON_X, 1);}
  else {controller.buttonUpdate(BUTTON_X, 0);}
  if (buttonStatus[POSB4]) {controller.buttonUpdate(BUTTON_Y, 1);}
  else {controller.buttonUpdate(BUTTON_Y, 0);}
  if (buttonStatus[POSB5]) {controller.buttonUpdate(BUTTON_LB, 1);}
  else {controller.buttonUpdate(BUTTON_LB, 0);}
  if (buttonStatus[POSB6]) {controller.buttonUpdate(BUTTON_RB, 1);}
  else {controller.buttonUpdate(BUTTON_RB, 0);}
  if (buttonStatus[POSB7]){controller.buttonUpdate(BUTTON_BACK, 1);}
  else {controller.buttonUpdate(BUTTON_BACK, 0);}
  if (buttonStatus[POSB8]){controller.buttonUpdate(BUTTON_START, 1);}
  else {controller.buttonUpdate(BUTTON_START, 0);}
  if (buttonStatus[POSB9]) {controller.buttonUpdate(BUTTON_L3, 1);}
  else {controller.buttonUpdate(BUTTON_L3, 0);}
  if (buttonStatus[POSB10]) {controller.buttonUpdate(BUTTON_R3, 1);}
  else {controller.buttonUpdate(BUTTON_R3, 0);}
  

  //Axis
  if(!LEFT_STICK_DISABLED) {
    controller.stickUpdate(STICK_LEFT, xinput_scale_sticks(avgAnalogRead(pinLX)),
      xinput_scale_sticks(avgAnalogRead(pinLY)));
  }
  if(!RIGHT_STICK_DISABLED) {
    controller.stickUpdate(STICK_RIGHT, xinput_scale_sticks(avgAnalogRead(pinRX)),
      xinput_scale_sticks(avgAnalogRead(pinRY)));
  }
  if(!TRIGGER_DISABLED) {
    controller.triggerUpdate(xinput_scale_trigger(avgAnalogRead(pinLeftTrig)),
      xinput_scale_trigger(avgAnalogRead(pinRightTrig)));
  }

  //Triggers
//  uint8_t leftTrigger = 0;
//  uint8_t rightTrigger = 0;
//  if (buttonStatus[POSB3]) {leftTrigger = 0xFF;}
//  if (buttonStatus[POSB4]) {rightTrigger = 0xFF;}
//  controller.triggerUpdate(leftTrigger, rightTrigger);
}

//Setup
void setup() 
{
  //Increase resolution of analog inputs.
  analogReadResolution(ANALOG_RES);
  
  setupPins();
}

void loop() 
{
  //Poll Buttons
  buttonRead();
  
  //Process all inputs and load up the usbData registers correctly
  processInputs();
  
  //Check for bootloader jump
//  if (buttonStatus[POSUP] & buttonStatus[POSB1] & buttonStatus[POSB5] & buttonStatus[POSST] & buttonStatus[POSSL])
//  {
//    controller.bootloaderJump();
//  }

  //Update the LED display
  controller.LEDUpdate();

  //Send data
  controller.sendXinput();

  //Receive data
  controller.receiveXinput();
}

/**
 * Scale the analog inputs to the range used by joystick trigger function.
 * 
 * Note each axis only operates over half the range (0 - 3V)
 *   left trigger is the low side of the range (0 - 1.5V)
 *   right trigger is the high side of the range (1.5 - 3V)
 */
int xinput_scale_trigger(int val) {
  int _out_max = 0xFF;
  int _out_min = 0;
  int _in_min = 0;
  int _in_max = pow(2,ANALOG_RES);
  int _in_zero = (_in_max - _in_min)/2;
  int ret = 0;

  if(val >= _in_zero) { //Scale the high side
    ret = map(val, _in_zero, _in_max, 0, _out_max);
  } else {  //Scale the low side
    ret = map(val, _in_min, _in_zero, _out_min, 0);
  }

  return ret;
}

/**
 * Scale the analog inputs to the range used by joystick function.
 *
 */
int xinput_scale_sticks(int val) {
  int _out_max = 32767;
  int _out_min = -32768;
  int _in_min = 0;
  int _in_max = pow(2,ANALOG_RES);
  int _in_zero = (_in_max - _in_min)/2;
  int ret = 0;

  if(val >= _in_zero) { //Scale the high side
    ret = map(val, _in_zero, _in_max, 0, _out_max);
  } else {  //Scale the low side
    ret = map(val, _in_min, _in_zero, _out_min, 0);
  }
  
  return ret;
}

int avgAnalogRead(int channel) {
  #define SAMPLES 5
  int average = 0;

  for(int i=0; i < SAMPLES; i++) {
    average += analogRead(channel);
  }

  return average / SAMPLES;
}


/*
 * Randell Carrido
 * Course: CSC 415
 * Semester: Spring 2017
 * Instructor: Dr. Pulimood
 * Project name: Mail Direct
 * Description: App that notifies user when mail is in their mailbox
 * Filename: mailDirect_Arduino.ino
 * Description: Arduino sensor portion, programs the sensors
 * Last modified on: 4/25
 */

const int trigPin = 9;
const int echoPin = 10;
const int LED = 11;
long duration;
int distance;

void setup() {
  pinMode(trigPin,OUTPUT);
  pinMode(echoPin,INPUT);
  pinMode(LED,OUTPUT);
  Serial.begin(9600);
}
/*
 * Code above: setup(), Initial setup for arduion, sets pins.
 * 
 * Code below: loop(), Runs in a loop, runs the sensor, writes in
 * distances. If distance = 11, there is no mail. Else, there is 
 * mail.
 */
void loop() {
  digitalWrite(trigPin,LOW);
  delayMicroseconds(2);

  digitalWrite(trigPin,HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin,LOW);

  duration = pulseIn(echoPin,HIGH);
  distance = duration*0.034/2;

  

  if(distance <9){
    Serial.println("You've got Mail!");
    digitalWrite(LED,HIGH);
  }
  else{
    Serial.println("No Mail.");
    digitalWrite(LED,LOW);
  }
  delay(500);
}

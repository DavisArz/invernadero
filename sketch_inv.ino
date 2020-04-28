#include "DHT.h"
#define DHTPIN 2
#define DHTTYPE DHT11
DHT dht(DHTPIN, DHTTYPE);

int Relay = 13; 

int val; 
const int AirValue = 620;
const int WaterValue = 310;
int soilMoistureValue = 0;
int soilmoisturepercent=0;

void setup() {
  Serial.begin(9600);
  dht.begin(); //empieza a leer por el sensor de temperatura
  pinMode(13,OUTPUT); //Pin 13 como salida, manda la señal al rele
  pinMode(8,INPUT); //Pin 8 como entrada, recibe la señal del sensor de tierra 
}

void loop() {
  delay(2000);
  //Leer soil moisture sensor
  soilMoistureValue = analogRead(A0);
  soilmoisturepercent = map(soilMoistureValue, AirValue, WaterValue, 0, 100);
  //Leer humedad y temperatura (temperature sensor specific code)
  float h = dht.readHumidity(); //Lee la humedad
  float t = dht.readTemperature(); //Lee la temperatura (C)

  val = digitalRead(8);
  if(val == LOW)
  {
  digitalWrite(13,LOW);
  }
  else
  {
  	if soilMoistureValue < 50;
  	{
  	digitalWrite(13,HIGH);
	}
  	else 
  	{
  	digitalWrite(13,LOW);
  	}
  }
  delay(500);

  if (isnan(t) || isnan(h)) {
    Serial.println("Failed to read from DHT");
  } else { 
    Serial.print(h);     //humidity
    Serial.print(" \t"); //tab
    Serial.print(t);   //temperatura (C)
    Serial.print(" \t"); //tab
    Serial.print(soilMoistureValue); //Moisture
    Serial.print(" \t"); //tab
    Serial.println(soilmoisturepercent);  //Porcentaje Agua
  }

}
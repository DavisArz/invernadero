#!/usr/bin/python
import serial
import MySQLdb
import time

dbConn = MySQLdb.connect("localhost","usuario","password","invernadero") or die ("No se pudo conectar con la BD")
device = '/dev/ttyUSB0'

print "Conectando con...",device
arduino = serial.Serial(device, 9600)

while True:
   arduino.flushInput()
   data = arduino.readline()
   pieces = data.split("\t")
   cursor= dbConn.cursor()
   cursor2= dbConn.cursor()
   cursor.execute("INSERT INTO climaData (humidity,tempC) VALUES (%s,%s)", (pieces[0],pieces[1]))
   dbConn.commit()
   cursor.close()
   cursor2.execute("INSERT INTO tierraData (moistureValue,humedad) VALUES (%s,%s)", (pieces[2],pieces[3]))
   dbConn.commit()
   cursor2.close()
   time.sleep(600)
   continue
   cursor.close()
   cursor2.close()


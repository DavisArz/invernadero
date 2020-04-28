# Invernadero

Pequeña hortaliza creada con arduino + python + MySql en un fin de semana en la cuarentena del 2020
------------------------------------------------------------------------------------------------
Para el DHT11 y demás sensores usar las librerias de arduino 

Adafruit_Neopixel...
Grove_Temperature...

Según los requerimientos de la tierra y la semilla puedes calibrar los parametros condicionales de los sensores de tierra.


Servidor
------------------------------------------------------------------------------------------------
En mi caso usé como servidor un Raspberry PI 2B+ con Raspbian

Requerimientos:

mysql-server
python(MySQLdb y pySerial)

El archivo invernadero.py lee cada 10 minutos los datos del Serial en mi caso /dev/ttyUSB0

Puedes crear un servicio que ejecute el archivo invernadero.py al inicio o bien hacerlo manualmente.

El fin de guardar los datos es para en la siguiente versión usar mineria de datos e inteligencia artificial para regular la luz artificial
el ph de la tierra, el flujo. temperatura y oxigeno en el agua.

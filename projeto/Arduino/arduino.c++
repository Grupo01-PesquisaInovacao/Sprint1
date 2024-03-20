# include "DHT.h"
# define dht_type DHT11

int dht_pin = A0;
DHT dht_1 = DHT(dht_pin, dht_type);

void setup() {
  Serial.begin(9600);
  dht_1.begin();
}

void loop() {
  //Umidade e Temperatura Ambiente
  float umidade = dht_1.readHumidity();
  float temperatura = dht_1.readTemperature() ;

  //Temperatura Vinícola


  if(isnan(temperatura) or isnan(umidade)){
    Serial.println("Erro ao ler");

  } else {
    //Temperatura e Umidade Ideal
    Serial.print(umidade + 24);
    Serial.print(" , ");
    Serial.print(temperatura - 13);
    Serial.print(" , ");
    //Temperaturas Ficticias de uma Vinícola fria
    Serial.print(umidade + 34);
    Serial.print(" , ");
    Serial.print(temperatura - 20);
    Serial.print(" , ");
    //Temperaturas Ficticias de uma Vinícola quente
    Serial.print(umidade - 38);
    Serial.print(" , ");
    Serial.println(temperatura + 12);
  }
  delay(3000);
}
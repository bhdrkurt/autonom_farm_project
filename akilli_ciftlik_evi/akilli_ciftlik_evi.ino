// Bahadır Kurt ESP8266 Firebase Iot Nesne
#include "FirebaseESP8266.h"
#include <ESP8266WiFi.h>
#include "DHT.h"

//1. Firebase veritabanı adresini, Token bilgisini ve ağ adresi bilgilerinizi giriniz.
#define FIREBASE_HOST "finishingproject-5eb4a-default-rtdb.europe-west1.firebasedatabase.app"
#define FIREBASE_AUTH "HTctZPoLaKmhVaIOtS5IJ2EQ4h6r5hD9mwKRunNi"
#define WIFI_SSID "bhdrkurt"
#define WIFI_PASSWORD "bkurt35.,"


//2. veritabanim adında bir firebase veritabanı nesnesi oluşturuyoruz
FirebaseData veritabanim;
int tetik = 4;
int tetik1 = 16;

//3.DHT22 sensörü için tip ve pin tanımlaması
int DHTPIN = 5;
#define dhttype DHT22 //defining DHT Type
DHT dht(DHTPIN, dhttype);

//4.DHT22 sensörü sıcaklık ve nem değişkenleri
 float sicaklik = 0.0;
 float nem = 0.0;

//5.MQ-135 sensörü için tanımlamalar
#define sensor A0
int gas,co2lvl;

  
void setup()
{
  dht.begin();
  Serial.begin(115200);
  pinMode(tetik,OUTPUT);
  pinMode(tetik1,OUTPUT);
  WiFi.begin(WIFI_SSID, WIFI_PASSWORD);
  Serial.print("Ağ Bağlantısı Oluşturuluyor");
  while (WiFi.status() != WL_CONNECTED)
  {
    Serial.print(".");
    delay(300);
  }
  Serial.println();
  Serial.print("IP adresine bağlanıldı: ");
  Serial.println(WiFi.localIP());
  Serial.println();

  //3. Firebase bağlantısı başlatılıyor
  Firebase.begin(FIREBASE_HOST, FIREBASE_AUTH);
  //4. Ağ bağlantısı kesilirse tekrar bağlanmasına izin veriyoruz
  Firebase.reconnectWiFi(true);
}

void loop()
{
  /* hava kalite sensörü için */
   gas=analogRead(sensor);
  co2lvl=gas-55;
  co2lvl=map(co2lvl,0,1024,400,5000);
  Serial.print("Karbondioksit= ");
  Serial.println(co2lvl);

  /* sicaklik nem için*/
  sicaklik = dht.readTemperature();
  nem = dht.readHumidity();
    
  if(Firebase.getBool(veritabanim, "Light/Switch")){
  if(veritabanim.boolData() == true)
  {
    digitalWrite(tetik,LOW);
  }
  else{
    digitalWrite(tetik,HIGH);
  }
}
  else{
    Serial.print("Str verisi çekilemedi, ");
    Serial.println(veritabanim.errorReason());
  }

 if(Firebase.getBool(veritabanim, "Fun/Switch")){
  if(veritabanim.boolData() == true)
  {
    digitalWrite(tetik1,LOW);
  }
  else{
    digitalWrite(tetik1,HIGH);
  }
}
  else{
    Serial.print("Str verisi çekilemedi, ");
    Serial.println(veritabanim.errorReason());
  }

   if(Firebase.getBool(veritabanim, "Heater/Switch")){
  if(veritabanim.boolData() == true)
  {
    digitalWrite(tetik,LOW);
  }
  else{
    digitalWrite(tetik,HIGH);
  }
}
  else{
    Serial.print("Str verisi çekilemedi, ");
    Serial.println(veritabanim.errorReason());
  }

}
  else{
    Serial.print("Str verisi çekilemedi, ");
    Serial.println(veritabanim.errorReason());
  }
  Serial.print("sicaklik : ");
  Serial.println(sicaklik,2);
  Serial.print("nem : ");
  Serial.println(nem,2);
  
if(Firebase.setFloat(veritabanim, "/nem",nem)){
  Serial.println("Float tipinde veri gönderimi başarılı");
}
else{
    Serial.print("Float tipindeki veri gönderilemedi, ");
    Serial.println(veritabanim.errorReason());
  }

  if(Firebase.setFloat(veritabanim, "/sicaklik",sicaklik)){
  Serial.println("Double tipinde veri gönderimi başarılı");
}
else{
    Serial.print("Float tipindeki veri gönderilemedi, ");
    Serial.println(veritabanim.errorReason());
  } 
  if(Firebase.setInt(veritabanim, "/co2",co2lvl)){
  Serial.println("Int tipinde veri gönderimi başarılı");
}
else{
    Serial.print("Int tipindeki veri gönderilemedi, ");
    Serial.println(veritabanim.errorReason());
  }
}

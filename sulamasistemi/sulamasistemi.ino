// Bahadır Kurt ESP8266 Firebase Iot Nesne
#include "FirebaseESP8266.h"
#include <ESP8266WiFi.h>

//1. Firebase veritabanı adresini, Token bilgisini ve ağ adresi bilgilerinizi giriniz.
#define FIREBASE_HOST "finishingproject-5eb4a-default-rtdb.europe-west1.firebasedatabase.app"
#define FIREBASE_AUTH "HTctZPoLaKmhVaIOtS5IJ2EQ4h6r5hD9mwKRunNi"
#define WIFI_SSID "bhdrkurt"
#define WIFI_PASSWORD "bkurt35.,"


//2. veritabanim adında bir firebase veritabanı nesnesi oluşturuyoruz
FirebaseData veritabanim;
int sutetik = 14;
int toprakPIN = 0;
int veri;
  
void setup()
{
  Serial.begin(115200);
  pinMode(sutetik,OUTPUT);
  pinMode(toprakPIN,INPUT);
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
  /* sicaklik nem için*/
  veri = digitalRead(toprakPIN);
    

   if(Firebase.getBool(veritabanim, "Water/Switch")){
  if(veritabanim.boolData() == true)
  {
    digitalWrite(sutetik,LOW);
  }
  else{
    digitalWrite(sutetik,HIGH);
  }
}
  else{
    Serial.print("Str verisi çekilemedi, ");
    Serial.println(veritabanim.errorReason());
  }
    Serial.print("Toprak nem : ");
  Serial.println(veri,2);


  if(Firebase.setInt(veritabanim, "/toprak",veri)){
  Serial.println("Float tipinde veri gönderimi başarılı");
}
else{
    Serial.print("Float tipindeki veri gönderilemedi, ");
    Serial.println(veritabanim.errorReason());
  }
 
}

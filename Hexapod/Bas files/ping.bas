int pinultra = 8;
long tim,cms;
void setup(){
Serial.begin(9600); 
}
void loop(){

  pinMode(pinultra,OUTPUT);
  digitalWrite(pinultra,LOW);
  delay(5);
  digitalWrite(pinultra,HIGH);
  delay(5);
  digitalWrite(pinultra,LOW);
  pinMode(pinultra,INPUT);
  tim = pulseIn(pinultra,HIGH);
  cms = sectocm(tim);
  Serial.print(cms);
  Serial.print("cms,");
  Serial.print(tim);
  Serial.print("tim");
  Serial.println(); 
  delay(1000);
}

long sectocm(long sec){
  return sec/29/2;
}


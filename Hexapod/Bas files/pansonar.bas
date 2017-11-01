#include "SSC32.h"
SSC32 leg;
int channels[] = {0, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 21, 31};
int channel1[] = {2, 16, 20};
int channel2[] = {0, 4, 18};
int channel[] = {0, 2, 4, 16, 18, 20};
int homeFrame[] =  {1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500};
int step1Frame[] = {1500, 1500, 1500, 750, 1500, 1500, 1500, 1750, 1500, 1500, 1500, 1750};
int step2Frame[] = {1500, 1500, 1650, 750, 1500, 1500, 1100, 1750, 1500, 1500, 1100, 1750};
int step3Frame[] = {1500, 1500, 1650, 1500, 1500, 1500, 1100, 1500, 1500, 1500, 1100, 1500};
int step4Frame[] = {1500, 700, 1500, 1500, 1500, 750, 1500, 1500, 1500, 1750, 1500, 1500};
int step5Frame[] = {1550, 700, 1500, 1500, 1750, 750, 1500, 1500, 1100, 1750, 1500, 1500};
int step6Frame[] = {1550, 1500, 1500, 1500, 1750, 1500, 1500, 1500, 1100, 1500, 1500, 1500};
int step7Frame[] = {1500, 750, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1750};
int step8Frame[] = {1800, 750, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1800, 1750};
int step9Frame[] = {1800, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1800, 1500};

int step10Frame[] = {1800, 1500, 1500, 1500, 1500, 750, 1500, 1750, 1500, 1500, 1800, 1500};
int step11Frame[] = {1800, 1500, 1500, 1500, 1800, 750, 1800, 1750, 1500, 1500, 1800, 1500};
int step12Frame[] = {1800, 1500, 1500, 1500, 1800, 1500, 1800, 1500, 1500, 1500, 1800, 1500};

int step13Frame[] = {1800, 1500, 1500, 750, 1800, 1500, 1800, 1500, 1500, 1800, 1800, 1500};


int step14Frame[] = {1200, 1500, 1500, 750, 1200, 1500, 1200, 1500, 1500, 1800, 1200, 1500};

int step15Frame[] = {1200, 1500, 1500, 1500, 1200, 1500, 1200, 1500, 1500, 1500, 1200, 1500};
int stepFrame[] =  {1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1900};
int steFrame[] =  {1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1100};
int pinultra = 8;
long tim, cms;
void jump();
void forward();
long sectocm(long);
void setup() {

  leg.begin(9600);
  leg.enableServos(channels);
  //leg.enableServos(channel1);
  //leg.enableServos(channel2);
  leg.setFrame(homeFrame);
  //leg.setFrame(step2Frame);

}
void loop() {

  pinMode(pinultra, OUTPUT);
  digitalWrite(pinultra, LOW);
  delay(5);
  digitalWrite(pinultra, HIGH);
  delay(5);
  digitalWrite(pinultra, LOW);
  pinMode(pinultra, INPUT);
  tim = pulseIn(pinultra, HIGH);
  cms = sectocm(tim);
  leg.setFrame(homeFrame, 200);
  delay(1000);

  if (cms > 100)
  {

    forward();


  }
  else
  {

    leg.setFrame(steFrame, 100);
    delay(1000);
    if (cms <= 100)
      jump();
    else
      forward();

  }

}

long sectocm(long sec) {
  return sec / 29 / 2;
}
void jump() {


  leg.setFrame(step7Frame, 100);

  delay(1000);
  leg.setFrame(step8Frame, 100);

  delay(1000);
  leg.setFrame(step9Frame, 100);

  delay(1000);

  leg.setFrame(step10Frame, 100);

  delay(1000);
  leg.setFrame(step11Frame, 100);
  delay(1000);

  leg.setFrame(step12Frame, 100);

  delay(1000);

  leg.setFrame(step13Frame, 100);

  delay(1000);
  leg.setFrame(step14Frame, 100);

  delay(1000);
  leg.setFrame(step15Frame, 100);

  delay(1000);

}
void forward() {



  leg.setFrame(step1Frame, 100);

  delay(1000);
  leg.setFrame(step2Frame, 100);

  delay(1000);
  leg.setFrame(step3Frame, 100);

  delay(1000);
  leg.setFrame(step4Frame, 100);

  delay(1000);
  leg.setFrame(step5Frame, 100);
  delay(1000);

  leg.setFrame(step6Frame, 100);

  delay(1000);
}




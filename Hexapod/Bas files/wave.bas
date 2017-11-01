#include "SSC32.h"
SSC32 leg;
int channels[] = {0, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 21};
int channel1[]={2,16,20};
int channel2[]={0,4,18};
int channel[]={0,2,4,16,18,20};
int homeFrame[] =  {1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500};
int step1Frame[] = {1500, 1500, 1500, 1500, 1500, 1500, 1500, 1750, 1500, 1500, 1500, 1500};
int step2Frame[] = {1500, 1500, 1500, 1500, 1500, 1500, 1300, 1750, 1500, 1500, 1500, 1500};
int step3Frame[] = {1500, 1500, 1500, 1500, 1500, 1500, 1300, 1500, 1500, 1500, 1500, 1500};

int step4Frame[] = {1500, 1500, 1500, 1500, 1500, 1500, 1300, 1500, 1500, 1750, 1500, 1500};
int step5Frame[] = {1500, 1500, 1500, 1500, 1500, 1500, 1300, 1500, 1300, 1750, 1500, 1500};
int step6Frame[] = {1500, 1500, 1500, 1500, 1500, 1500, 1300, 1500, 1300, 1500, 1500, 1500};

int step7Frame[] = {1500, 1500, 1500, 1500, 1500, 1500, 1300, 1500, 1300, 1500, 1500, 1750};
int step8Frame[] = {1500, 1500, 1500, 1500, 1500, 1500, 1300, 1500, 1300, 1500, 1300, 1750};
int step9Frame[] = {1500, 1500, 1500, 1500, 1500, 1500, 1300, 1500, 1300, 1500, 1300, 1500};

int step10Frame[] = {1500, 750, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500};
int step11Frame[] = {1900, 750, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500};
int step12Frame[] = {1900, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500};

int step13Frame[] = {1900, 1500, 1500, 750, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500};
int step14Frame[] = {1900, 1500, 1900, 750, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500};
int step15Frame[] = {1900, 1500, 1900, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500};

int step16Frame[] = {1900, 1500, 1900, 1500, 1500, 750, 1500, 1500, 1500, 1500, 1500, 1500};
int step17Frame[] = {1900, 1500, 1900, 1500, 1900, 750, 1500, 1500, 1500, 1500, 1500, 1500};
int step18Frame[] = {1900, 1500, 1900, 1500, 1900, 1500, 1500, 1500, 1500, 1500, 1500, 1500};
void setup() {

  leg.begin(9600);
  leg.enableServos(channels);
  //leg.enableServos(channel1);
  //leg.enableServos(channel2);
  leg.setFrame(homeFrame);
  //leg.setFrame(step2Frame);
  
}
void loop() {
 //leg.setFrame(channels,homeFrame);
  leg.setFrame(homeFrame,200);
  delay(1000);
 /* leg.enableServos(2);
  leg.enableServos(16);
  leg.enableServos(20); */ 
  //leg.enableServos(channel1);
  //leg.disableServos(channel2);
 for(int i=0;i<5;i++)
 { 
  
  //leg.setFrame(channel,step2Frame);
  leg.setFrame(step1Frame,100);
 
  delay(1000);
  leg.setFrame(step2Frame,100);
 
  delay(1000);
  leg.setFrame(step3Frame,100);
 
  delay(1000);
 // leg.setFrame(homeFrame,100);
 
  //delay(1000);
  leg.setFrame(step4Frame,100);
 
  delay(1000);
   leg.setFrame(step5Frame,100);
  delay(1000);
  /*leg.enableServos(0);
  leg.enableServos(4);
  leg.enableServos(18);*/
  /*leg.enableServos(channel2);
  leg.disableServos(channel1);*/
  //leg.setFrame(channel,step1Frame);
  leg.setFrame(step6Frame,100);

 delay(1000);
 //leg.setFrame(homeFrame,100);
 
  //delay(1000);
 leg.setFrame(step7Frame,100);

 delay(1000);
 leg.setFrame(step8Frame,100);

 delay(1000);
 leg.setFrame(step9Frame,100);

 delay(1000);
 leg.setFrame(step10Frame,100);

 delay(1000);
 leg.setFrame(step11Frame,100);

 delay(1000);
 leg.setFrame(step12Frame,100);

 delay(1000);
  leg.setFrame(step13Frame,100);

 delay(1000);
  leg.setFrame(step14Frame,100);

 delay(1000);
  leg.setFrame(step15Frame,100);

 delay(1000);
  leg.setFrame(step16Frame,100);

 delay(1000);
  leg.setFrame(step17Frame,100);

 delay(1000);
  leg.setFrame(step18Frame,100);

 delay(1000);
 
 //leg.setFrame(homeFrame,100);
 
  //delay(1000);
//leg.setFrame(channels,homeFrame);
//delay(1000);
 }
  //delay(1000);

}

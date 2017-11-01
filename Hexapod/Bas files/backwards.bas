#include "SSC32.h"
SSC32 leg;
int channels[] = {0, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 21};
int channel1[]={2,16,20};
int channel2[]={0,4,18};
int channel[]={0,2,4,16,18,20};
int homeFrame[] =  {1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500};
int step1Frame[] = {1500, 1500, 1500, 750, 1500, 1500, 1500, 1750, 1500, 1500, 1500, 1750};
int step2Frame[] = {1500, 1500, 1350, 750, 1500, 1500, 1800, 1750, 1500, 1500, 1800, 1750};
int step3Frame[] = {1500, 1500, 1350, 1500, 1500, 1500, 1800, 1500, 1500, 1500, 1800, 1500};
int step4Frame[] = {1500, 700, 1350, 1500, 1500, 750, 1800, 1500, 1500, 1750, 1800, 1500};
int step5Frame[] = {1450, 700, 1350, 1500, 1250, 750, 1800, 1500, 1800, 1750, 1800, 1500};
int step6Frame[] = {1450, 1500, 1350, 1500, 1250, 1500, 1800, 1500, 1800, 1500, 1800, 1500};
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
//leg.setFrame(channels,homeFrame);
//delay(1000);
 }
  //delay(1000);

}

#include "SSC32.h"
SSC32 leg;
int channels[] = {0, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 21};
int homeFrame[] = {1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500};
void setup() {

  leg.begin(9600);
  leg.enableServos(channels);
  leg.setFrame(homeFrame);
}

void loop() {
  leg.setFrame(channels, homeFrame);
  //Serial.println(micros());
  delay(1000);

}

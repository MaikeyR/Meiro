float screenShakeX = 10;
float screenShakeY = 10;

class ScreenShake {

  float screenShakeXOffset;
  float screenShakeYOffset;
  boolean screenShakeKlein;
  boolean screenShakeGroot;
  int grootKlein;
  float shakeAmountKlein;
  float shakeAmountGroot;
  int shakeDt;
  int lastShakeUpdateTime;
  int currentShakeTime;
  boolean wallMovedscreenShake;
  Timer screenShakeTimer;

  ScreenShake() {

    screenShakeXOffset = 0;
    screenShakeYOffset = 0;
    screenShakeKlein = false;
    screenShakeGroot = false;
    grootKlein = 0;
    shakeAmountKlein = 1;
    shakeAmountGroot = 2;
    shakeDt = 0;
    lastShakeUpdateTime = 0;
    currentShakeTime = 0;
    wallMovedscreenShake = false;
    screenShakeTimer = new Timer();
  }


  void screenShakeGroot(boolean wallMoved) {

    if (wallMoved) {

      if (wallMovedscreenShake && screenShakeKlein == false && screenShakeGroot == false) {

        screenShakeGroot = true;
        wallMovedscreenShake = false;
      }
    } else if (!wallMoved) {

      if (!screenShakeKlein && !screenShakeGroot) {

        screenShakeGroot = true;
      }
    }
  }

  void screenShakeKlein() {

    if (screenShakeKlein == false && screenShakeGroot == false) {

      screenShakeKlein = true;
    }
  }

  void screenShakeCheck() {
    if (screenShakeKlein == true || screenShakeGroot == true) {

      if (screenShakeGroot == true && grootKlein == 0) {

        grootKlein = 2;
        lastShakeUpdateTime = 0;
      } else if (screenShakeKlein == true && grootKlein == 0) {

        grootKlein = 1;
        lastShakeUpdateTime = 0;
      }

      if (screenShakeTimer.running == false) {
        screenShakeTimer.start();
      }

      currentShakeTime = screenShakeTimer.getElapsedTime();
      shakeDt = currentShakeTime - lastShakeUpdateTime;

      //Berekent de positie van het doolhof op de tijd van de screenshake
      if (screenShakeTimer.getElapsedTime() < 60) {

        if (grootKlein == 1) {

          screenShakeX += shakeAmountKlein * (shakeDt / float(1000)) * 150;
          screenShakeY += shakeAmountKlein * (shakeDt / float(1000)) * 150;
        } else if (grootKlein == 2) {

          screenShakeX += shakeAmountGroot * (shakeDt / float(1000)) * 150;
          screenShakeY += shakeAmountGroot * (shakeDt / float(1000)) * 150;
        }
      } else if (screenShakeTimer.getElapsedTime() < 150) {

        if (grootKlein == 1) {

          screenShakeX += shakeAmountKlein * (shakeDt / float(1000)) * -175;
          screenShakeY += shakeAmountKlein * (shakeDt / float(1000)) * -150;
        } else if (grootKlein == 2) {

          screenShakeX += shakeAmountGroot * (shakeDt / float(1000)) * -175;
          screenShakeY += shakeAmountGroot * (shakeDt / float(1000)) * -150;
        }
      } else if (screenShakeTimer.getElapsedTime() < 240) {

        if (grootKlein == 1) {

          screenShakeX += shakeAmountKlein * (shakeDt / float(1000)) * 95;
          screenShakeY += shakeAmountKlein * (shakeDt / float(1000)) * 75;
        } else if (grootKlein == 2) {

          screenShakeX += shakeAmountGroot * (shakeDt / float(1000)) * 95;
          screenShakeY += shakeAmountGroot * (shakeDt / float(1000)) * 75;
        }
      } else if (screenShakeTimer.getElapsedTime() < 330) {

        if (lastShakeUpdateTime < 330) {

          screenShakeXOffset = screenShakeX - 10;
          screenShakeYOffset = screenShakeY - 10;
        }

        if (grootKlein == 1) {

          screenShakeX += shakeAmountKlein * (shakeDt / float(1000)) * -screenShakeXOffset *50;
          screenShakeY += shakeAmountKlein * (shakeDt / float(1000)) * -screenShakeYOffset *50;
        } else if (grootKlein == 2) {

          screenShakeX += shakeAmountGroot * (shakeDt / float(1000)) * -screenShakeXOffset *50;
          screenShakeY += shakeAmountGroot * (shakeDt / float(1000)) * -screenShakeYOffset *50;
        }
      }

      if (screenShakeTimer.getElapsedTime() > 330) {

        screenShakeX = 10;
        screenShakeY = 10;
        grootKlein = 0;
        screenShakeKlein = false;
        screenShakeGroot = false;
        screenShakeTimer.stop();
      }

      lastShakeUpdateTime = currentShakeTime;
    }
  }
}

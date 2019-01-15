float screenShakeX = 10;
float screenShakeY = 10;

class ScreenShake {

  float shakeAmountKlein, shakeAmountGroot, shakeSpeed;
  float screenShakeXOffset, screenShakeYOffset;
  int shakeDt, lastShakeUpdateTime, currentShakeTime;
  boolean screenShakeKlein, screenShakeGroot, grootKlein;
  boolean wallMovedscreenShake;
  Timer screenShakeTimer;

  ScreenShake() {

    screenShakeXOffset = 0;
    screenShakeYOffset = 0;
    screenShakeKlein = false;
    screenShakeGroot = false;
    shakeSpeed = 0;
    grootKlein = false;
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

      if (screenShakeGroot == true && grootKlein == false) {

        grootKlein = true;
        lastShakeUpdateTime = 0;
        shakeSpeed = shakeAmountGroot;
      } else if (screenShakeKlein == true && grootKlein == false) {

        grootKlein = true;
        lastShakeUpdateTime = 0;
        shakeSpeed = shakeAmountKlein;
      }

      if (screenShakeTimer.running == false) {
        screenShakeTimer.start();
      }

      currentShakeTime = screenShakeTimer.getElapsedTime();
      shakeDt = currentShakeTime - lastShakeUpdateTime;

      //Berekent de positie van het doolhof op de tijd van de screenshake
      if (screenShakeTimer.getElapsedTime() < 60) {

        screenShakeX += shakeSpeed * (shakeDt / float(1000)) * 150;
        screenShakeY += shakeSpeed * (shakeDt / float(1000)) * 150;
      } else if (screenShakeTimer.getElapsedTime() < 150) {

        screenShakeX += shakeSpeed * (shakeDt / float(1000)) * -175;
        screenShakeY += shakeSpeed * (shakeDt / float(1000)) * -150;
      } else if (screenShakeTimer.getElapsedTime() < 240) {

        screenShakeX += shakeSpeed * (shakeDt / float(1000)) * 95;
        screenShakeY += shakeSpeed * (shakeDt / float(1000)) * 75;
      } else if (screenShakeTimer.getElapsedTime() < 330) {

        if (lastShakeUpdateTime < 330) {

          screenShakeXOffset = screenShakeX - 10;
          screenShakeYOffset = screenShakeY - 10;
        }

        screenShakeX += shakeSpeed * (shakeDt / float(1000)) * -screenShakeXOffset *50;
        screenShakeY += shakeSpeed * (shakeDt / float(1000)) * -screenShakeYOffset *50;
      }

      if (screenShakeTimer.getElapsedTime() > 330) {

        screenShakeX = 10;
        screenShakeY = 10;
        grootKlein = false;
        screenShakeKlein = false;
        screenShakeGroot = false;
        screenShakeTimer.stop();
      }

      lastShakeUpdateTime = currentShakeTime;
    }
  }
}

class Timer {
  int startTime = 0, stopTime = 0;
  boolean running = false;
  String htime, mtime, stime, time;
  
    //neemt de tijd op om de hihgscore te bepalen
    void start() {
        startTime = millis();
        running = true;
    }
    
    void stop() {
        stopTime = millis();
        running = false;
    }
    
    public int getElapsedTime() {
        int elapsed;
        if (running) {
             elapsed = (millis() - startTime);
        }
        else {
            elapsed = (stopTime - startTime);
        }
        return elapsed;
    }
    
    int second() {
      return ((getElapsedTime() + penaltyMiliSeconds) / 1000) % 60;
    }
    
    int minute() {
      return (getElapsedTime() + penaltyMiliSeconds) / (1000*60) % 60;
    }
    
    int hour() {
      return (getElapsedTime() + penaltyMiliSeconds) / (1000*60*60) % 24;
    }
    
    void draw() {
      textSize(25);
      time = hour() +" : "+ minute() +" : "+ second();
      text(time, 1150, 25);
    }
}

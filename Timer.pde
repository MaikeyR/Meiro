class Timer {
  //timer variabelen
  int startTime = 0, stopTime = 0;
  boolean running = false;
  String htime, mtime, stime, time;

  void start() {
    //starten van de  timer
    startTime = millis();
    running = true;
  }

  void stop() {
    //stoppen van de timer
    stopTime = millis();
    running = false;
  }

  public int getElapsedTime() {
    //het berekenen van de timer
    int elapsed;
    if (running) {
      elapsed = (millis() - startTime);
    } else {
      elapsed = (stopTime - startTime);
    }
    return elapsed;
  }

  int second() {
    //berekent de tijd per seconde
    return ((getElapsedTime() + penaltyMiliSeconds) / 1000) % 60;
  }

  int minute() {
    //berekent de tijd per minuut
    return (getElapsedTime() + penaltyMiliSeconds) / (1000*60) % 60;
  }

  int hour() {
    //berekent de tijd per uur
    return (getElapsedTime() + penaltyMiliSeconds) / (1000*60*60) % 24;
  }

  void draw() {
    //drawen van de timer in de sidebar
    textSize(25);
    time = hour() +" : "+ minute() +" : "+ second();
    fill(textColour);
    text(time, 1150, 25);
  }
}

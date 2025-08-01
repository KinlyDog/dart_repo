class Time {
  int hours;
  int minutes;
  int seconds;

  Time(this.hours, this.minutes, this.seconds);

  Time operator +(Time other) {
    var t = 60;
    var seconds_ = seconds + other.seconds;
    var minutes_ = minutes + other.minutes;
    var hours_ = hours + other.hours;

    if (seconds_ >= t) {
      minutes_++;
      seconds_ %= t;
    }

    if (minutes_ >= t) {
      hours_++;
      minutes_ %= t;
    }

    return Time(hours_, minutes_, seconds_);
  }

  Time operator -(Time other) {
    var seconds_ = seconds - other.seconds;
    var minutes_ = minutes - other.minutes;
    var hours_ = hours - other.hours;

    if (seconds_ < 0) {
      minutes_--;
      seconds_ += 60;
    }

    if (minutes_ < 0) {
      hours_--;
      minutes_ += 60;
    }

    return Time(hours_, minutes_, seconds_);
  }
}

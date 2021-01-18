class CounterRepository {

  static CounterRepository _instance = CounterRepository._internal();

  CounterRepository._internal();

  factory CounterRepository() {
    return _instance;
  }

  int _count = 0;

  int get() => _count;

  void increment() {
    _count++;
  }

  void clear() {
    _count = 0;
  }

  void double() {
    _count *= 2;
  }
}
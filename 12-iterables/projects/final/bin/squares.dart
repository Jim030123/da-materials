class HundredSquares extends Iterable {
  @override
  Iterator get iterator => SquaredIterator();
}

class SquaredIterator implements Iterator<int> {
  @override
  get current => _index * _index;

  int _index = 0;

  @override
  bool moveNext() {
    _index++;
    return _index <= 100;
  }
}

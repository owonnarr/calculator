class CalculationHandler {
  String _displayText = '0';
  String _operation = '';
  double _firstOperand = 0;
  double _secondOperand = 0;
  bool _isNewEntry = true;

  String get displayText => _displayText;

  void makeCalculation(String value) {
    var operations = ['+', '-', '*', '/'];

    if (value == 'C') {
      _flushProperties();
    } else if (value == '=') {
      _calculate();
    } else if (operations.contains(value)) {
      _setOperation(value);
    } else {
      _addDigit(value);
    }
  }

  void _flushProperties() {
    _displayText = '0';
    _firstOperand = 0;
    _secondOperand = 0;
    _operation = '';
    _isNewEntry = true;
  }

  void _setOperation(String operation) {
    _firstOperand = double.tryParse(_displayText) ?? 0;
    _operation = operation;
    _isNewEntry = true;
  }

  void _calculate() {
    _secondOperand = double.tryParse(_displayText) ?? 0;
    double result = 0;

    if (0 == _secondOperand) {
      int result = 0;
      _displayText = result.toString();
    }

    switch (_operation) {
      case '+':
        result = _firstOperand + _secondOperand;
        break;
      case '-':
        result = _firstOperand - _secondOperand;
        break;
      case '*':
        result = _firstOperand * _secondOperand;
        break;
      case '/':
        result = _secondOperand != 0 ? _firstOperand / _secondOperand : 0;
        break;
    }

    _displayText = result.toString();
    _isNewEntry = true;
    _operation = '';
  }

  void _addDigit(String digit) {
    if (_isNewEntry) {
      _displayText = digit;
      _isNewEntry = false;
    } else {
      _displayText += digit;
    }
  }

  String getOutputValue() {
    return _displayText;
  }
}
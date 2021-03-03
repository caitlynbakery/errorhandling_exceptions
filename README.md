# Error Handling and Exceptions

## Assertions

Assertions are used to check that our code is
working as expected. For example, if we
have a method that should only except postive integers and
we pass in a negative integer, then the code should output
an exception.

```dart
class PositiveInt {
  const PositiveInt(this.value) : assert(value >= 0, 'Value cannot be negative');
  final int value;
}

void main(){
    PositiveInt(-1);

    //ouput: Unhandled exception:
}
```

For Flutter apps, assertions are enabled in Debug mode but disabled in
Release mode. Assertions are only
a safety net to catch runtime errors early. 
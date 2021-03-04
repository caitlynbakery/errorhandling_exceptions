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

## Exceptions

* throw - used to send an exception which is like an error.

* try/catch - the try/catch blocks are used to test if certain conditions are true. It
throws an error in the catch block and is used for error handling.

* on clause - on clause can be used to specify the type of exception you want and 
throw a specific exception

* finally - this method runs after the try/catch checks and is the 'final' thing
inside of the try/catch

* rethrow- rethrow reruns the exception and outputs it again

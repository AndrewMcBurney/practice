# Scala Notes

## General
- In scala, you only have double quote strings. Single quotes are reserved for characters, and will cause an error if you try to use them for more than one character.

## Strings
### Methods
```
// Java string methods
"hello world".length
=> Int = 11 
"hello world".substring(2, 6)
=> String = "llo "
"hello world".replace("C", "3")
=> String = hello world

// Scala string methods
"hello world".take(5) // returns the first 5 characters of the string
=> String = hello
"hello world".drop(5) // returns the string minus the first 5 characters
=> String = " world"
```

### Interpolation
```
// String interpolation: notice the prefix "s"
val n = 45
s"We have $n apples" // => "We have 45 apples"

// Expressions inside interpolated strings are also possible
val a = Array(11, 9, 6)
s"My second daughter is ${a(0) - a(2)} years old."    // => "My second daughter is 5 years old."
s"We have double the amount of ${n / 2.0} in apples." // => "We have double the amount of 22.5 in apples."
s"Power of 2: ${math.pow(2, 2)}"                      // => "Power of 2: 4"
```

## Type inference
In scala, you do not always need to specify a type due to type inference which can often infer the type of the variable.

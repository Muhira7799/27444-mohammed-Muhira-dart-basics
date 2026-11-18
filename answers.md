
# Dart Basics Assignment
## Part A — A1

### 1. Predicted Output

Before I running the code my expectations output are:

3.4
3
2
3
-3
17
false
false

## Actual Output are:

3.4
3
2
3
-3
-17
false
true

## Explanation of Each Line

**1. `print(a / b);`**

- Predicted Output: `3.4`
- Actual Output: `3.4`
- Explanation: The `/` operator performs normal division. 17 divided by 5 equals 3.4.

**2. `print(a ~/ b);`**

- Predicted Output: `3`
- Actual Output: `3`
- Explanation: The `~/` operator performs integer division. It removes the decimal part and truncates toward zero.

**3. `print(a % b);`**

- Predicted Output: `2`
- Actual Output: `2`
- Explanation: The `%` operator returns the remainder. When 17 is divided by 5, the remainder is 2.

**4. `print(-a % b);`**

- Predicted Output: `3`
- Actual Output: `3`
- Explanation: In Dart, -17 % 5 returns 3 because the remainder has the same sign as the positive divisor.

**5. `print(-a ~/ b);`**

- Predicted Output: `-3`
- Actual Output: `-3`
- Explanation: -17 divided by 5 equals -3.4. The `~/` operator truncates toward zero, giving -3.

**6. `print(-17.abs());`**

- Predicted Output: `17`
- Actual Output: `-17`
- Explanation: The `abs()` method is applied to 17 first, giving 17. Then the negative sign makes the result -17.

**7. `print(0.1 + 0.2 == 0.3);`**

- Predicted Output: `false`
- Actual Output: `false`
- Explanation: Floating-point numbers may not be represented exactly in binary, so the sum may not equal 0.3 exactly.

**8. `print(10 == 10.0);`**

- Predicted Output: `false`
- Actual Output: `true`
- Explanation: In Dart, an integer and a double can compare equal when they have the same numeric value. Both 10 and 10.0 have the same value.



## Part A _ A2
## predicted Output

23
false
234

## Actual Output

23
false
234

##Explanation

1. the output is 23 because `z` is calculated as 4*2 + 44 ~/4 = 19, then 4 is added using `z+=x`.
2. the output is false because 23 is an odd number, `z.isEven` returns false.
3. the output is 234 because `'$z'` and `'$x'` are strings that are concatenated together.

## Type  of z
the type of `z` ia `int` . dart infers they type from the initial expression assigned to `var z` . the expression uses integer arithmetic and produces an integer value.
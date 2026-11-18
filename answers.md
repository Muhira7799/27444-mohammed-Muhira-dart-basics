
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

## Part B _ B1: String Operations
## predicted Output
6
i
ga
false
kigali.length
6
KigaliKigali
Kigali
K!gali
55
10

## Actual Output

6
i
ga
3
false
Kigali.length
6
KigaliKigali
Kigali
K!gal!
55
10

### Explanation

1. The result is `6` because the word `Kigali` consists of 6 letters.

2. The result is `i` because we used `city.length - 1` to get the last letter in the word.

3. The output is `ga` because `substring(2, 4)` starts from the index 2 and stops before the index 4.

4. The output is `3` because the letter `A` in the word `KIGALI` is index 3, and the index starts from zero.

5. The result is `false` because the word `K` is big, but we're looking for a small `k`, and Dart differentiates between uppercase and lowercase letters.

6. Output `Kigali.length` because Dart replaces `$city` with the value of the variable, but `.length` here appears as plain text.

7. The output is `6` because `${city.length}` by leaving Dart calculate the length of the word and print the result.

8. The output `KigaliKigali` because `city * 2` repeats the text in the `city` variable twice.

9. Call `city.toUpperCase()` without the original variable; because the texts in Dart are not subject to change, and the new result is not stored in a variable.

10. Output `K! Gal! `because `replaceAll('i', '!') `You replace every letter `i` with a sign of `! `.

11. The output is `55` because `5.toString()` turns the number 5 into text, and then the two texts are collected.

12. The result is `10` because `int.parse('5')` by converting the text `''5`` to an integer, and then we add it to 5.

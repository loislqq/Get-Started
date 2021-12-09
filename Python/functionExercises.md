# Functions Practice Exercises

## WARMUP SECTION:

#### LESSER OF TWO EVENS: Write a function that returns the lesser of two given numbers if both numbers are even, but returns the greater if one or both numbers are odd

```
def lesser_of_two_evens(a,b):
    if a%2 == 0 and b%2==0:
        # BOTH NUMBERS ARE EVEN
        return min(a,b)
    else:
        # ONE OR BOTH NUMBERS ARE ODD
        return max(a,b)
```

#### ANIMAL CRACKERS: Write a function takes a two-word string and returns True if both words begin with same letter

```
def animal_crackers(text):
    wordlist = text.lower().split()
    return wordlist[0][0] == wordlist[1][0]
```

#### MAKES TWENTY: Given two integers, return True if the sum of the integers is 20 or if one of the integers is 20. If not, return False

```
def makes_twenty(n1,n2):
    return n1 + n2 == 20 or n1 == 20 or n2 == 20
```

## LEVEL 1 PROBLEMS

#### OLD MACDONALD: Write a function that capitalizes the first and fourth letters of a name

```
def old_macdonald(name):
    first_half = name[:3]
    second_half = name[3:]
    return first_half.capitalize() + second_half.capitalize()
```
#### MASTER YODA: Given a sentence, return a sentence with the words reversed

```
def master_yoda(text):
    wordlist = text.split()
    reverse_word_list = wordlist[::-1]
    return ' '.join(reverse_word_list)
```

#### ALMOST THERE: Given an integer n, return True if n is within 10 of either 100 or 200

```
def almost_there(n):
    return abs(n-100) <= 10 or abs(n-200) <= 10
```

## LEVEL 2 PROBLEMS

#### FIND 33: Given a list of ints, return True if the array contains a 3 next to a 3 somewhere.
```
def has_33(nums):
    for i in range(0,len(nums)-1):
        if nums[i] == 3 and nums[i+1] == 3:
            return True
    return False
```
#### PAPER DOLL: Given a string, return a string where for every character in the original there are three characters
```
def paper_doll(text):
    result = ''
    for letter in text:
        result += letter*3
    return result
```

#### BLACKJACK: Given three integers between 1 and 11, if their sum is less than or equal to 21, return their sum. If their sum exceeds 21 and there's an eleven, reduce the total sum by 10. Finally, if the sum (even after adjustment) exceeds 21, return 'BUST'

```
def blackjack(a,b,c):
    if sum([a,b,c]) <= 21:
        return sum([a,b,c])
    elif 11 in [a,b,c] and sum([a,b,c]) <= 31:
        return sum([a,b,c]) - 10
    else:
        return 'BUST'
```

#### SUMMER OF '69: Return the sum of the numbers in the array, except ignore sections of numbers starting with a 6 and extending to the next 9 (every 6 will be followed by at least one 9). Return 0 for no numbers.

```
def summer_69(arr):
    result = 0
    mark = False
    for num in arr:
        if num == 6:
            mark = True
        elif num == 9:
            mark = False
        elif mark == False:
            result += num
    return result
```

## CHALLENGING PROBLEMS

#### SPY GAME: Write a function that takes in a list of integers and returns True if it contains 007 in order

```
def spy_game(nums):
    code = [0,0,7,'x']
    for num in nums:
        if num == code[0]:
            code.pop(0)
    return len(code) == 1
```

#### COUNT PRIMES: Write a function that returns the number of prime numbers that exist up to and including a given number

```
def count_primes(num):
    if num < 2:
        return 0
    
    # Store our prime numbers
    primes = [2]
    # x is going through every number up to input number
    x = 3
    
    while x <= num:
        for y in range(3,x,2):
            if x%y == 0:
                x += 2
                break
        else:
            primes.append(x)
            x += 2
    return len(primes)
```

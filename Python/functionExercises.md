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

####

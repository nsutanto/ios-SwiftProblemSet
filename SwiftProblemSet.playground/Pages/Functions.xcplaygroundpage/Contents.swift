/*:
 [Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
 ****
 */
//: ## Functions 
//: ### Exercise 14
//: The function `emojiLove` should take two `String` parameters and use them to print a `String` with  the format "stringParameterOne ❤️ stringParameterTwo".
func emojiLove(s1: String, s2: String) {
    print(s1 + " \u{1F496} " + s2)
}


 emojiLove(s1: "cats", s2: "dogs") // prints "cats ❤️ dogs"
 emojiLove(s1: "udacity", s2: "students") // prints "udacity ❤️ students"
 emojiLove(s1: "peanut butter", s2: "jelly") // prints "peanut butter ❤️ jelly"
 emojiLove(s1: "ying", s2: "yang") // prints "ying ❤️ yang"
 

//: ### Exercise 15
//: The function `median` should take three `Int` parameters and return the `Int` value in the middle.
func median(num1: Int, num2: Int, num3: Int) -> Int{
    var array = [num1, num2, num3]
    array.sort(by: <)
    print(array[1])
    return array[1]
}


 median(num1: 1, num2: 5, num3: 6) // 5
 median(num1: 2, num2: 1, num3: 4) // 2
 median(num1: 3, num2: 6, num3: 6) // 6
 median(num1: -10, num2: 10, num3: 0) // 0
 median(num1: 0, num2: 0, num3: 0) // 0
 median(num1: 2, num2: 3, num3: 1) // 2
 median(num1: 2, num2: 2, num3: 1) // 2
 

/*:
 ### Exercise 16
 
 The function `beginsWithVowel` should take a single `String` parameter and return a `Bool` indicating whether the input string begins with a vowel. If the input string begins with a vowel return true, otherwise return false.
 
 First, you will want to test if the input string is "". If the input string is "", then return false. Otherwise, you can access the first character of a `String` by using `nameOfString.characters[nameOfString.startIndex]`.
 
 
 **Note**: It is assumed that the input string is given in English.
 */
func beginsWithVowel(inputString: String) -> Bool {
    /* add function implementation here */
    var retVal: Bool = false
    if (inputString == "") {
        retVal = false
    }
    else {
        if (inputString.characters[inputString.startIndex] == "A" ||
            inputString.characters[inputString.startIndex] == "a" ||
            inputString.characters[inputString.startIndex] == "E" ||
            inputString.characters[inputString.startIndex] == "e" ||
            inputString.characters[inputString.startIndex] == "I" ||
            inputString.characters[inputString.startIndex] == "i" ||
            inputString.characters[inputString.startIndex] == "O" ||
            inputString.characters[inputString.startIndex] == "o" ||
            inputString.characters[inputString.startIndex] == "U" ||
            inputString.characters[inputString.startIndex] == "u" ) {
            retVal = true;
        }
    }
    
    return retVal
}


beginsWithVowel(inputString: "Apples") // true
beginsWithVowel(inputString: "pIG") // false
beginsWithVowel(inputString: "oink") // true
beginsWithVowel(inputString: "udacity") // true
beginsWithVowel(inputString: "") // false

/*:
 ### Exercise 17
 
 The function `funWithWords` should take a single `String` parameter and return a new `String` that is uppercased if it begins with a vowel or is lowercased if it begins with a consonant.
 
 - To uppercase a `String`, use `nameOfString.uppercased()`.
 - To lowercase a `String`, use `nameOfString.lowercased()`.
 - It is assumed that the input string is given in English.
 
 **Hint**: Re-use the `beginsWithVowel` function.
 */
func funWithWords(str: String) -> String {
    var retValue: String = ""
    if (beginsWithVowel(inputString: str)) {
        retValue = str.uppercased()
    }
    else {
        retValue = str.lowercased()
    }
    
    return retValue
}


funWithWords(str: "Apples") // "APPLES"
funWithWords(str: "pIG") // "pig"
funWithWords(str: "oink") // "OINK"
funWithWords(str: "udacity") // "UDACITY"
funWithWords(str: "") // ""
 

/*:
 ****
 [Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
 */

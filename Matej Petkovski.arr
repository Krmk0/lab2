import file("lab2-support.arr") as support

support.encryptor1("hellox")
support.encryptor2("helloxx")
support.encryptor3("hello.")
support.encryptor4("helloxx")
support.encryptor5("helloai")
support.encryptor6("Robert")
support.encryptor7("hellox")
support.encryptor8("hellox")
support.encryptor9("h")
support.encryptor10("hello")

# Testing

support.encryptor6("r")
support.encryptor6("R")
support.encryptor6("rrrr")
support.encryptor6("RRRR")
support.encryptor6("rabbit")
support.encryptor6("Rabbit")
support.encryptor6("carrot")
support.encryptor6("RARARA")
support.encryptor6("hello")

support.encryptor10("abcdefgh")
support.encryptor10("AEIOUxyz")
support.encryptor10("hello")
support.encryptor10("bcdfgh")
support.encryptor10("computer")

g = "-------------------------" # so i can see where my functions begin
g


# First one

fun my_encryptor1(s :: String) -> String:
  doc: "Recreating encryptor 1, it repeats the input string 5 times"
  
  string-repeat(s, 5)
  
where:
  my_encryptor1("a") 
    is "aaaaa"
end

my_encryptor1("hello")


# Second one

fun my_encryptor2(s :: String) -> String:
  doc: "Recreating encryptor 2, it only prints the first 4 characters"
  
  string-substring(s, 0, 4)
  
where:
  my_encryptor2("aaaaa")
    is "aaaa"
end

my_encryptor2("hello")


# Third one

fun my_encryptor3(s :: String) -> String:
  doc: "Recreating encryptor 3, it changes the period signs to exclamation marks ( . -> !)"
  
  a = string-replace(s, ".", "!")
  a
  
where:
  my_encryptor3("hello.")
    is "hello!"
end

my_encryptor3("hello.")


# Fourth one

fun my_encryptor4(s :: String) -> String:
  doc: "Recreating encryptor 4, it only prints the first 4 characters, then repeats them 5 times"
  
  a = string-substring(s, 0, 4)
  string-repeat(a, 5)
  
where:
  my_encryptor4("hello")
    is "hellhellhellhellhell"
end

my_encryptor4("hello")


# Fifth one

fun my_encryptor5(s :: String) -> String:
  doc: "Recreating encryptor 5, it changes vowels to the next character by alphabetical order"
  
  replacea = string-replace(s, "a", "b")
  replacee = string-replace(replacea, "e", "f")
  replacei = string-replace(replacee, "i", "j")
  replaceo = string-replace(replacei, "o", "p")
  replaceu = string-replace(replaceo, "u", "v")
  replaceA = string-replace(replaceu, "A", "B")
  replaceE = string-replace(replaceA, "E", "F")
  replaceI = string-replace(replaceE, "I", "J")
  replaceO = string-replace(replaceI, "O", "P")
  replaceU = string-replace(replaceO, "U", "V")
  replaceU

where:
  my_encryptor5("hello")
    is "hfllp"
end

my_encryptor5("hello")


# Sixth one

fun my_encryptor6(s :: String) -> String:
  doc: "Recreating encryptor 6, it converts the string to lowercase and removes all letter r"
  
  a = string-to-lower(s)
  string-replace(a, "r", "")

where:
  my_encryptor6("Robert") is "obet"
  my_encryptor6("RARARA") is "aaa"
end

my_encryptor6("Robert")


# Seventh one

fun my_encryptor7(s :: String) -> Number:
  doc: "Recreating encryptor 7, it gives the number of characters in a string"
  
  string-length(s)
  
where:
  my_encryptor7("hello") 
    is 5
end

my_encryptor7("hello")


# Eigth one

fun my_encryptor8(s :: String) -> String:
  doc: "Recreating encryptor 8, adds three exclamation marks and repeats it 3 times"
  
  a = s + "!!!"
  string-repeat(a, 3)
  
where:
  my_encryptor8("a") 
    is "a!!!a!!!a!!!"
end

my_encryptor8("hello")


# Ninth one

fun my_encryptor9(s :: String) -> Number:
  doc: "Recreating encryptor 9, gives the ASCII value of the first character in the string"
  
  a = string-substring(s, 0, 1)
  b = string-to-code-point(a)
  b
  
where:
  my_encryptor9("h") 
    is 104
end

my_encryptor9("hello")


# Tenth one

fun my_encryptor10(s :: String) -> String:
  doc: "Recreating encryptor 10, it uses encryptor 5, then encryptor 6, then encryptor 4"
  
  my_encryptor4(my_encryptor6(my_encryptor5(s)))
  
where:
  my_encryptor10("hello")
    is "hfllhfllhfllhfllhfll"
end

my_encryptor10("hello")


support.test-encryptor1(my_encryptor1)
support.test-encryptor2(my_encryptor2)
support.test-encryptor3(my_encryptor3)
support.test-encryptor4(my_encryptor4)
support.test-encryptor5(my_encryptor5)
support.test-encryptor6(my_encryptor6)
support.test-encryptor7(my_encryptor7)
support.test-encryptor8(my_encryptor8)
support.test-encryptor9(my_encryptor9)
support.test-encryptor10(my_encryptor10)

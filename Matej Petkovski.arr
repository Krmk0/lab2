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
  replaceA = string-replace(replaceu, "A", "b")
  replaceE = string-replace(replaceA, "E", "f")
  replaceI = string-replace(replaceE, "I", "j")
  replaceO = string-replace(replaceI, "O", "p")
  replaceU = string-replace(replaceO, "U", "v")
  replaceU

where:
  my_encryptor5("hello")
    is "hfllp"
end

my_encryptor5("hello")


# Sixth one

fun my_encryptor6(s :: String) -> String:
  doc: "Recreating encryptor 6, removes the letter r from any word"
  
  a = string-replace(s, "r", "")
  b = string-replace(a, "R", "")
  b
  
where:
  my_encryptor6("Robert") 
    is "obet"
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
  doc: "Recreating encryptor 10, it changes vowels to the next character by alphabetical order, only keeps the first 4 characters in a variable, then repeats it 5 times"
  
  replacea = string-replace(s, "a", "b")
  replacee = string-replace(replacea, "e", "f")
  replacei = string-replace(replacee, "i", "j")
  replaceo = string-replace(replacei, "o", "p")
  replaceu = string-replace(replaceo, "u", "v")
  replaceA = string-replace(replaceu, "A", "b")
  replaceE = string-replace(replaceA, "E", "f")
  replaceI = string-replace(replaceE, "I", "j")
  replaceO = string-replace(replaceI, "O", "p")
  replaceU = string-replace(replaceO, "U", "v")
  
  a = string-substring(replaceU, 0, 4)
  
  string-repeat(a, 5)
  
where:
  my_encryptor10("hello") 
    is "hfllhfllhfllhfllhfll"
end

my_encryptor10("hello")
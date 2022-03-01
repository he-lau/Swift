/*
    TP2 
*/

// EXERCICE 1

let annee: Int = 2022
let annee_naissance: Int
var sexe: Int 
var hello: String = "Bonjour"

print("Votre annee de naissance :")
annee_naissance = Int(readLine()!)!

print("Votre sexe :")
print("[0] Masculin")
print("[1] Féminin :")
sexe = Int(readLine()!)!

let age: Int = annee-annee_naissance

if(age<18) {
  hello+=", tu as \(age) ans"
  if(sexe==0) {
        hello+=" et tu es un garçon."
  }
  else {
        hello+=" et tu es une fille."
  }
}
else {
  if(sexe==0) {
        hello+=" Monsieur, vous avez \(age) ans et vous êtes un homme."
  }
  else {
        hello+=" Madame, vous avez \(age) ans et vous êtes une femme."
  }   
}

print(hello)

// EXERCICE 2

var n : Int 

print("n! : ")
n = Int(readLine()!)!

while(!(n > 0)) {
    print("erreur : valeur non conforme !")
    print("n! : ")
    n = Int(readLine()!)!
}

var fact: Int = 1

for i in 1...n {
    fact*=i
    
}

print("\(n)! = \(fact)")

// EXERCICE 3

let prix_default: Float = 13
let age_ex3 = 11
let jours = ["Lundi", "Mardi", "Mercredi", "Jeudi", "Vendredi","Samedi","Dimanche"]

var prix_final:Float = prix_default
let jour:String = jours[0]
var reduc: Int = 0


if(age_ex3<=15 || age_ex3>=60) {
  if(jour=="Samedi"){
        prix_final=Float(prix_default*0.75)
        reduc=25
    }
  else {
        prix_final=prix_default*0.90
        reduc=10
  } 
}
else {
       if(jour=="Lundi"||jour=="Jeudi"){
        prix_final=prix_default*0.85
        reduc=15
    } 
}

print("[")
print("Age : \(age_ex3)")
print("Reduction : \(reduc) %")
print("Total : \(prix_final)")
print("]")

// EXERCICE 4

var chaine1: String = "hello"
var chaine2: String = "world !"

print(chaine1+" "+chaine2)

// EXERCICE 5

var motif: String = "******"

for _ in 1...1 {
  for _ in 0...1 {
    print(motif)
  }
}

// EXERCICE 6

motif = "*"

var N: Int
print("Hauteur du triangle :")
N = Int(readLine()!)!
/*
for i in 0...N-1 {
  if(i==0) {
    print(motif)          
  }
  else {
    motif += "*"      
    print(motif)          
  }
}
*/
for i in 0...N-1 {
  motif = ""
  for _ in i...N-1 {
    motif += "*"
  }
    print(motif)
}

// EXERCICE 7

var a: Int = 2
var b: Int = 2
var c: Int = 2

var delta: Double = Double(b*b-4*a*c)

var x1:Double
var x2:Double


if(delta>0) {
  print("Il y a 2 solutions.")

  
  x1 = Double((Double(-b)+delta.squareRoot()))
  
              
}
else if (delta==0) {
  print("Il y a 1 solution.")
                    
}
else {
      print("Il n'y a pas de solutions.")
}



// EXERCICE 8

// EXERCICE 9






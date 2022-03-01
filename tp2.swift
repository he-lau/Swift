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
var b: Int = 9
var c: Int = -5

var delta: Double = Double(b*b-4*a*c)

var x1:Double
var x2:Double

if(delta>0) {
  print("Il y a 2 solutions :")
  
  x1 = (Double(-b)+delta.squareRoot())/Double(2*a)
  x2 = (Double(-b)-delta.squareRoot())/Double(2*a)

  print("x1 = \(x1)")
  print("x2 = \(x2)")
            
}
else if (delta==0) {
  print("Il y a 1 solution :")

  x1 = Double(-b)/Double(2*a)
  print("x1 = \(x1)")
                    
}
else {
      print("Il n'y a pas de solutions.")
}

// EXERCICE 8

let choix: Int

let addition:(Double, Double) -> Double = (+)
let soustraction:(Double, Double) -> Double = (-)
let multiplication:(Double, Double) -> Double = (*)
let division:(Double, Double) -> Double = (/)

//print(addition(3,2))


print("0peration (a,b):")
print("[0] a+b")
print("[1] a-b")
print("[2] a*b")
print("[3] a/b")

choix = Int(readLine()!)!

var a_:Double
var b_:Double

print("a? :")
a_ = Double(readLine()!)!
print("b? :")
b_ = Double(readLine()!)!

switch choix {
  case 0 : print("\(a_) + \(b_) = \(addition(a_,b_))")
  case 1 : print("\(a_) - \(b_) = \(soustraction(a_,b_))")
  case 2 : print("\(a_) * \(b_) = \(multiplication(a_,b_))")

  case 3 : 
    if(b_==0) {
      print("erreur : division par 0 !")
    }
    else {
          print("\(a_) / \(b_) = \(division(a_,b_))")
    }
  
  default : print("")
}
// EXERCICE 9

let entree: Int = 1329
var annees: Int 
var semaines: Int 
var jours: Int 

// distributions 

annees = entree/365
semaines = entree%365/7
jours = entree%365%7

print("Entree : ")
print("  Nombre de jours : \(entree) ")

print("Sortie : ")
print("  Années : \(annees) ")
print("  Semaines : \(semaines) ")
print("  Jours : \(jours) ")






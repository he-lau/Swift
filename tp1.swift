/*
    TP1
*/

// EXERCICE 1
var a: Int = 0
var b: Float = 7.0
var car: Character = "!"
var chaine: String = "Hello world"

print(a,b," : ",chaine,car)

// EXERCICE 2
var x: Int = 2
var y: Int = 3

print(x," x ",y," = ",x*y)

// EXERCICE 3
var permute: Int = y
y = x
x = permute

print(x," x ",y," = ",x*y)

// EXERCICE 4
var somme: Int = 0
print("Entrer une première valeur : ")
somme += Int(readLine()!)!
print("Entrer une seconde valeur : ")
somme += Int(readLine()!)!
print("Entrer une trosième valeur : ")
somme += Int(readLine()!)!

print("La somme : \(somme)")

// EXERCICE 5
somme = 0

print("Entrer une première valeur : ")
somme += Int(readLine()!)!
print("Entrer une seconde valeur : ")
somme += Int(readLine()!)!
print("Entrer une trosième valeur : ")
somme += Int(readLine()!)!

var avg: Int = Int(somme/3)
print("La moyenne : \(avg)")

// EXERCICE 6
if(a==Int(b)) {
      print("A == B")
}
else if(a<Int(b)) {
      print("A < B")
}
else if(a>Int(b)) {
      print("A > B")
}

// EXERCICE 7
var pair: Int = 2

if(pair%2==1)  {
      print("\(pair) est impaire.")
}
else if(pair%2==0){
      print("\(pair) est paire.")
}

// EXERCICE 8
var choix: Int = 0
var number: Int = 0

print("Entrer une valeur : ")
number = Int(readLine()!)!

print("Faite un choix :")
print("[1] : afficher son double")
print("[2] : afficher son triple")
print("[3] : afficher son carré")

choix = Int(readLine()!)!

switch choix 
{
  case 1 : print("2*\(number)=",2*number)
  case 2 : print("3*\(number)=",3*number)
  case 3 : print("\(number)^2=",number*number)
  default : print("choix inexistant.")
}

// EXERCICE 9
var annee: Int 

print("Entrer une année : ")
annee = Int(readLine()!)!

if(annee%4==0 && (annee%100==0 && annee%400==0)){
     print("\(annee) est bissextile.")
}
else {
     print("\(annee) est non bissextile.")
}
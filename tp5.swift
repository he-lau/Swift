import Foundation 

/*
  Closures
*/

// 1.
let plusGrand : (Int,Int) -> () = {
  (a:Int,b:Int) -> () in 
  if(a>b) {print("\(a) > \(b)");}
  else {print("\(b) > \(a)");}
}

plusGrand(2,3);
plusGrand(0,-44);

// 2.
let sommeTrois = {
  (a:Int,b:Int,c:Int) -> () in 
  print("\(a) + \(b) + \(c) = \(a+b+c)");
}

sommeTrois(1,2,3);

// 3.
let plusPetitListe : ([Int]) -> (Int) = {
  (list:[Int]) -> (Int) in 
  return list.min()!;
}

let list = [1,2,3,4]
print("plusPetitListe \(list) : "+String(plusPetitListe(list)));

// 4.

let nbMaj = {
  (str:String) -> (Int) in  
  var maj:Int = 0;

  for char in str {
    if char.isUppercase {
        maj += 1;
    }
  }
  return maj;
}
let string = "Hello World !";

print("Nombre de majuscule dans \"\(string)\" : \(nbMaj(string))");

/*
  Enumération et Structures
  Exercice 1
*/

enum Genre {
    case garçon
    case fille
}

enum Niveau {
    case cp
    case ce1
    case ce2
    case cm1
    case cm2
}

struct Eleve {
  var nom:String
  var age:Int
  var genre:Genre
  var niveau:Niveau
}

var eleve1 = Eleve(nom:"Alice",age:1,genre:Genre.fille,niveau:Niveau.cp);
var eleve2 = Eleve(nom:"Jean",age:2,genre:Genre.garçon,niveau:Niveau.ce1);
var eleve3 = Eleve(nom:"Léa",age:3,genre:Genre.fille,niveau:Niveau.cp);
var eleve4 = Eleve(nom:"Michel",age:4,genre:Genre.garçon,niveau:Niveau.ce2);

let eleves = [eleve1,eleve2,eleve3,eleve4];

func memeNiveau(eleves: [Eleve],niveau:Niveau) -> [Eleve] {
  var memeNiveau = [Eleve]();

  for i in 0...eleves.count-1 {
    if(eleves[i].niveau == niveau) {memeNiveau.append(eleves[i]);}
  }
  return memeNiveau;
}

//print(memeNiveau(eleves:eleves,niveau:Niveau.cp));

/*
  POO
  Exercice 2
*/

class Courant {
  // Attribut
  var solde:Float

  // Constructeurs
  init() {
    self.solde = 0;
  }
  init(solde:Float) {
    self.solde = solde;
  }
  
  // Méthodes
  // deposer de l'argent
  func deposer(argent:Float) {
    self.solde += argent;
  }
  // retirer de l'argent
  func retirer(argent:Float) {
    // si la somme retirée est disponible
    if(self.solde-argent>=0) {
      self.solde -= argent;
    }
    else {
      print("Le découvert n'est pas possible.");
    }
  }
  // virement vers le Livret A
  func virement(vers:LivretA,argent:Float) {
    // si la somme est disponible et que le compte n'est pas clôturé
    if(self.solde-argent>=0 && vers.cloturer==false) {
      self.solde -= argent;
      vers.solde += argent;
    }
    else {
      print("L'opération n'est pas possible.");  
    }
  }
  // virement vers le compte Epargne
    func virement(vers:Epargne,argent:Float) {
    if(self.solde-argent>=0 && vers.cloturer==false) {
      self.solde -= argent;
      vers.solde += argent;
    }
    else {
      print("L'opération n'est pas possible.");
    }
  }
  
  // retourne le solde sur le compte courant
  func affiche() -> String {
    return "Compte courant : \(solde) €";
  }
}

class LivretA {
  var solde:Float
  // booléen permet de gérer l'état de cloture du compte, initialisé à false
  var cloturer:Bool = false
  
    init(solde:Float) {
      // l'ouverture d'un livret A requiere minimum 10 euros
      if(solde>=10) {
        self.solde = solde
      }
      else {
        /*
          initialisation du solde à -1
          sinon : error: return from initializer without initializing all stored properties
        */
        self.solde = -1
        // on s'assure de cloturer le compte
        self.setCloture()
        print("Ouverture impossible, solde trops faible (10 euros minimum)");
    }          
    }

    // virement vers le compte courant
    func virement(vers:Courant,argent:Float) {
    if(self.solde-argent>=0 && self.cloturer==false) {
      self.solde -= argent;
      vers.solde += argent;
      // maj de l'éat de cloture après le virement  
      self.setCloture();  
    }
    else {
      print("L'opération n'est pas possible.");
    }
  }
    func virement(vers:Epargne,argent:Float) {
    if(self.solde-argent>=0 && self.cloturer==false) {
      self.solde -= argent;
      vers.solde += argent;    
      // maj de l'éat de cloture après le virement  
      self.setCloture();        
    }
    else {
      print("L'opération n'est pas possible.");
    }
  }

  // permet la maj de l'état de cloture 
  func setCloture() {
    if(self.solde<10) {
      self.cloturer = true;
    }
    else {
      self.cloturer = false;
    }
  }

  // retourne le solde du livret A
  func affiche() -> String {
    return "Livret A : \(solde) €";
  }
}

class Epargne {
  var solde:Float
  var cloturer:Bool = false
  
  init(solde:Float) {
    if(solde>=200) {
      self.solde = solde;  
    }
    else {
      self.solde = 0
      // on cloture le compte 
      self.setCloture()
      print("Ouverture impossible, solde trops faible (200 euros minimum)")
    }  
  }
    // virement vers le compte courant
    func virement(vers:Courant) {
    if(self.solde>0 && self.cloturer==false) {
      // l'entièreté du compte est envoyé
      vers.solde += self.solde;
      self.solde = 0;
      // on cloture le compte
      self.setCloture();
    }
    else {
      print("L'opération n'est pas possible.");
    }
  }
    // virement vers le compte livret A
    func virement(vers:LivretA) {
    if(self.solde>0 && self.cloturer==false) {
      vers.solde += self.solde;
      self.solde = 0;      
      self.setCloture();
    }
    else {
      print("L'opération n'est pas possible.");
    }
  }

  func setCloture() {
    if(self.solde==0) {
      self.cloturer = true;
    }
    else {
      self.cloturer = false;
    }
  }
  
  func affiche() -> String {
    return "Epargne : \(solde) €";
  }
} // fin Epargne

class Client {
  // Attributs
  var courant: Courant
  var livretA: LivretA
  var epargne: Epargne

  init(courant:Courant,livretA: LivretA,epargne: Epargne) {
    self.courant = courant;
    self.livretA = livretA;
    self.epargne = epargne;
  }

  func affiche() {
    print(self.courant.affiche())
    print(self.livretA.affiche())
    print(self.epargne.affiche()+"\n")
  }
}

// instanciation
var c1 = Client(courant:Courant(solde:2000),livretA:LivretA(solde:10),epargne:Epargne(solde:200))

c1.affiche()

/*
  On réalise quelque operations :
  - retirer 500 euros du compte courant
  - effectué un virement depuis le courant vers le livret A de 500 euros
  - effectué un virement depuis le compte epargne au livret A
*/
c1.courant.retirer(argent: 500)
c1.courant.virement(vers: c1.livretA, argent: 500)
c1.epargne.virement(vers: c1.livretA)

c1.affiche()


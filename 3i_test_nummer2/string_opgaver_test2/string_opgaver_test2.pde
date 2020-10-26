int hvorMangeT(String s){
  //OPGAVE 1: Skriv resten af koden til funktionen "hvorMangeT" så den kan finde antallet af bogstavet 't' i tekst-inputtet
  char[] c = s.toCharArray();
  int t = 0;
  
  for(int i = 0; i < c.length; i++){
     if (c[i] == 't'){
       t++;
     };
  }
  return t;
}

String detForsteOrd(String s){
  //OPGAVE 2: Skriv og OMSKRIV resten af koden til funktionen "detForsteOrd",- så den retunerer det første ord i tekst-inputtet
  String First;
  
  String[] list = split(s, ' ');
  First = list[0];
  
 return First; 
}

String skriv1OrdOmvendt(String s){
 //OPGAVE 3: Skriv resten af koden så funktionen returnerer input-teksten men nu med første ord skrevet omvendt.
 //Dvs. "Dette er en ny sjov test" bliver til "etteD er en ny sjov test"'
 String First;
 String Omvendt = "";
  
 String[] list = split(s, ' ');
 First = list[0];
 
 char[] c = First.toCharArray();
 
  
  for(int i = 0; i < c.length; i++){
    char t = c[i];
    c[i] = c[c.length - i - 1];
    c[c.length - i - 1] = t;
    Omvendt = str(t);
  }
  
  return Omvendt;
}

void setup() {
  String teksten = "Dette er en ny sjov test";
  
  size(1000,500);
  clear();
  textSize(20);
  text("teksten = \"" + teksten + "\"",50,50);
  text("længden af teksten = " + hvorMangeT(teksten),50,100);
  text("Det tredje ord er = " + detForsteOrd(teksten),50,150);
  text("Hvert ord omvendt = " + skriv1OrdOmvendt(teksten),50,200);
}

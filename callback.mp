Callbacks

Man kan sende en funktion med som et argument til en anden funktion. 

forEach kræver, at der kommer en funktion. fx et callback. 
Når der sendes en funktion med inde i en anden funktion er der pr. definition en callback. 
Er der [] skal den med.
uden [] er den optional. 

fx 
funkction udskrivData (tekst){
    console.log('<p>' + tekst + '<p>'); 

}
udskrivData ("hej verden"){ <-- den tekst kommer op i tekst i funktionen udskrivData.

tilføjHtml(tekst);

}

En funktion inde i en funktion. Først skal der gøres noget ved noget specefikt data, og 
efterfølgende skal der gøres noget andet med samme data.  

I javascript kan funktioner lægges ned i en variabel, her et eksempel på en anonym funktion der gemmes i en variabel kaldet data
let data = function(){
   // noget kode...
};
data(); // dette udfører funktionen, der er gemt i variablen data 


t er samme princip der benyttes, når en callback funktion sendes med som argument.

Her er to funktioner hvor den ene kan modtage et callback (kaldet next)
// tænk på dette som den primære funktion der kaldes fra vores kode
function doSomething(someValue, next){
   // her kunne someValue manipuleres, inden callback funktionen kaldes
   next(someValue);
}
// denne funktion vil blive udført som en callback FRA doSomething funktionen
function outputSomething(value){
   console.log(value);
}
doSomething('text', outputSomething);

funktionen outputSomething kan kaldes uafhængigt af andre funktioner, mens doSomething skal have en funktion sendt med som argument.

Prøv at forestille jer vi har behov for en funktion, som kan løbe igennem et array af data og tjekke om et kriterie er opfyldt for hvert element. Efter alle elementer er gennemløbet ønkser vi nogle gange at udskrive HTML, andre gange gemme i en tekst fil og måske i nogle scenarier udskrive i ren tekst... men gennemgangen af arrayet er det samme i hvert scenarie.

Her kan callback funktion være en løsning :

// tre simplificiserede funktioner til udskrift af data..
// blot til at demonstrere callback (OBS læg mærke til backtics...)
function udskrivSomHTML(data) {
   let resultat = '<ul>';
   data.forEach(element => {
      resultat += '<li>' + element + '</li>';
   })
   resultat += '</ul>';
   console.log(resultat);
}
function udskrivIRenTekst(data) {
   console.log(`Ren Tekst: ${data}`);
}
function gemITekstFil(data) {
   console.log('... data blev gemt i en fil');
}

// en funktion som behandler noget data, og som
// kan sende det behandlede data videre i systemet
function forberedData(grundData, next) {
   let behandletData = [];
   for (let i = 0; i < grundData.length; i++) {
      if (isNaN(grundData[i])) {
         behandletData.push(grundData[i]);
      }
   }
   if (behandletData.length > 0) {
      next(behandletData);
   }
}

// her sættes funktionerne i gang, 
// læg mærke til det er forskellige funktioner der medsendes
let varer = ['cola', 'chips'];
forberedData(varer, udskrivSomHTML);
forberedData(varer, udskrivIRenTekst);
forberedData(varer, gemITekstFil);


Asynkronitet

I stedet for at vente på, at der køres den første kode, kører den på samme tid. 
Lidt som at have mange bolde i luften. 

Her køres funktionerne ikke i kodens struktur.


function getData(dataURI, outputData) { //her defineres funktionen og den modtager to argumenter.
    console.log('første linje i getData funktionen...'); // Første linje der udskrives, når funktionen getData kaldes.- 
    let timer = setTimeout(function () { //her tages den ud af flowet og køres i en seperat tråd, men først efter 2 sek. I mellem tiden køres sidste linje i koden.  setTimeout er en javascripft funktion. 
        console.log('Her der der gået 2 sekunder.'); // viser at der er gået 2 sek. Den sidste linje er nu vist. 
        let dataArray = [12, 34, 56, 78, 90, 123, 456, 789]; //et array der vises efter 2 sek. 
        outputData(dataArray);
    }, 2000); // når der gået 2 sek, så køres de tre ovenstående linjer console.log('her..) -Array);
} //inden da køres den nederst linje. 

function outputData(dataArray) { // en funktion med med et argument. Den udskriver teksten og det tilhørende Array. 
    console.log('Dette er funktionen der udskriver det hentede data: ' + dataArray);
}

getData('http://www.domain.com/something', outputData);
console.log("Denne kode linje burde være den sidste."); //Den linje køres før den burde. Men setTimer gør, at den efterfølgende kode venter 2 sek. med at køre. I mellem tiden køres denne linje.   

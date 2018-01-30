

function doThis(tekst) {
    console.log('<p>' + tekst + '<p>');
}

doThis("hans")


Omskriv dette forEach kald, så det ikke benytter den anonyme funktion,
    men så det i stedet modtager den navngivet funktion du lige har oprettet.

function doThis(tekst) {
    console.log('<p>' + tekst + '<p>');
}

doThis("hans")

let data = [1, 2, 3, 4, 5, 6];
data.forEach(doThis)

EKS2

function minFunktion(læskedrik) {
    console.log(læskedrik);
}

minFunktion("cola");

let data = [1, 2, 3, 4, 5, 6];
data.forEach(minFunktion)  //den er inde i paratesen, da den er blevet kaldt og nu vil vihave den til at lave noget andet. 
Her skal den gøre noget for hvert element inde i arrayet.
minFUnktion bliver sendt med som parameter


______


Skriv din egen funktion, der kalder på en callback funktion(dvs du skal have 2 funktioner).

første funktion modtager en streng, og en callback funktion.funktionen skal tilføje et html < p > tag omkring strengen.

callback funktionen modtager den ændrede streng, og console.log'er den. men kaldet skal ske fra den første funktion.


function drik(læskedrik) {
    console.log('<p>' + læskedrik + '<p>');
}

function åbenDrik(læskedrik, next) { // læskedrik henviser til "cola" i åbenDrik og next til drik. 
    // gøre en masse med læskedrik... 

    next(læskedrik); // her er next blevet en function. 

} // for udføre ovenstående skal funktionen kaldes. 

åbenDrik("cola", drik);
-------

    function food(meat) {
        console.log("Jeg elsker " + meat);
    }

function eat(meat, next) {

    next(meat);
}

eat("bacon", food);


Forsøg med egne ord at beskrive hvad det er der sker.
Bryd kode eksemplet op i små bidder og benyt markdown til at beskrive det.

Her er det en rigtig god ide at få en snak med sidemanden om hvad koderne gør.
Skriv kommentarer ud for hver enkelt linje, som i følgende eksempel

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



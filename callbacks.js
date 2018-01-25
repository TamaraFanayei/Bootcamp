

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

function åbenDrik(læskedrik, next) {
    // gøre en masse med læskedrik... 

    next(læskedrik); // her blevet next en function. 

} // for udføre ovenstående skal funktionen kaldes. 

åbenDrik("cola", drik);






Forsøg med egne ord at beskrive hvad det er der sker.
Bryd kode eksemplet op i små bidder og benyt markdown til at beskrive det.

Her er det en rigtig god ide at få en snak med sidemanden om hvad koderne gør.
Skriv kommentarer ud for hver enkelt linje, som i følgende eksempel


function getData(dataURI, outputData) { //her defineres funktionen og den kan modtage to argumenter
    console.log('første linje i getData funktionen...'); // Første linje når det udskrives. 
    let timer = setTimeout(function () { //variabel med noget data
        console.log('Her der der gået 2 sekunder.');
        let dataArray = [12, 34, 56, 78, 90, 123, 456, 789];
        outputData(dataArray);
    }, 2000);
}

function outputData(dataArray) {
    console.log('Dette er funktionen der udskriver det hentede data: ' + dataArray);
}

getData('http://www.domain.com/something', outputData);
console.log("Denne kode linje burde være den sidste.");




A JavaScript function is a block of code designed to perform a particular task.

A JavaScript function is executed when "something" invokes it (calls it).

Fx funktion sigHejVerden(){
    console.log('Hej Verden!');     
} 

log er en funktion. Der er partatenser efter den. Den udfører noget.
Den gør noget. 

funktion sigHejVerden(){
    console.log('Hej Verden!');     
}  Hvis man bare console.logger den kommer der ikke nget frem, da den ikke er kaldt. 
Nu er den kun defineret. 

Man kalder den ved at sige den navn. 
sigHejVerden();

Man kan kalde den lige så mange gange, man har lyst til. 

Argumenter/parameter

function iKroner(pris){
    console.log(pris + 'kr.');
}
iKroner kaldes ved at: 
iKroner(123);

Her er der oprettet en variabel, der hedder pris, og den sende med og fortæller, hvad vi gerne
vil have funktionen til at gøre. 

NaN = is not a number

function iKroner(pris){
    if (isNaN(pris)){
        console.log('Derp');
    } else {
        console.log(pris + 'euro');
    }
}

Her over validerer vi koden. Og fortæller, at det kun er tal, der skal 
kunne stå. Skrives der bogstover, kan den ikke. 

Man kan sagtens have flere argumenter/parametre i en funktion. 
fx function iKroner(pris, format)
Der sættes bare et komma. 

Return virker sammen med funktioner. Den returnerer noget data.
Fx
function safeMultiply(x, y){
    if(!isNaN(x) // isNaN(y)){   Her fortæller vi, at den kun er tal/numbers. 
        return 0;
    } else {
        return x * y;
    }
}
console.log(safeMultiply(6,4)); virker når den console.loggers. 
console.log(safeMultiply("Hans",4)); virker ikke, da der er en string. 

Giv altid funktionerne gode navne. 

Anonyme funktioner

function udskrivFarve(farve){
    console.log(farve);
}

let farver = ['rød', 'grøn', 'blå'];
farver.forEach()

forEach finder selv ud, hvilke farve den skal udskrive. 
function kan også bare genbruges mange steder i koden. Fx hvis der skal tilføjjes en ekstra
farve et sted. 
Så skrives bare:
udskrivFarve('gul');

function gange(x, y) {
    if (x != undefined && y != undefined) {   <-- Her siger vi, at x og y skal være defineret. 
        if (isNaN(x) || isNaN(y)) {  <-- Her siger vi, at det x og y skal være et tal
            return 0  <--- Hvis det ikke er et tal, så return med 0 (skriv 0 eller en tekst fx nej)
        } else { <-- og hvis det hele passer og x og y er tal, så gør følgende:
            return x * y + ' er lig med det her tal';  <- Betingelsen er opfyldt og den ganger nu x og y. 
        }
    } else {  <-- og hvis x og y er undefined skal den returne med -1 eller noget andet valgfri tekst. 
        return -1
    }
}
console.log(gange(2, 'hans')); <--- her returner den med 0, da 'hans'er en string. 
console.log(gange(2)); <-- her returner den med -1, da y er undefined. 
console.log(gange(2, 6)) <-- Her ganger den x og y, da den er opfyldt. der er tal. 


 

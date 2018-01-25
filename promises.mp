

Promises er en god ting til callbacks, da resultatet af koden bliver en slags
fortælling og dermed mere overskuelig. 

Formålet er at komme væk fra at skulle medsende callbacks. I stedet kan vi sammekæde funktionerne ved hjælp af to nye funktioner then og catch til koderne.

.then() og .catch() er funktioner JavaScript stiller til rådighed igennem et Promise

fx 
doOneThing().then().catch();

let firstPromise = new Promise(function (resolve, reject) { // new Promis - der kommer et resulatat ud af den. (resolve, reject) er to callback funktioner
   
   resolve('success'); // resole knytter funktionerne sammen

});

firstPromise.then(function (successMessage) {
   console.log(successMessage);
});


let secondPromise = new Promise(function (resolve, reject) {
   // her kunne der være masser af kode der skulle udføres
   // og derefter afsluttes med at resolve eller reject
   // alt efter om alting lykkedes eller ej
   if (true) {  // Hvis koden var false, ville vi køre koden reject. 
      resolve('success');
   } else {
      reject('Det var ikke en succes');
   }
});

secondPromise
   .then(successMessage =>  { Koden burde se sådan ud  .then(function (successMessage), men det er besvrligt at skrive function hver gang, så i stedet skrive function bruges => (fat arrow) Bruges kun til annonyme funktioner
   console.log(successMessage);
}).catch(errorMessage => {  // hvis noget går galt ryger det ned i catch. 
   console.log(errorMessage);
});

Resolve og then er det samme
Reject og catch


En måde at køre noget kode på. Starter ved then. 
Fx et login system. Reject eller resolve. Ja til login, hvis det er intastet
korrekt og reject hvis det er forkert. fx forkort password. 
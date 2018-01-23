for (let i = 0; i < 26; i++) {
    console.log(i);
}

let x = 1;

while (x < 26) {
    console.log(x, "Hej Verden");
    x++;
}


let x = 1;

while (x < 25) {
    console.log(x, "Hej Verden");
    x++;
}

let x;

do {
    x = 25;
    console.log(x, "hej");
} while (x < 25)


for (let i = 2018; i < 1917; i--) {
    console.log(i);
}

let dage = ["mandag", "tirsdag", "onsdag", "torsdag", "fredag", "lørdag", "søndag"];

dage.forEach(function (dage, index) {
    console.log(dage[index]);
    console.log(dage + " er placeret på " + index + " plads");
});

let navne = ["Simon", "Anne", "Bo", "Ib", "Jo", "Le", "Hans"];

navne.forEach(function (navne, index) {
    console.log(navne);
});


let navne = ["Simon", "Anne", "Bo", "Ib"];

navne.forEach(function (navne, index) {
    console.log(navne[index]);
    console.log(navne + " er placeret på " + index + " plads");
});

let alletal = [4, 6, 10, 8, 10, 14, 20, 16, 18, 2];

alletal.forEach(function (tal, index) {
    console.log(tal < alletal[index + 1])
    if (tal < alletal[index + 1]) {
        console.log(tal + "er mindre end" + alletal[index + 1])
    }
    else (tal + "er større end" + alletal[index - 1]
    )

});


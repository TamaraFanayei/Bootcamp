
// function gange(x, y) {
//     if (!isNaN(x) || isNaN(y)) {
//         return x * y + ' er lig med det her tal';
//     }
// }
// console.log(gange(2, 4));

// function gange(x, y) {
//     if (!isNaN(x) || isNaN(y)) {
//         return x * y er lig med det her tal;
//     }
// }
// console.log(gange(2, 4));

// function gange(x, y) {
//     if (!isNaN(x) || isNaN(y)) {
//         return x * y;
//     }
// }
// console.log(gange('Hans', 4));



function gange(x, y) {
    if (x != undefined && y != undefined) {
        if (isNaN(x) || isNaN(y)) {
            return 0
        } else {
            return x * y + ' er lig med det her tal';
        }
    } else {
        return -1
    }
}
console.log(gange(2, 'hans'));





function thirdPromise(someBoolValue) {
    return new Promise((resolve, reject) => {
        setTimeout(() => {
            if (someBoolValue) {
                resolve('Denne besked kommer fra "resolve"');
            } else {
                reject(new Error('Det var ikke en succes, dette kommer fra "reject"'));
            }
        }, 2000);
    })
}

thirdPromise(true) // kan ændres til false. Så sender den til .catch. Ved true sende til .then.  
    .then(success => {
        console.log(success);
        //throw new Error('lad os sige noget gik galt!');
        return 'Information sendes videre';
    }).then(nextSuccess => {
        console.log(nextSuccess);
    }).catch((error) => {
        console.log(error);
    })
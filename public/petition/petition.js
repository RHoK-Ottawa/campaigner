function filePetition(){

        var signatoryName = document.getElementById( 'signatory' );
        var email = document.getElementById( 'emailaddress' );

        console.log( 'signatory: ' + signatory.value );
        console.log( 'emailaddress: ' + emailaddress.value );

        var xhr = new XMLHttpRequest();

        xhr.open('POST', 'http://localhost:3000/campaigns/4/signatories.json', true);
        xhr.setRequestHeader('Content-type', 'application/json')
        xhr.onload = function () {
            console.log('onload');
        };

        var signature = { email: signatory.value, name: signatoryName.value };
        xhr.send( JSON.stringify(signature) );
}
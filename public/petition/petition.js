function filePetition(){

	var signatoryName = document.getElementById( 'signatory' );
	var email = document.getElementById( 'emailaddress' );
	
	console.log( 'signatory: ' + signatory.value );
	console.log( 'emailaddress: ' + emailaddress.value );
	
	var signature = { "email": signatory.value, "name": signatoryName };
	
	var xhr = new XMLHttpRequest();
	
	xhr.open('POST', 'http://localhost:3000/campaigns/4/signatories/new', true);
	
	xhr.onload = function () {
	    console.log('onload');
	};
	
	xhr.send( signature );

  // needs to hit:
  // http://localhost:3000/campaigns/4/signatories/new
    // json:
    //{
    //"email": "joeyB@jsoey.com",
    //"name": "joe"
    //}
}
function filePetition(){

	var signatory = document.getElementById( 'signatory' );
	var email = document.getElementById( 'emailaddress' );
	
	console.log( 'signatory: ' + signatory.value );
	console.log( 'emailaddress: ' + emailaddress.value );

  // needs to hit:
  // http://localhost:3000/campaigns/4/signatories/new
    // json:
    //{
    //"email": "joeyB@jsoey.com",
    //"name": "joe"
    //}
}
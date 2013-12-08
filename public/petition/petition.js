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
        
        xhr.onerror = function () { 
//		    error(xhr, xhr.status); 
		    showFeedback();
		}; 

        var signature = { email: signatory.value, name: signatoryName.value };
        xhr.send( JSON.stringify(signature) );
}

function showFeedback( feedback ){
	
	var banner = document.getElementById( "banner" );
	var offsetWidth = banner.offsetWidth;
	var notificationArea = document.getElementById( "notificationArea" );
	notificationArea.className = "notificationShow";
	notificationArea.style.width = offsetWidth;
	
	notificationArea.innerHTML = 'this is a test';
	
	setTimeout( function(){ hideFeedback(); },4000 );
}

function hideFeedback(){
	var notificationArea = document.getElementById( "notificationArea" );
	notificationArea.className = "notificationHide";
}



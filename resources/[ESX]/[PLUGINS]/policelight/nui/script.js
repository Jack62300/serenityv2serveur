(function() {
		window.addEventListener('message', function(event){
			
			if(event.data.type === "play") {
				callSound      = new Audio('ogg/' + event.data.filename + '.ogg');
				callSound.play();
			}
			
		}); 
})();
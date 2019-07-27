var index = lib.rand(0, config.background.length);
var background = document.getElementById("background");
var background2 = document.getElementById("background2");
var start = true;

NextBackground();

if(config.staticBackground == false)
{
    setInterval(NextBackground, config.backgroundSpeed)
}

function NextBackground() 
{
    index = (index + 1) % config.background.length;

    switch (config.backgroundStyle) 
    {
        case "slide":
            AnimationSlide(index);
            break;

        case "fade":
            AnimationFade(index);
            break;

        case "zoom":
            AnimationZoom(index);
            break;

        default:
            console.log("Unknow background animation!");
            break;
    }
}

function AnimationSlide(bgIndex)
{
    if (background.style.opacity == "0")
    {
        background2.setAttribute("class", "slideright");
    } 
    else if (background2.style.opacity == "0")
    {
        background.setAttribute("class", "slideright");
    }
    
    setTimeout(() => 
    {
        background.setAttribute("src", config.background[bgIndex]);

        if (background.style.opacity == "0")
        {
            background2.style.opacity = 0;
            background.style.opacity = 0.3;
            
        }
        else
        {
            background2.style.opacity = 0.3;
            background.style.opacity = 0;
        }
        
        background2.setAttribute("class", "");

    }, 1900);
}

function AnimationFade(bgIndex)
{
    lib.fadeInOut(600, "background", 0, 0.2);
    
    setTimeout(function()
    {
        background.setAttribute("src", config.background[bgIndex]);
    }, 600);
}

function AnimationZoom(bgIndex)
{
    background.setAttribute("class", "zoomin")

	if(start) {
		background.setAttribute("src", config.background[index]);
	}else{
		setTimeout(() => 
		{
			background.setAttribute("src", config.background[index]);
		}, 1900);
	}
	
	if(start) {
		background.setAttribute("class", "");
	}else{
		setTimeout(() => 
		{
			background.setAttribute("class", "");
		}, 3800);
	}

	if(start) {
		start = false;
	}	
}




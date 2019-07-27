var config =
{    
    /*
        Do we want to show the image?
        Note that imageSize still affects the size of the image and where the progressbars are located.
    */
    enableImage: true,
 
    /*
        Relative path the the logo we want to display.
    */
    image: "img/logo.png",

    /*
        Cursor image
    */
    cursorImage: "img/cursor.png",
 
    /*
        How big should the logo be?
        The values are: [width, height].
        Recommended to use square images less than 1024px.
    */
    imageSize: [512, 512],
 
    /*
        Define the progressbar type
            0 = Single progressbar
            1 = Multiple progressbars
            2 = Collapsed progressbars
     */
    progressBarType: 0,
 
    /*
        Here you can disable some of progressbars.
        Only applys if `singleProgressbar` is false.
    */
    progressBars:
    {
        "INIT_CORE": {
            enabled: false, //NOTE: Disabled because INIT_CORE seems to not get called properly. (race condition).
        },
 
        "INIT_BEFORE_MAP_LOADED": {
            enabled: true,
        },
 
        "MAP": {
            enabled: true,
        },
 
        "INIT_AFTER_MAP_LOADED": {
            enabled: true,
        },
 
        "INIT_SESSION": {
            enabled: true,
        }
    },
 
    /*
        Loading messages will be randomly picked from the array.
        The message is located on the left side above the progressbar.
        The text will slowly fade in and out, each time with another message.
        You can use UTF-8 emoticons inside loading messages!
    */
    loadingMessages:
    [
        "Bienvenue sur Sérénity RP",
        "Connexion en cours...",
        "Chargement de vos items et argent...",
        "Chargement de votre personnage...",
        "Telechargement de la MAP...",
        "Discord: https://discord.gg/dnF3Gzw",
    ],

    loadingRules:
    [
        "Les scenes de viol sont interdites.",
        "Toute mort rp doit etre approuvee par le staff.",
        "Il est interdit de faire des assaults sur les lieux publics",
        "Vous n'avez pas le droit de raquetter une personne plus d'une fois sur la meme journee",
        "Braquer une personne a un ATM est interdit",
    ],
 
    /*
        Rotate the loading message every 5000 milliseconds (default value).
    */
    loadingMessageSpeed: 5 * 600 * 3,
    loadingRulesSpeed: 5 * 200 * 3,
 
    /*
        Array of music id's to play in the loadscreen.
        Enter your youtube video id's here. In order to obtain the video ID
        Take whats after the watch?v= on a youtube link.
        https://www.youtube.com/watch?v=<videoid>
        Do not include the playlist id or anything, it should be a 11 digit code.
       
        Do not use videos that:
            - Do not allow embedding.
            - Copyrighted music (youtube actively blocks this).
    */
    music:
    [
        
        //"iXp9xuNi0mU", // Lomepal - 1000°
		//"rD9MD_4K_Do", // Flatbush Zombie - Palmtrees
		//"li6dhoAENjo", // vexento dancing to the dark
		//"p3fh3HgVB6E", // vexento spark
		//"j6Wg9UwBNSE", // vexento storbe
		//"mfJhMfOPWdE", // Blah Blah Blah
		//"vr_PjpbL08w", // I Wanna Change
		//"jzHuqAN9UAg", // Crows Zero
		//"9hzcHUK4WaA", // vexento - Mango breeze
		//"f6KKzXq8nX0", // vexento - Pineapple breeze 
		//"feA64wXhbjo", // Bag raiders
		//"GJm7H9IP5SU", // Narcos
		//"I45HHUEtBTs", // Narcos 2
		//"45UUUEjNSM8", // Vexento - Rocket
        //"J_NIUoh-Ucw", // Vexento - Smile
		//"ojiGKxIKrWw", // Vexanto
		//"cOoGIy4C5eY", // Vexanto
		//"RiOBzkAO-pc", // Nightcore - So Am I
		//"jODRcFq1bfI", // Vexanto
		"AdQ3JDLlmPI", // Nightcore - Catch Fire
		//"No5jmXoEyWY", // The offsring
		//"IeXAjDLzIEM", // Hevenly - Highway
		//"1_PNZBUHBx8", // Rob Fayer - Ready To Fight
		//"JV41UkBQDhE", // Vexento- Arcade 
		//"TgD_lRnPX60", // Nirvana
		//"ifXalt3MJtM", // Red HOT
		// "UOxkGD8qRB4", //KDA 
		// "CnKuptkTz7Q", // Beresheet
		//"7Uexuyy_HL8", //Stup Antidote
		//"qYIiy03eGE0", // URF
		// "dPU3fB96Zm8", // Vexento ZeraCup
		// "Is9EDHOWoWw", // Nightcore Savage
        "uScZ8WZMjhs", // Without you Avicci
        "9YPp6XBEB-Y"
		
		
		
    ],
 
 
    /*
        Set to false if you do not want any music.
    */
    enableMusic: true,
 
    /*
        Default volume for the player. Please keep this under 50%, to not blowout someones eardrums x)
     */
    musicVolume: 10,
 
    /*
        Should the background change images?
        True: it will not change backgrounds.
        False: it will change backgrounds.
    */
    staticBackground: false,
   
    /*
        Array of images you'd like to display as the background.
        Provide a path to a local image, using images via url is not recommended.
    */
    background:
    [
        "img/paris1.jpg",
        "img/paris2.jpg",
        "img/paris3.jpg",
        "img/paris4.jpg",
		"img/paris5.jpg",
    ],
 
    /*
        Time in milliseconds on how fast the background
        should swap images.
     */
    backgroundSpeed: 10 * 1000,

    /*
        Which style of animation should the background transition be?
        zoom = background zooms in and out.
        slide = transtion backgrounds from sliding right and back again.
        fade = fade the background out and back in.
    */
    backgroundStyle: "zoom",

    /*
        Should the log be visible? Handy for debugging!
    */
    enableLog: true,
}

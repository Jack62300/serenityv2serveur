
ui_page 'html/index.html'

files {
	'html/index.html',
	'html/static/css/app.css',
	'html/static/js/app.js',
	'html/static/js/manifest.js',
	'html/static/js/vendor.js',

	'html/static/config/config.json',
	
	-- Coque
	'html/static/img/coque/bleu.png',
	'html/static/img/coque/jaune.png',
	'html/static/img/coque/noir.png',
	'html/static/img/coque/rose.png',
	'html/static/img/coque/rouge.png',
	'html/static/img/coque/vert.png',
	'html/static/img/coque/violet.png',
	
	-- Background
	'html/static/img/background/f001.jpg',
	'html/static/img/background/f002.jpg',
	'html/static/img/background/f003.jpg',
	'html/static/img/background/f004.jpg',
	'html/static/img/background/f005.jpg',
	'html/static/img/background/f006.jpg',
	
	'html/static/img/icons_app/call.png',
	'html/static/img/icons_app/contacts.png',
	'html/static/img/icons_app/sms.png',
	'html/static/img/icons_app/settings.png',
	'html/static/img/icons_app/menu.png',
	'html/static/img/icons_app/bourse.png',
	'html/static/img/icons_app/tchat.png',
	'html/static/img/icons_app/photo.png',
	'html/static/img/icons_app/9gag.png',
	'html/static/img/icons_app/twitter.png',
	'html/static/img/icons_app/bank.png',
	'html/static/img/icons_app/journaliste.png',
	'html/static/img/icons_app/brinks.png',
	'html/static/img/icons_app/state.png',
	'html/static/img/icons_app/car.png',
	'html/static/img/icons_app/avocat.png',
	'html/static/img/icons_app/ammu.png',
	'html/static/img/icons_app/bahama.png',
	'html/static/img/icons_app/unicorn.png',
	'html/static/img/icons_app/night.png',
	'html/static/img/icons_app/tabac.png',
	'html/static/img/icons_app/agentimmobilier.png',
	'html/static/img/icons_app/vigne.png',
	'html/static/img/icons_app/pecheur.png',

	
	'html/static/img/icons_app/police.png',
	'html/static/img/icons_app/ems.png',
	'html/static/img/icons_app/mecano.png',
	'html/static/img/icons_app/taxi.png',
	
	'html/static/img/app_bank/logo_mazebank.jpg',

	'html/static/img/app_tchat/splashtchat.png',

	'html/static/img/twitter/bird.png',
	'html/static/img/twitter/default_profile.png',
	'html/static/sound/Twitter_Sound_Effect.ogg',

	'html/static/img/courbure.png',
	'html/static/fonts/fontawesome-webfont.ttf',

	'html/static/sound/ring.ogg',
	'html/static/sound/tchatNotification.ogg',
	'html/static/sound/Phone_Call_Sound_Effect.ogg',

}

client_script {
	"config.lua",
	"client/animation.lua",
	"client/client.lua",

	"client/photo.lua",
	"client/app_tchat.lua",
	"client/bank.lua",
	"client/twitter.lua"
}

server_script {
	'@mysql-async/lib/MySQL.lua',
	"config.lua",
	"server/server.lua",

	"server/app_tchat.lua",
	"server/twitter.lua"
}

resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'ESX Supermarket'

version '1.0.1'

files {
	'html/ui.html',
	'html/styles.css',
	'html/scripts.js',
	'html/debounce.min.js',
	'html/iransans.otf',

	'html/img/beer.png',
	'html/img/bolchips.png',
	'html/img/icetea.png',
	'html/img/vodka.png',
	'html/img/saucisson.png',
	'html/img/jager.png',
	'html/img/whisky.png',
	'html/img/martini.png',
	'html/img/rhum.png',
	'html/img/croquettes.png',
	'html/img/bag.png',
	'html/img/cookie.png',
	'html/img/handcuff.png',
	'html/img/armor.png',
	'html/img/cutting_pliers.png',
	'html/img/kitkat.png',	
	'html/img/soda.png',	
	'html/img/fanta.png',	
	'html/img/donut.png',	
	'html/img/candy.png',	
	'html/img/bounty.png',		
	'html/img/redgull.png',	
	'html/img/oxygen_mask.png',	
	'html/img/picnic.png',	
	'html/img/close.png',
	'html/img/water.png',
	'html/img/plus.png',
	'html/img/fishbait.png',
	'html/img/fishingrod.png',
	'html/img/gps.png',
	'html/img/jumelles.png',
	'html/img/phone.png',
	'html/img/mp3.png',
	'html/img/turtlebait.png',
	'html/img/headbag.png',
	'html/img/bread.png',
	'html/img/minus.png'
}

ui_page 'html/ui.html'

client_scripts {
	'@es_extended/locale.lua',
	'locales/de.lua',
	'locales/br.lua',
	'locales/en.lua',
	'locales/fi.lua',
	'locales/fr.lua',
	'locales/es.lua',
	'locales/sv.lua',
	'locales/pl.lua',
	'locales/fa.lua',
	'config.lua',
	'client/main.lua'
}

server_scripts {
	'@es_extended/locale.lua',
	'@mysql-async/lib/MySQL.lua',
	'locales/de.lua',
	'locales/br.lua',
	'locales/en.lua',
	'locales/fi.lua',
	'locales/fr.lua',
	'locales/es.lua',
	'locales/sv.lua',
	'locales/pl.lua',
	'locales/fa.lua',
	'config.lua',
	'server/main.lua'
}

dependency 'es_extended'

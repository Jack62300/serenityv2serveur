DiscordWebhookSystemInfos = 'https://discordapp.com/api/webhooks/582663224902680627/XlWwxmSaZVTmGQ8Ngn2qk8Ke4aZzBso1kofwdLuUpYMg6j5Ff8btWG484Z0z3SrOAiRt'
DiscordWebhookKillinglogs = 'https://discordapp.com/api/webhooks/582663224902680627/XlWwxmSaZVTmGQ8Ngn2qk8Ke4aZzBso1kofwdLuUpYMg6j5Ff8btWG484Z0z3SrOAiRt'
DiscordWebhookChat = 'https://discordapp.com/api/webhooks/582663224902680627/XlWwxmSaZVTmGQ8Ngn2qk8Ke4aZzBso1kofwdLuUpYMg6j5Ff8btWG484Z0z3SrOAiRt'

SystemAvatar = 'https://wiki.fivem.net/w/images/d/db/FiveM-Wiki.png'

UserAvatar = 'https://i.imgur.com/KIcqSYs.png'

SystemName = 'SYSTEM'


--[[ Special Commands formatting
		 *YOUR_TEXT*			--> Make Text Italics in Discord
		**YOUR_TEXT**			--> Make Text Bold in Discord
	   ***YOUR_TEXT***			--> Make Text Italics & Bold in Discord
		__YOUR_TEXT__			--> Underline Text in Discord
	   __*YOUR_TEXT*__			--> Underline Text and make it Italics in Discord
	  __**YOUR_TEXT**__			--> Underline Text and make it Bold in Discord
	 __***YOUR_TEXT***__		--> Underline Text and make it Italics & Bold in Discord
		~~YOUR_TEXT~~			--> Strikethrough Text in Discord
]]
-- Use 'USERNAME_NEEDED_HERE' without the quotes if you need a Users Name in a special command
-- Use 'USERID_NEEDED_HERE' without the quotes if you need a Users ID in a special command


-- These special commands will be printed differently in discord, depending on what you set it to
SpecialCommands = {
				   {'/ooc', '**[OOC]:**'},
				  }

						
-- These blacklisted commands will not be printed in discord
BlacklistedCommands = {
					   '/register',
					   '/help',
					   '/help',
					  }

-- These Commands will use their own webhook
OwnWebhookCommands = {
					  {'', 'https://discordapp.com/api/webhooks/582663224902680627/XlWwxmSaZVTmGQ8Ngn2qk8Ke4aZzBso1kofwdLuUpYMg6j5Ff8btWG484Z0z3SrOAiRt'},
					  {'', 'https://discordapp.com/api/webhooks/582663224902680627/XlWwxmSaZVTmGQ8Ngn2qk8Ke4aZzBso1kofwdLuUpYMg6j5Ff8btWG484Z0z3SrOAiRt'},
					 }

-- These Commands will be sent as TTS messages
TTSCommands = {
			   '',
			   '',
			  }


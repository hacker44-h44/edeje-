local function reload_plugins( )
  plugins = {}
  load_plugins()
end

function run(msg, matches)
 if is_sudo(msg) then
 
  if msg.to.type == 'channel' then
 if matches[1] == "setlang" and matches[2] == "fa" then
    redis:set("sp:lang", "fa")
    file = http.request("http://www.pro.uploadpa.com/?file=1479226759244488_supergroup-fa.txt")
	security = http.request("http://www.pro.uploadpa.com/?file=1479226654244485_security-fa.txt")
    local b = 1
    while b ~= 0 do
    file = file:trim()
    file,b = file:gsub('^!+','')
	end
	while b ~= 0 do
    security = security:trim()
    security,b = security:gsub('^!+','')
	end
      filea = io.open("./plugins/supergroup.lua", "w")
      filea:write(file)
      filea:flush()
      filea:close()
	  sysa = io.open("./plugins/security.lua", "w")
      sysa:write(security)
      sysa:flush()
      sysa:close()
	  reload_plugins( )
	  return "<code>زبان ربات توسط :</code>\n|"..msg.from.id.."|\n<code>با موفقیت به فارسی با دستورات انگلیسی تغییر یافت.</code>"
elseif matches[1] == "setlang" and matches[2] == "en" then
    redis:set("sp:lang", "en")
    file = http.request("http://www.pro.uploadpa.com/?file=1479228768244495_supergroup-en.txt")
	security = http.request("http://www.pro.uploadpa.com/?file=1479228750244494_security-en.txt")
    local b = 1
    while b ~= 0 do
    file = file:trim()
    file,b = file:gsub('^!+','')
	end
	while b ~= 0 do
    security = security:trim()
    security,b = security:gsub('^!+','')
	end
      fileb = io.open("./plugins/supergroup.lua", "w")
      fileb:write(file)
      fileb:flush()
      fileb:close()
	  sysb = io.open("./plugins/security.lua", "w")
      sysb:write(security)
      sysb:flush()
      sysb:close()
	  reload_plugins( )
	  return "<code>Robot Language Has Been Changed By :</code>\n|"..msg.from.id.."|\n<code>To EN With English Commands.</code>"
elseif matches[1] == "setlang" and matches[2] == "فا" then
    redis:set("sp:lang", "فا")
    file = http.request("http://www.pro.uploadpa.com/?file=1479226864244490_supergroup-farsi.txt")
	security = http.request("http://www.pro.uploadpa.com/?file=1479226685244486_security-farsi.txt")
    local b = 1
    while b ~= 0 do
    file = file:trim()
    file,b = file:gsub('^!+','')
	end
	while b ~= 0 do
    security = security:trim()
    security,b = security:gsub('^!+','')
	end
      filec = io.open("./plugins/supergroup.lua", "w")
      filec:write(file)
      filec:flush()
      filec:close()
	  sysc = io.open("./plugins/security.lua", "w")
      sysc:write(security)
      sysc:flush()
      sysc:close()
	  reload_plugins( )
      return "<code>زیان ربات توسط :</code>\n|"..msg.from.id.."|\n<code>با موفقیت به فارسی با دستورات فارسی تغییر یافت.</code>"
end
end

if msg.to.type == 'chat' then
 if matches[1] == "setlang" and matches[2] == "fa" then
    redis:set("gp:lang", "fa")
    file = http.request("http://www.folder98.ir/1395/05/1471088420.txt")
    local b = 1
    while b ~= 0 do
    file = file:trim()
    file,b = file:gsub('^!+','')
	end
      filea = io.open("./plugins/ingroup.lua", "w")
      filea:write(file)
      filea:flush()
      filea:close()
	  reload_plugins( )
	 return "<i>زبان گپ معمولي با موفقيت  به فارسي با دستورات انگليسي تغيير کرد</i>"
 elseif matches[1] == "setlang" and matches[2] == "en" then
    redis:set("gp:lang", "en")
    file = http.request("http://www.folder98.ir/1395/07/1475331538.txt")
    local b = 1
    while b ~= 0 do
    file = file:trim()
    file,b = file:gsub('^!+','')
	end
      fileb = io.open("./plugins/ingroup.lua", "w")
      fileb:write(file)
      fileb:flush()
      fileb:close()
	  reload_plugins( )
	 return "<i>Chat language has been changed</i>"
 elseif matches[1] == "setlang" and matches[2] == "فا" then
    redis:set("gp:lang", "فا")
    file = http.request("http://www.folder98.ir/1395/05/1471124062.txt")
    local b = 1
    while b ~= 0 do
    file = file:trim()
    file,b = file:gsub('^!+','')
	end
      filec = io.open("./plugins/ingroup.lua", "w")
      filec:write(file)
      filec:flush()
      filec:close()
	  reload_plugins( )
       return "<i>زبان گپ معمولي با موفقيت به فارسي با دستورات فارسي تغيير کرد</i>"
end
 end

 if matches[1] == "update" then
  txt = "Updated!"
  send_msg(get_receiver(msg), txt, ok_cb, false)
  return reload_plugins( )
 end
 if matches[1] == "lang" and matches[2] == "list" then
 	return [[
<code>List of language :</code>
   
Ⓜ️ !setlang en
<b>Change language to En With Enhlish Commands</b>
   
Ⓜ️ !setlang fa
<code>تغییر زبان به فارسی با دستورات انگلیسی</code>
   
Ⓜ️ !setlang فا
<code>تغییر زبان به فارسی با دستورات فارسی</code>
]]
end
  elseif not is_sudo(msg) then
 return "You cant change language (just for sudo!)"
end
end
 return {
 advan = {
 "Created by: @janlou",
 "Powered by: @AdvanTm",
 "CopyRight all right reserved",
 },
 patterns = {
    "^[!#/](setlang) (fa)$",
	   "^[!#/](setlang) (en)$",
	   "^[!#/](setlang) (فا)$",
	   "^[!#/](lang) (list)$",
	   "^[!#/](update)$",
 },
 run = run
}

do

function run(msg, matches)
local reply_id = msg['id']
local text = 'خداحافظ بابا جونم😔❤️'
if matches[1] == 'bye' or 'خدافظ' or 'fln' or ' فعلا' or 'فلن' or 'بای' or 'بدرود' then
    if is_sudo(msg) then
reply_msg(reply_id, text, ok_cb, false)
end
end 
end
return {
patterns = {
"^bye$",
"^خدافظ$",
"^فعلا$",
"^fln$",
"^فلن$",
"^بای$",
"^بدرود$",
},
run = run
}

end
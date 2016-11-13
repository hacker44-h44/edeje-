do

function run(msg, matches)

if is_sudo(msg) then
  send_document(get_receiver(msg), "./data/tmp/sudo.webp", ok_cb, false)
 elseif is_owner(msg) then
  send_document(get_receiver(msg), "./data/tmp/owner.webp", ok_cb, false)
 elseif is_momod(msg) then
  send_document(get_receiver(msg), "./data/tmp/mod.webp", ok_cb, false)
 elseif not is_momod(msg) then
  send_document(get_receiver(msg), "./data/tmp/member.webp", ok_cb, false)
      end
  end

return {
patterns = {
"^[Ii]nfo$",
"^من کیم$",
"^[Mm]e$"

},
run = run
}

end
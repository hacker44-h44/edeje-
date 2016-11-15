do

local function pre_process(msg)
    
    --Checking mute
    local hash = 'mate:'..msg.to.id
    if redis:get(hash) and msg.fwd_from and not is_sudo(msg) and not is_owner(msg) and not is_momod(msg) and not is_admin1(msg)  then
            delete_msg(msg.id, ok_cb, true)
            return "done"
        end
    
        return msg
    end

  


local function run(msg, matches)
    chat_id =  msg.to.id
    
    if is_momod(msg) and matches[1] == 'lock' then
      
            
                    local hash = 'mate:'..msg.to.id
                    redis:set(hash, true)
                    return "<code>#Forward Msg has been #locked</code>"
  elseif is_momod(msg) and matches[1] == 'unlock' then
                    local hash = 'mate:'..msg.to.id
                    redis:del(hash)
                    return "<code>#Forward Msg has been #unlocked</code>"
end

end

return {
    patterns = {
        '^(lock) fwd$',
        '^(unlock) fwd$',
		"%[(document)%]",
	    "%[(photo)%]",
	    "%[(video)%]",
	    "%[(audio)%]",
	    "%[(contact)%]",
		"%[(gif)%]"
    },
    run = run,
    pre_process = pre_process
}
end

do
local function callback(extra, success, result)
vardump(success)
vardump(result)
end
local function run(msg, matches)
local user = ایدی خودتان
--مثال local user = 12345678
if matches[1] == "addsudo" then
user = 'user#id'..ایدی خودتان
--مثال user = 'user#id'..12345678
end
if is_momod(msg) then
if msg.to.type == 'chat' then
local chat = 'chat#id'..msg.to.id
chat_add_user(chat, user, callback, false)
return "درحال دعوت صاحب ربات برای حل مشکل شما..."
end
elseif not is_owner(msg) then
return 'شما دسترسی برای دعوت صاحب ربات را ندارید'
end
end
return {
description = "insudo",
usage = {
"!invite name [user_name]",
"!invite id [user_id]" },
patterns = {
"^[!/](addsudo)$"
},
run = run
}
end

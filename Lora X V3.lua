--[[Lora X V3. Made by D34TH_3V1L]]--
--[[

 ▄▄▄           ▄▄▄▄▄▄▄       ▄▄▄▄▄▄         ▄▄▄▄▄▄          ▄▄   ▄▄       ▄▄   ▄▄ ▄▄▄▄▄▄▄ 
█   █         █       █     █   ▄  █       █      █        █  █▄█  █     █  █ █  █       █
█   █         █   ▄   █     █  █ █ █       █  ▄   █        █       █     █  █▄█  █▄▄▄    █
█   █         █  █ █  █     █   █▄▄█▄      █ █▄█  █        █       █     █       █▄▄▄█   █
█   █▄▄▄      █  █▄█  █     █    ▄▄  █     █      █         █     █      █       █▄▄▄    █
█       █     █       █     █   █  █ █     █  ▄   █        █   ▄   █      █     █ ▄▄▄█   █
█▄▄▄▄▄▄▄█     █▄▄▄▄▄▄▄█     █▄▄▄█  █▄█     █▄█ █▄▄█        █▄▄█ █▄▄█       █▄▄▄█ █▄▄▄▄▄▄▄█


Create your own version of Lora X easily with this library:
Lora X Library: https://raw.githubusercontent.com/D34THEV1L/DaHoodScripts/main/Lora%20X%20Library.lua

]]--




enabled=true;spyOnMyself=true;public=false;publicItalics=true;privateProperties={Color=Color3.fromRGB(0,255,255),Font=Enum.Font.SourceSansBold,TextSize=18}local a=game:GetService("StarterGui")local b=game:GetService("Players")local c=b.LocalPlayer or b:GetPropertyChangedSignal("LocalPlayer"):Wait()or b.LocalPlayer;local d=game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")local e=game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering")local f=(_G.chatSpyInstance or 0)+1;_G.chatSpyInstance=f;local function g(h,i)if _G.chatSpyInstance==f then if h==c and i:lower():sub(1,4)=="/spy"then enabled=not enabled;wait(0.3)privateProperties.Text="{SPY "..(enabled and"EN"or"DIS").."ABLED}"a:SetCore("ChatMakeSystemMessage",privateProperties)elseif enabled and(spyOnMyself==true or h~=c)then i=i:gsub("[\n\r]",''):gsub("\t",' '):gsub("[ ]+",' ')local j=true;local k=e.OnClientEvent:Connect(function(l,m)if l.SpeakerUserId==h.UserId and l.Message==i:sub(#i-#l.Message+1)and(m=="All"or m=="Team"and public==false and b[l.FromSpeaker].Team==c.Team)then j=false end end)wait(1)k:Disconnect()if j and enabled then if public then d:FireServer((publicItalics and"/me "or'').."{SPY} ["..h.Name.."]: "..i,"All")else privateProperties.Text="{SPY} ["..h.Name.."]: "..i;a:SetCore("ChatMakeSystemMessage",privateProperties)end end end end end;for n,h in ipairs(b:GetPlayers())do h.Chatted:Connect(function(i)g(h,i)end)end;b.PlayerAdded:Connect(function(h)h.Chatted:Connect(function(i)g(h,i)end)end)privateProperties.Text="{SPY "..(enabled and"EN"or"DIS").."ABLED}"a:SetCore("ChatMakeSystemMessage",privateProperties)if not c.PlayerGui:FindFirstChild("Chat")then wait(3)end;local o=c.PlayerGui.Chat.Frame;o.ChatChannelParentFrame.Visible=true;o.ChatBarParentFrame.Position=o.ChatChannelParentFrame.Position+UDim2.new(UDim.new(),o.ChatChannelParentFrame.Size.Y)



--[[ ZZZ_Obfuscate Ver[ C.1.3.2 ] Obfuscator And DevelopObfuscator By GartolSJ#2873 ]]-- 

-- Program to download and play a touhou animation on loop.

local monitor = peripheral.wrap("right")
monitor.setTextScale(0.5)
monitor.setBackgroundColor("black")

local function getFile(name, lname)
	local r = http.get("https://raw.githubusercontent.com/eve7300/qtccv-custom/master/" .. name, nil, true)
	local f = fs.open(lname, "wb")
	f.write(r.readAll())
	f.close()
	
end

if (not fs.exists("chireiden.qtv")) then
	getFile("decode/apis/bitreader.lua", "apis/bitreader.lua")
	getFile("decode/apis/hexscreen.lua", "apis/hexscreen.lua")
	getFile("decode/apis/wave.lua", "apis/wave.lua")
	getFile("decode/videoplayer.lua", "videoplayer.lua")
	getFile("sample/chireiden.qtv", "chireiden.qtv")
	
end

for i = 1, 2 do
	shell.run("videoplayer", "chireiden")
end

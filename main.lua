luaxp = require("luaxp.luaxp")

function main() 
	io.write("LuaCalc\n")
	while true do
		local inp = io.read()
		if inp == "exit" then
			break
		else 
			if luaxp.evaluate(inp) == nil then	
				io.write("Syntax Error\n") 
			else
				io.write(luaxp.evaluate(inp),"\n")
			end
		end
	end
end

if debug.getinfo(3) == nil then
	main()
end

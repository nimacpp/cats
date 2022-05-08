 require 'httparty'
require 'colortheme'
$banner = """
\t ▄▄·  ▄▄▄· ▄▄▄▄▄.▄▄ · 
\t▐█ ▌▪▐█ ▀█ •██  ▐█ ▀. 
\t██ ▄▄▄█▀▀█  ▐█.▪▄▀▀▀█▄
\t▐███▌▐█ ▪▐▌ ▐█▌·▐█▄▪▐█
\t·▀▀▀  ▀  ▀  ▀▀▀  ▀▀▀▀""".red+"V1.0\n".green

 def http_header(url)
 	begin 
 		system("clear")
 		puts $banner 
 		    puts "[*] Show HTTP Header \n".yellow
 		re = HTTParty.get("https://api.hackertarget.com/httpheaders/?q="+url)
 		puts re.body.light_blue
 	rescue
 		puts "Back To Menu (Press Enter...) ".light_cyan
 		gets
 		system("ruby cats.rb")
 	end
 	puts "Back To Menu (Press Enter...) ".light_cyan
 	gets
 	system("ruby cats.rb")
 end


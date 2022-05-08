require 'colortheme'
require 'httparty'
require 'json'
$banner = """
\t ▄▄·  ▄▄▄· ▄▄▄▄▄.▄▄ · 
\t▐█ ▌▪▐█ ▀█ •██  ▐█ ▀. 
\t██ ▄▄▄█▀▀█  ▐█.▪▄▀▀▀█▄
\t▐███▌▐█ ▪▐▌ ▐█▌·▐█▄▪▐█
\t·▀▀▀  ▀  ▀  ▀▀▀  ▀▀▀▀""".red+"V1.0\n".green
def body(url)
	system("clear")
	puts $banner
	puts "[*] Body site \n".yellow
	if ! url.include?("http://")
		url = "http://"+url
	end
	begin
	re = HTTParty.get(url)
	if re.code == 200
		puts "[+] #{url} => 200".light_green
		print "[*] Enter eny keys ".light_cyan
		gets
		puts re.body.light_blue	
	elsif re.code == 404
		puts "[-] #{url} => 404".light_red
	else
		puts "[*] #{url} => #{re.code} ".light_yellow 
	end
	rescue 
		puts "Back To Menu (Press Enter...) ".light_cyan
 		gets
 		system("ruby cats.rb")
	end
	puts "Back To Menu (Press Enter...) ".light_cyan
 	gets
 	system("ruby cats.rb")
end
#**********************************************************************
def json(url)
	system("clear")
	puts $banner
	puts "[*] Json reader  \n".yellow
	if ! url.include?("http://")
		url = "http://"+url
	end
	begin
	re = HTTParty.get(url)
	if re.code == 200
		puts "[+] #{url} => 200".light_green
		print "[*] Enter eny keys ".light_cyan
		gets
		puts JSON.parse(re.body).light_blue	
	elsif re.code == 404
		puts "[-] #{url} => 404".light_red
	else
		puts "[*] #{url} => #{re.code} ".light_yellow 
	end
	rescue 
		puts "Back To Menu (Press Enter...) ".light_cyan
 		gets
 		system("ruby cats.rb")
	end
	puts "Back To Menu (Press Enter...) ".light_cyan
 	gets
	system("ruby cats.rb")
end


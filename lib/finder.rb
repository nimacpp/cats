require 'httparty'
require 'colortheme'
$banner = """
\t ▄▄·  ▄▄▄· ▄▄▄▄▄.▄▄ · 
\t▐█ ▌▪▐█ ▀█ •██  ▐█ ▀. 
\t██ ▄▄▄█▀▀█  ▐█.▪▄▀▀▀█▄
\t▐███▌▐█ ▪▐▌ ▐█▌·▐█▄▪▐█
\t·▀▀▀  ▀  ▀  ▀▀▀  ▀▀▀▀""".red+"V1.0\n".green
def finder(url,wordlist)
	system("clear")
	puts $banner
	puts "[*] Find pages website \n".yellow 
	p wordlist
	pages = File.readlines(wordlist)
	begin
if ! url.include?('http://')
    url = 'http://'+url
end
puts url

for i in pages   
    re = HTTParty.get(url+'/'+i.chomp)
if re.code == 200
    puts "[+] #{url}/#{i} Found ".green
else
    puts "[-] #{url}/#{i}  not Found ".red
end
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

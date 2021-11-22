require 'httparty'
require 'colorize'
$banner = """
\t ▄▄·  ▄▄▄· ▄▄▄▄▄.▄▄ · 
\t▐█ ▌▪▐█ ▀█ •██  ▐█ ▀. 
\t██ ▄▄▄█▀▀█  ▐█.▪▄▀▀▀█▄
\t▐███▌▐█ ▪▐▌ ▐█▌·▐█▄▪▐█
\t·▀▀▀  ▀  ▀  ▀▀▀  ▀▀▀▀""".red+"V1.0\n".green
def robots(url)
	system("clear")
	puts $banner
	puts "[*] Robots Scanner  \n".yellow
search = ['robots.txt','search/','admin/','login/','sitemap.xml',
'sitemap2.xml','config.php','wp-login.php','log.txt','update.php','INSTALL.pgsql.txt','user/login/','INSTALL.txt','profiles/','scripts/',
'LICENSE.txt','CHANGELOG.txt','themes/','inculdes/','misc/','user/logout/','user/register/','cron.php','filter/tips/','comment/reply/',
'xmlrpc.php','modules/','install.php','MAINTAINERS.txt','user/password/','node/add/','INSTALL.sqlite.txt','UPGRADE.txt','INSTALL.mysql.txt']
begin

if ! url.include?('http://')
    url = 'http://'+url
end
for i in search   
    re = HTTParty.get(url+'/'+i)
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

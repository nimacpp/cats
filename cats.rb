require 'colorize'
require 'httparty'
require_relative 'lib/httpheader'
require_relative 'lib/robots'
require_relative 'lib/body'
require_relative 'lib/finder'
system('clear')
banner = """
\t ▄▄·  ▄▄▄· ▄▄▄▄▄.▄▄ · 
\t▐█ ▌▪▐█ ▀█ •██  ▐█ ▀. 
\t██ ▄▄▄█▀▀█  ▐█.▪▄▀▀▀█▄
\t▐███▌▐█ ▪▐▌ ▐█▌·▐█▄▪▐█
\t·▀▀▀  ▀  ▀  ▀▀▀  ▀▀▀▀""".red+"V1.0\n".green
puts banner
puts "  [#] Choose one of the options below \n".yellow
puts "  [".light_blue+"1".green+"]".light_blue+" Information Gathering \n".light_green
puts "  [".light_blue+"2".green+"]".light_blue+" Developer :) \n".light_yellow
puts "  [".light_blue+"3".green+"]".light_blue+" Exit ... \n".light_red
print "#{`whoami`.chomp}~".light_cyan+"$ "
cats = gets.chomp
case cats 
when "1"
    system("clear")
    puts banner
puts "  [#] Choose one of the options below \n".light_green
puts "  [".light_blue+"1".green+"]".light_blue+" Find pages website \n".light_blue
puts "  [".light_blue+"2".green+"]".light_blue+" Show HTTP Header \n".light_blue
puts "  [".light_blue+"3".green+"]".light_blue+" Body site \n".light_blue
puts "  [".light_blue+"4".green+"]".light_blue+" Json reader \n".light_blue
puts "  [".light_blue+"5".green+"]".light_blue+" Robots Scanner \n".light_blue
puts "  [".light_blue+"6".green+"]"" Exit  \n".light_blue
print "~".green+"$ "
input = gets.chomp
case input 
when "1"
    system("clear")
    puts banner
    puts "[*] Find pages website \n".yellow
    puts "  [#] Enter Domin/Url \n".light_green
    print print "~".green+"$ "
    url = gets.chomp
    finder(url)
when "2"
    system("clear")
    puts banner
    puts "[*] Show HTTP Header \n".yellow
    puts "  [#] Enter Domin/Url ".light_green
   print "~".green+"$ "
    url = gets.chomp
    http_header(url)
when "3"
    system("clear")
    puts banner
    puts "[*] Body site \n".yellow
    puts "  [#] Enter Domin/Url ".light_green
    print "~".green+"$ "
    url = gets.chomp
    body(url)
when "4"
    system("clear")
    puts banner
    puts "[*] Json reader  \n".yellow
    puts "  [#] Enter Domin/Url ".light_green
    print "~".green+"$ "
    url = gets.chomp
    json(url)
when "5"
    system("clear")
    puts banner
    puts "[*] Robots Scanner  \n".yellow
    puts "  [#] Enter Domin/Url ".light_green
    print "~".green+"$ "
    url = gets.chomp
    robots(url)
when "6"
    puts "Back To Menu (Press Enter...) ".light_cyan
    gets
    system("ruby cats.rb")
    end
when "2"
    system("clear")
    puts banner
    puts "[*]  Develper : Mr Nima :)\n ".light_cyan 
    puts "[*]  Channel : @niox_Team :)\n ".light_yellow
    puts "[*]  instagram : Team_niox :]\n ".light_green
    puts "Back To Menu (Press Enter...) ".light_cyan
    gets
    system("ruby cats.rb")
when "3"
    puts "Back To Menu (Press Enter...) ".light_cyan
    gets
    exit()
end



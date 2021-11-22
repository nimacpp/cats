require 'httparty'

inp = "pythons.ir"
re = HTTParty.get('https://api.hackertarget.com/findshareddns/?q=iransell.ir')
puts re.body

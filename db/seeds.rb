# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

dalton = Person.create(first_name: "Dalton", last_name: "McGuinty")
tim    = Person.create(first_name: "Tim",    last_name: "Hudak")

s = Story.new
s.title   = "Liberals ready to cut Ont. hydro rates"
s.url     = "http://www.cbc.ca/canada/toronto/story/2010/11/17/ontario-hydro.html"
s.content = "<CONTENT>"
s.save

so = Source.new
so.name = 'CBC News'
so.url  = 'http://www.cbc.ca/news' 
so.save


lib = Organization.new
lib.name = 'Liberal Party of Ontario'
lib.url  = 'http://www.ontarioliberal.ca/'
lib.save

con = Organization.new
con.name = 'Progressive Conservative Party of Ontario'
con.url = 'http://www.ontariopc.com/'
con.save

r = Role.new
r.title = 'leader'
r.save

l_mem = Membership.new
l_mem.person = dalton
l_mem.role = r
l_mem.organization = lib
l_mem.save

l_mem = Membership.new
l_mem.person = tim
l_mem.role = r
l_mem.organization = con
l_mem.save


s.people += [tim,dalton]
s.source = so
s.save


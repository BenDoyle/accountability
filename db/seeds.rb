dalton = Person.create(first_name: "Dalton", last_name: "McGuinty")
tim    = Person.create(first_name: "Tim",    last_name: "Hudak")

lib = Organization.new
lib.name = 'Liberal Party of Ontario'
lib.url  = 'http://www.ontarioliberal.ca/'
lib.save

con = Organization.new
con.name = 'Progressive Conservative Party of Ontario'
con.url = 'http://www.ontariopc.com/'
con.save

leader = Role.new
leader.title = 'leader'
leader.save

os = Region.new
os.name = 'Ottawa South'
os.url = 'http://en.wikipedia.org/wiki/Ottawa_South_%28provincial_electoral_district%29'
os.date_created = '1926-12-01'
os.date_destroyed = nil
os.save

nw = Region.new
nw.name = 'Niagara West--Glanbrook'
nw.url = 'http://en.wikipedia.org/wiki/Niagara_West%E2%80%94Glanbrook_%28provincial_electoral_district%29'
nw.date_created = '2007-10-10'
nw.date_destroyed = nil
nw.save

so = Source.new
so.name = 'CBC News'
so.url  = 'http://www.cbc.ca/news' 
so.save

s = Story.new
s.title   = "Liberals ready to cut Ont. hydro rates"
s.url     = "http://www.cbc.ca/canada/toronto/story/2010/11/17/ontario-hydro.html"
s.content = "<CONTENT>"
s.source = so
s.people += [tim,dalton]
s.save

c_dal = Contest.new
c_dal.contest_date = '2007-10-10'
c_dal.votes = 32_851
c_dal.person = dalton
c_dal.region = os
c_dal.save

c_tim = Contest.new
c_tim.contest_date = '2007-10-10'
c_tim.votes = 24_463
c_tim.person = tim
c_tim.region = nw
c_tim.save

l_mem = Membership.new
l_mem.person = dalton
l_mem.role = leader
l_mem.organization = lib
l_mem.save

l_mem = Membership.new
l_mem.person = tim
l_mem.role = leader
l_mem.organization = con
l_mem.save


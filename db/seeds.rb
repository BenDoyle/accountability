dalton  = Person.create(first_name: "Dalton", last_name: "McGuinty")
tim     = Person.create(first_name: "Tim",    last_name: "Hudak")
richard = Person.create(first_name: "Richard", last_name: "Raymond")

lib = Party.new
lib.name = 'Liberal Party of Ontario'
lib.url  = 'http://www.ontarioliberal.ca/'
lib.save

con = Party.new
con.name = 'Progressive Conservative Party of Ontario'
con.url = 'http://www.ontariopc.com/'
con.save

leader = Role.new
leader.title = 'leader'
leader.save

member = Role.new
member.title = 'member'
member.save

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

os_1 = Contest.new
os_1.date = '2007-10-10'
os_1.region = os
os_1.save

nw_1 = Contest.new
nw_1.date = '2007-10-10'
nw_1.region = nw
nw_1.save

p1 = Poll.new
p1.contest = os_1
p1.person = dalton
p1.votes  = 23_851
p1.save

p2 = Poll.new
p2.contest = os_1
p2.person = richard
p2.votes  = 14_151
p2.save

p3 = Poll.new
p3.contest = nw_1
p3.person = tim
p3.votes  = 24_463
p3.save

l_mem = PartyMembership.new
l_mem.person = dalton
l_mem.role = leader
l_mem.party = lib
l_mem.start_date = '1990-09-06'
l_mem.end_date = nil
l_mem.save

c_mem = PartyMembership.new
c_mem.person = tim
c_mem.role = leader
c_mem.party = con
l_mem.start_date = '1995-04-28'
l_mem.end_date = nil
c_mem.save

c_mem2 = PartyMembership.new
c_mem2.person = richard
c_mem2.role = member
c_mem2.party = con
l_mem.start_date = nil
l_mem.end_date = nil
c_mem2.save

require 'mechanize'

a = Mechanize.new { |agent| agent.user_agent_alias = 'Mac Safari' }

legislative_assembly = 'http://www.ontla.on.ca/web/members/member_addresses.do?locale=en'

response = a.get(legislative_assembly)

doc = response.root.parse(response.body)

body      = pr.children[11]
candidate = body.children[3].children[3].children[3]
name      = candidate.children[1].children[1].children[0].text
riding    = candidate.children[1].children[1].children[1].text
email     = candidate.children[3].children[1].children[0].text

def get_text(node)
  if node.class == Nokogiri::XML::Text
    node.text
  else
    node.children.map{|n|get_text(n)}.join(" ")
  end
end

candidates = pr.children[11].children[3].children[3].children.map{|e| get_text(e).gsub("\n"," ").gsub(/[ ]+/,' ').gsub('--',' ').gsub('Hon',' ').strip }

candidates.delete("")
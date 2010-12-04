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
    return node.text
  else
    return node.children.map{|n|get_text(n)}.join("")
  end
end

300.times{|e| puts get_text(pr.children[11].children[3].children[3].children[e]).gsub!("\n"," ").gsub!(/[ ]+/,' ') }
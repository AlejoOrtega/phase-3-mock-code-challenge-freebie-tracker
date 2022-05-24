puts "Creating companies..."
google=Company.create(name: "Google", founding_year: 1998)
fb=Company.create(name: "Facebook", founding_year: 2004)
dm=Company.create(name: "Dunder Mifflin", founding_year: 2002)
e=Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
rick=Dev.create(name: "Rick")
morty=Dev.create(name: "Morty")
mr=Dev.create(name: "Mr. Meseeks")
gaz=Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
Freebie.create(item_name: "pencil", value: 100, dev_id:rick.id, company_id:google.id)

puts "Seeding done!"

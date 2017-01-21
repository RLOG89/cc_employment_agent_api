# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Employer.destroy_all

cc_user = User.create({
  user_name: "Administrator",
  email: "a@c.com",
  password: "adminpass",
  password_confirmation: "adminpass"
  })
student_user = User.create({
  user_name: "Student",
  email: "s@gmail.com",
  password: "studentpass",
  password_confirmation: "studentpass"
})

freeagent = Employer.create({
  company_name: "FreeAgent",
  company_website: "http://www.freeagent.com",
  contact_details: "David Jones, 077044999333",
  company_logo_url: "https://www.freeagent.com/components/images/company/branding/freeagent-logo-7c2816e6.png",
  business_type: "product",
  address: "One Edinburgh Quay, 133 Fountainbridge, Edinburgh, EH3 9QG",
  no_previous_students_hired: 2,
  notes: "moving office next week"
})
fanduel = Employer.create({
  company_name: "FanDuel",
  company_website: "www.fanduel.com",
  contact_details: "Robin Spira, 0770111445",
  company_logo_url: "https://s3-us-west-1.amazonaws.com/dfc-production/uploads/26/db3127aa455ad0d901a709c02701e8b5.jpeg",
  business_type: "product",
  address: "Quartermile, 1 Laurieston Place",
  no_previous_students_hired: 0,
  notes: "Let them know about next speed networking event"
})
bemo = Employer.create({
  company_name: "Bemo",
  company_website: "http://bemo.co/",
  contact_details: "Derek Young, 07704455533",
  company_logo_url: "https://static1.squarespace.com/static/55439320e4b0f92b5d6c4c8b/t/583449111b631beda5883280/1479821621987/?format=500w",
  business_type: "mobile consultant",
  address: "CODEBASE, ARGYLE HOUSE, 38 CASTLE TERRACE, EDINBURGH, EH3 9DS",
  no_previous_students_hired: 1,
  notes: "Looking to hire from CodeClan soon"
})
rbs = Employer.create({
  company_name: "RBS",
  company_website: "http://www.rbs.com/",
  contact_details: "David Jones, 077044999333",
  company_logo_url: "https://cdn.evbuc.com/eventlogos/180898321/royalbankofscotlandlogo.jpg",
  business_type: "corporate",
  address: "One Edinburgh Quay, 133 Fountainbridge, Edinburgh, EH3 9QG",
  no_previous_students_hired: 0,
  notes: "Keen to hire from CodeClan"
})
adobe = Employer.create({
  company_name: "Adobe",
  company_website: "http://www.adobe.com/uk/",
  contact_details: "Robin Spira, 0770111445",
  company_logo_url: "http://mobileadvertisingwatch.com/wp-content/uploads/2015/08/The-New-Code-is-No-Code-Adobe-Digital-Publishing-Solution-Delivers-Content-to-Mobile-Apps.jpg",
  business_type: "multinational",
  address: "Quartermile, 1 Laurieston Place",
  no_previous_students_hired: 6,
  notes: "Let them know about next speed networking event"
})
beezer = Employer.create({
  company_name: "Beezer",
  company_website: "https://www.beezer.com/",
  contact_details: "Derek Young, 07704455533",
  company_logo_url: "https://www.weareninetwenty.com/userfiles/NineTwentyMain/WebContent/beezer_logo_FIN2-01.png",
  business_type: "product",
  address: "CODEBASE, ARGYLE HOUSE, 38 CASTLE TERRACE, EDINBURGH, EH3 9DS",
  no_previous_students_hired: 1,
  notes: "Looking to hire from CodeClan soon"
})
quirkos = Employer.create({
  company_name: "Quirkos",
  company_website: "http://www.quirkos.com/",
  contact_details: "Dr Daniel Turner, 01315553736",
  company_logo_url: "https://images.g2crowd.com/uploads/product/image/1473787139/quirkos.png",
  business_type: "product",
  address: "27 Ocean Drive, Leith, Edinburgh, EH6 6JL",
  no_previous_students_hired: 1,
  notes: "Looking to hire again soon"
  })
tesco_bank = Employer.create({
  company_name: "Tesco Bank",
  company_website: "http://www.tescobank.com/",
  contact_details: "T Banker, 07758657890",
  company_logo_url: "http://logonoid.com/images/tesco-bank-logo.png",
  business_type: "product",
  address: "Interpoint, 22 Haymarket Yards, Edinburgh EH12 5BH",
  no_previous_students_hired: 2,
  notes: "Not currently looking"
  })
gecko_labs = Employer.create({
  company_name: "Gecko Labs",
  company_website: "http://www.geckolabs.co.uk/",
  contact_details: "Mr Ima Gecko, 07776612890",
  company_logo_url: "http://www.geckolabs.co.uk/wp-content/uploads/2015/10/Gecko_Labs_logo.png",
  business_type: "data analysis",
  address: "IBupa House, 116 Dundas Street, Edinburgh EH3 5DQ",
  no_previous_students_hired: 1,
  notes: "Always on the lookout for talent"
  })
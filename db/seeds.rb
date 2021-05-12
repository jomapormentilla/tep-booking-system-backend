# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def start
    create_hosts
    create_init_customer
    generate_nav_items
    generate_room_data
end

def create_hosts
    hosts = [
        {
            first_name: "Joma",
            last_name: "Pormentilla",
            email: "jomapormentilla@gmail.com",
            password: ENV["HOST_PASSWORD"],
            phone: "2018938739",
            city: "Jersey City",
            state: "New Jersey",
            zip: "07302",
            account_type: 1
        },
        {
            first_name: "Amanda",
            last_name: "Fraass",
            email: "amandafraass@yahoo.com",
            password: ENV["HOST_PASSWORD"],
            phone: "7326092887",
            city: "Parlin",
            state: "New Jersey",
            zip: "08859",
            account_type: 1
        }
    ]

    hosts.each do |host|
        User.create(host)
    end
end

def create_init_customer
    data = {
        first_name: "Escape",
        last_name: "Administrator",
        email: "theescapeplanllc@gmail.com",
        password: ENV["HOST_PASSWORD"],
        phone: "8482096545",
        city: "Edison",
        state: "New Jersey",
        zip: "08817"
    }

    User.create(data)
end

def generate_nav_items
    data = [
        {
        name: "The Escape Plan",
        url: "/",
        active: false
      },
      {
        name: "Abigail's Playroom",
        url: "/abigails-playroom",
        active: false
      },
      {
        name: "The Estate",
        url: "/the-estate",
        active: false
      },
      {
        name: "FAQs",
        url: "/faqs",
        active: false
      },
      {
        name: "Login",
        url: "/login",
        active: false
      }
    ]

    data.each do |d|
        NavItem.create(d)
    end
end

def generate_room_data
    data = [
        {
            name: "Abigail's Playroom",
            url: "/abigails-playroom",
            image_url: "/images/abigailsBanner.jpeg",
            introduction: "A tragedy has occurred in the Pierson household involving little Abigail, and all those closest to her are being questioned by the court. Filled with grief, shock, and a desire for truth, the family's loyal butler now requests your immediate assistance to unravel the facts behind this puzzle-packed mystery. The police are at a dead end because their primary investigator has gone missing while in pursuit of evidence inside Abigail's Playroom.",
            mission: "As the butler’s secret investigators, it is up to you to discover the truth and bring justice to this case. All primary suspects are about to be questioned, and you have one hour to search Abigail's Playroom for evidence before the court's decision is finalized. Beware, however, as the playroom is designed to be Mr. Pierson's \"greatest puzzle\" ever, in which case... you must have what it takes to escape the room.",
        },
        {
            name: "The Estate",
            url: "/the-estate",
            image_url: "/images/EstatePainting_Banner.png",
            introduction: "Richard Prasad is determined to become the greatest ‘Master of Puzzles’, and he will do anything in his power to claim this title. Recently, it has come to light that Mr. Prasad has stolen a particular set of blueprints containing the Greatest Puzzle Ever, and he has hidden it in a secret and highly guarded area of his Estate. The Black Knight Organization, the original creators of the blueprints, aim to retrieve the masterful puzzle designs from The Estate without alarming Richard. They are able to provide a 60-minute window in which a group of highly skilled agents will infultrate and obtain the documents safely and securely. Will you rise up to the challenge as undercover agents to help set things right?",
            mission: "You have 60 minutes to search Richard’s mansion in order to find the stolen blueprints and rightfully return them to the Black King, the leader of the Black Knight Organization. This very important task requires incredible teamwork, observational skills, and the ability to think quickly on your toes. Although it may look like an ordinary mansion, Richard's Estate is far from ordinary. It is the home of an extremely passionate puzzle maker, so don't be surpsised if things are not what they seem to be. Remember, this is a stealth mission, so you must not get caught, otherwise the conequences may be dire, in which case... you must have what it takes to escape the room.",
        }
    ]

    data.each do |d|
        RoomDatum.create(d)
    end
end

start
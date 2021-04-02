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
            zip: "07302"
        },
        {
            first_name: "Amanda",
            last_name: "Fraass",
            email: "amandafraass@yahoo.com",
            password: ENV["HOST_PASSWORD"],
            phone: "7326092887",
            city: "Parlin",
            state: "New Jersey",
            zip: "08859"
        }
    ]

    hosts.each do |host|
        Host.create(host)
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

    Customer.create(data)
end

start
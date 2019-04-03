# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

WorkplaceAccount.create(
    manager_id: 4,
    company_name: 'Spaceley Sprockets',
    company_address: '100 Milky Way Way',
    company_city: 'Ionosphere',
    ctct_email_list: 'Spaceley Sprockets',
    scheduling_contact_name: 'Mr. Spacely',
    scheduling_contact_email: 'mrspacely@sprockets.com',
    scheduling_contact_phone: '555-1000',
    delivery_day: 'Tuesday',
    delivery_start_time: Time.local(2019, 4, 3, 11, 15),
    delivery_end_time: Time.local(2019, 4, 3, 11, 35),
    special_instructions: 'The key is under the mat'
)

WorkplaceAccount.create(
    manager_id: 6,
    company_name: "Slate Rock and Gravel",
    company_address: '123 Rocky Road',
    company_city: "Bedrock",
    ctct_email_list: "Slate Co",
    scheduling_contact_name: 'Mr. Slate',
    scheduling_contact_email: 'MrSlate@SlateCo.com',
    scheduling_contact_phone: '555-1000',
    delivery_day: 'Thursday',
    delivery_start_time: Time.local(2019, 4, 3, 10, 10),
    delivery_end_time: Time.local(2019, 4, 3, 10, 20),
    special_instructions: 'Set up in the store room'
)

Market.create([{ name: 'Albany' }, { name: 'Boston' }])

DATA_managers = {
    :manager_keys =>
        ["name", "email", "username", "password"],
    :boston_managers => [
        ['Sarah', 'sarah@9mileseast.com', 'sarah', 'password'],
        ['Eliza', 'eliza@9mileseast.com', 'eliza', 'password'],
        ['Gordon', 'gordon@9mileseast.com', 'gordon', 'password'],
        ['Ana', 'ana@gmail.com', 'ana', 'password'],
        ['Amanda', 'amanda@gmail.com', 'amanda', 'password'],
        ['Lisa', 'lbzmag@comcast.net', 'lisa', 'password'],
        ['Devon', 'devon@comcast.net', 'devon', 'password'],

    ],
    :albany_managers => [
        ['Tyler', 'tyler@9mileseast.com', 'tyler', 'password']
    ]
}

def make_managers
    DATA_managers[:albany_managers].each do |manager|
        make_manager(manager, 'Albany')
    end
    DATA_managers[:boston_managers].each do |manager|
        make_manager(manager, 'Boston')
    end
end

def make_manager(manager, market_name)
    new_manager = Manager.new
    new_manager.market = Market.find_by(name: market_name)
    manager.each_with_index do |attribute, i|
        new_manager.send(DATA_managers[:manager_keys][i]+"=", attribute)
    end
    new_manager.save
end

make_managers

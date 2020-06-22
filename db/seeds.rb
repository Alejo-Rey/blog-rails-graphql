20.times do 
    user = User.create(
        name: Faker::Name.name,
        email: Faker::Internet.email
    )
    3.times do
        user.books.create(
            title: Faker::Book.title
            )
    end
end
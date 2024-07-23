require "ffaker"

Ebook.destroy_all
User.destroy_all

5.times do
  Ebook.create!(
    title: FFaker::Book.title,
    author: FFaker::Book.author,
    genre: FFaker::Book.genre,
    isbn: FFaker::Book.isbn,
    description: FFaker::Lorem.paragraph,
    price: rand(99.9..999.9).round(1)
  )
end

email = "user@mail.com"
password = "000000"
User.create(email: email, password: password, password_confirmation: password)


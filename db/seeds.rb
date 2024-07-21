require "ffaker"

10.times do
  Ebook.create!(
    title: FFaker::Book.title,
    author: FFaker::Book.author,
    isbn: FFaker::Book.isbn,
    description: FFaker::Lorem.paragraph,
    price: rand(99.9..999.9).round(1)
  )
end
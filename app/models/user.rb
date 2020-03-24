class User < ActiveRecord::Base
    has_many :userbooks

    def checkout_book(book, return_by)
        Userbook.create(book: book, user: self, due_date: return_by, returned?: false)
    end

    def return_book(book)
        Userbook.find_by(user: self, book: book).update(returned?: true)
    end
end
class CreateUserbooks < ActiveRecord::Migration[5.2]
    def change
        create_table :userbooks do |t|
            t.integer :book_id
            t.integer :user_id
            t.datetime :due_date
            t.boolean :returned?
        end
    end
end
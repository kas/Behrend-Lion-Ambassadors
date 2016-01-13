class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :name
      t.string :email
      t.string :subject
      t.string :body

      t.timestamps null: false
    end
  end
end

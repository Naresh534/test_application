class CreateWelcomeUsers < ActiveRecord::Migration
  def change
    create_table :welcome_users do |t|
      t.string :name
      t.string :address
      t.string :gender
      t.integer :age

      t.timestamps
    end
  end
end

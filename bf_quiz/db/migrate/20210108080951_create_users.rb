class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.text :email
      t.string :password_digest
      t.text :username

      t.timestamps
    end
  end
end

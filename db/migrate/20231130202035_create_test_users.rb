class CreateTestUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :test_users do |t|
      t.string :email
      t.string :name
      t.string :desc

      t.timestamps
    end
  end
end

class CreateJobs < ActiveRecord::Migration[7.1]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :desc
      t.string :status
      t.integer :attempt
      t.string :err

      t.timestamps
    end
  end
end

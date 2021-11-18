class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
    t.string :first_name
    t.string :last_name
    t.string :specialty
    end
  end
end

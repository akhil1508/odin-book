class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
# So first I created a table called users with name attribute, first and last. K? K? k

# Moving on to the next migration file
# In order of creation. Capiche?YEsType inside comments.K
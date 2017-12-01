class AddActiveAndCohortToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :active, :boolean
    add_column :users, :cohort, :integer
  end
end


# SELECT  "users".*
# FROM "users" WHERE "users"."active" = ; DROP TABLE students; --

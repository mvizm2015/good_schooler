class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.belongs_to :user, foreign_key: true
      t.string :source
      t.string :url

      t.timestamps
    end
  end
end

#paste this on SQL
# SELECT  "projects".* FROM "projects"
# INNER JOIN "users" ON "projects"."user_id" = "users"."id";
# WHERE "users"."code_school_id" = 1 LIMIT 11

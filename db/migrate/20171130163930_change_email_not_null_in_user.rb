class ChangeEmailNotNullInUser < ActiveRecord::Migration[5.1]
  def up
    # set a default email for all users without

    User.where(email: nil).each do |user|
      user.email = "#{user.name}@wyncode.co"
      user.save
    end

    change_column :users, :email, :string, null: false
  end

  def down
    change_column :users, :email, :string, null: true
  end
end

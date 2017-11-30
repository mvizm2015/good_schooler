class AddNameIndexToUser < ActiveRecord::Migration[5.1]
  def change
    # add_column :users, :name, :string
    add_index :users, :name
  end
end

# users = [
#   {name: "Ed", email: 'ed@wyncode.co'},
#   {name: "Jo"},
#   {name: "Juha"}
# ]
#
# # SELECT * FROM users WHERE name = 'Ed'
# # Table Scan
# result = []
# users.each do |user|
#   if user.name = 'Ed'
#     result << user
#   end
# end
#
# # index
# users_index_on_name = {
#   "Ed" => {name: "Ed", email: 'ed@wyncode.co'},
#   "Jo" => {name: "Jo"},
#   "Juha" => {name: "Juha"}
# }
#
# # SELECT * FROM users WHERE name = 'Ed'
# # search using index
# return users_index_on_name['Ed']

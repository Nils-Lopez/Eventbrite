class AddUserToEvents < ActiveRecord::Migration[5.2]
  def change
  	add_reference :events, :user, index: true
  end
end

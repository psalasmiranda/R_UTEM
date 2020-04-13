class AddUserIdToAviso < ActiveRecord::Migration[5.1]
  def change
    add_reference :avisos, :user, foreign_key: true
  end
end

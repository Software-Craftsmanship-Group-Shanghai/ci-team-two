class AddRegisterConfirmdToUser < ActiveRecord::Migration
  def change
    add_column :users, :register_confirmed, :boolean, default: false
    add_column :users, :register_token, :text
  end
end

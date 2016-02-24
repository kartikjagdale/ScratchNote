class AddUserIdToScratches < ActiveRecord::Migration
  def change
    add_column :scratches, :user_id, :integer
  end
end

class CreateActiveAdminComments < ActiveRecord::Migration[7.0]


  def self.down
    drop_table :active_admin_comments
  end
end

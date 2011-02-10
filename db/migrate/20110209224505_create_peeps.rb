class CreatePeeps < ActiveRecord::Migration
  def self.up
    create_table :peeps do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :peeps
  end
end

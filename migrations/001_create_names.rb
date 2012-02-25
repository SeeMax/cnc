class CreateNames < ActiveRecord::Migration
  def self.up
    create_table :name do |t|
      t.string :name
    end
  end
end

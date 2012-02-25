class CreateNames < ActiveRecord::Migration
  def self.up
    create_table :names do |t|
      t.string :name
    end
  end
end

class CreateImpressions < ActiveRecord::Migration
  def change
    create_table :impressions do |t|
      t.string :impressionable_type
      t.integer :impressionable_id
      t.string :ip_address

      t.timestamps null: false
    end
  end
end

class CreatePlatforms < ActiveRecord::Migration[5.2]
  def change
    create_table :platforms do |t|
      t.string :name
      t.belongs_to :host_system
      t.belongs_to :operating_system

      t.timestamps
    end
  end
end

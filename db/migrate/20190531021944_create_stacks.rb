class CreateStacks < ActiveRecord::Migration[5.2]
  def change
    create_table :stacks do |t|
      t.string :name
      t.belongs_to :application
      t.belongs_to :capability
      t.integer :paper

      t.timestamps
    end
  end
end

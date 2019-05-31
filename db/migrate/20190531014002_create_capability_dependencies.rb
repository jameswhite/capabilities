class CreateCapabilityDependencies < ActiveRecord::Migration[5.2]
  def change
    create_table :capability_dependencies do |t|
      t.column :parent_id, :bigint
      t.column :required_id, :bigint
    end
  end
end

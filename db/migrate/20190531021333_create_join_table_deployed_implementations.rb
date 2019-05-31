class CreateJoinTableDeployedImplementations < ActiveRecord::Migration[5.2]
  def change
    create_join_table :platforms, :implementations do |t|
      # t.index [:platform_id, :implementation_id]
      # t.index [:implementation_id, :platform_id]
    end
  end
end

class CreateImplementations < ActiveRecord::Migration[5.2]
  def change
    create_table :implementations do |t|
      t.string :name
      t.belongs_to :language
      t.belongs_to :capability  # note, this may well not be a `belongs_to` relationship

      t.timestamps
    end
  end
end

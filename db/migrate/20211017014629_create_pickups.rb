class CreatePickups < ActiveRecord::Migration[6.0]
  def change
    create_table :pickups do |t|
      t.references :director, null: false, foreign_key: true
      t.date :submission
      t.string :location
      t.string :product
      t.string :status
      t.string :employee

      t.timestamps
    end
  end
end

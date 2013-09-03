class CreateSuplementos < ActiveRecord::Migration
  def change
    create_table :suplementos do |t|
      t.string :nome
      t.string :marca
      t.string :link

      t.timestamps
    end
  end
end

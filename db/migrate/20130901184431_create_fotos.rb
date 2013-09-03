class CreateFotos < ActiveRecord::Migration
  def change
    create_table :fotos do |t|
      t.date :data
      t.text :descricao

      t.timestamps
    end
  end
end

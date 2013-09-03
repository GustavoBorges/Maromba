class CreateMedidas < ActiveRecord::Migration
  def change
    create_table :medidas do |t|
      t.decimal :ombro
      t.decimal :torax
      t.decimal :braco_esquerdo
      t.decimal :braco_direito
      t.decimal :panturrilha_esquerda
      t.decimal :panturrilha_direita
      t.decimal :abdomem
      t.decimal :cintura
      t.decimal :quadril
      t.decimal :coxa_esquerda
      t.decimal :coxa_direita

      t.timestamps
    end
  end
end

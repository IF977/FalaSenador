class CreateSenators < ActiveRecord::Migration[5.1]
  def change
    create_table :senators do |t|
      t.string :codigoparlamentar
      t.string :nome
      t.string :urlfoto
      t.string :urlpagina
      t.string :siglapartido
      t.string :uf

      t.timestamps
    end
  end
end

class CreateSpeeches < ActiveRecord::Migration[5.1]
  def change
    create_table :speeches do |t|
      t.string :CodigoParlamentar
      t.string :CodigoPronunciamento
      t.string :Data
      t.string :UrlTexto
      t.text :TextoCompleto
      t.references :senator, foreign_key: true

      t.timestamps
    end
  end
end

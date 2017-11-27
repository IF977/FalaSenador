class CreateSenators < ActiveRecord::Migration[5.1]
  def change
    create_table :senators do |t|
      t.string :CodigoParlamentar
      t.string :Nome
      t.string :UrlFoto
      t.string :UrlPagina
      t.string :Email
      t.string :SiglaPartido
      t.string :UF

      t.timestamps
    end
  end
end

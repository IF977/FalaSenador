class CreateSpeeches < ActiveRecord::Migration[5.1]
  def change
    create_table :speeches do |t|
      t.string :codigoparlamentar
      t.string :codigopronunciamento
      t.string :data
      t.string :urltexto
      t.text :textocompleto

      t.timestamps
    end
  end
end

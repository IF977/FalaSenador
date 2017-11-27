class RemoveEmailFromSenator < ActiveRecord::Migration[5.1]
  def change
    remove_column :senators, :Email, :string
  end
end

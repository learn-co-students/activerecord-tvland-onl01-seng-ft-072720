class DeleteChatchphrase < ActiveRecord::Migration[5.1]
    def change
      remove_column :characters, :chatchphrase
    end
  end
  
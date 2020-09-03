class CorrectCatchphraseColumn < ActiveRecord::Migration[5.1]

    def change
        remove_column :characters, :catchprase
        add_column :characters, :catchphrase, :string
    end

    
end
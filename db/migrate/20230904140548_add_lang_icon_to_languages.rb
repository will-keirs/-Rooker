class AddLangIconToLanguages < ActiveRecord::Migration[7.0]
  def change
    add_column :languages, :langicon, :string
  end
end

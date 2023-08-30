class RemoveLanguageFromMission < ActiveRecord::Migration[7.0]
  def change
    remove_column :missions, :language, :enum
  end
end

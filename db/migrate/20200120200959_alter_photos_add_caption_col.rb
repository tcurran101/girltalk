class AlterPhotosAddCaptionCol < ActiveRecord::Migration[5.2]
  def change
    def change
      add_column :photos, :caption, :text
    end
  end
end

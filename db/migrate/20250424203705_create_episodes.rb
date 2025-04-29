class CreateEpisodes < ActiveRecord::Migration[8.0]
  def change
    create_table :episodes do |t|
      t.string :title
      t.text :description
      t.datetime :published_at
      t.integer :duration
      t.string :audio_url

      t.timestamps
    end
  end
end

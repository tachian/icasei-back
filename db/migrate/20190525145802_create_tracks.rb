class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.string :guid
      t.string :url
      t.datetime :created

      t.timestamps
    end
  end
end


ActiveRecord::Schema.define(version: 20181231171428) do

  create_table "songs", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.boolean  "released"
    t.integer  "release_year"
    t.string   "artist_name"
    t.string   "genre"
  end

end

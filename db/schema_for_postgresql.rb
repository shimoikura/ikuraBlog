ActiveRecord::Schema.define(version: 20161111120000) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blogs", force: :cascade do |t|
    t.string   "body",       default: "", null: false, comment: "投稿内容"
    t.integer  "like",       default: 0,  null: false, comment: "いいね"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "replies", force: :cascade do |t|
    t.integer  "blog_id",    default: 0,  null: false, comment: "ブログID"
    t.string   "comment",    default: "", null: false, comment: "コメント"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["blog_id"], name: "index_replies_on_blog_id", using: :btree
  end

end

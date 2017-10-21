# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170918083901) do

  create_table "actualites", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "titre"
    t.text     "description",        limit: 65535
    t.string   "picture"
    t.boolean  "status"
    t.integer  "user_id"
    t.integer  "categorie_actu_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.index ["categorie_actu_id"], name: "index_actualites_on_categorie_actu_id", using: :btree
    t.index ["user_id"], name: "index_actualites_on_user_id", using: :btree
  end

  create_table "annonces", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "titre"
    t.string   "description"
    t.date     "date_debut"
    t.date     "date_fin"
    t.boolean  "status"
    t.integer  "user_id"
    t.integer  "categorie_annonce_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.index ["categorie_annonce_id"], name: "index_annonces_on_categorie_annonce_id", using: :btree
    t.index ["user_id"], name: "index_annonces_on_user_id", using: :btree
  end

  create_table "categorie_actus", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nom"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "categorie_annonces", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nom"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "categorie_events", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nom"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "commentaire_events", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "message",    limit: 65535
    t.integer  "event_id"
    t.integer  "user_id"
    t.string   "anonyme"
    t.boolean  "status"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["event_id"], name: "index_commentaire_events_on_event_id", using: :btree
    t.index ["user_id"], name: "index_commentaire_events_on_user_id", using: :btree
  end

  create_table "events", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "titre"
    t.string   "description"
    t.date     "date_debut"
    t.date     "date_fin"
    t.datetime "heure_debut"
    t.datetime "heure_fin"
    t.boolean  "status"
    t.string   "picture"
    t.string   "lieu"
    t.integer  "nombrePlace"
    t.integer  "note"
    t.integer  "user_id"
    t.integer  "categorie_event_id"
    t.integer  "structure_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.index ["categorie_event_id"], name: "index_events_on_categorie_event_id", using: :btree
    t.index ["structure_id"], name: "index_events_on_structure_id", using: :btree
    t.index ["user_id"], name: "index_events_on_user_id", using: :btree
  end

  create_table "locations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.float    "lat",        limit: 24
    t.float    "lon",        limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "partenaires", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nom"
    t.string   "telephone"
    t.string   "email"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "structures", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nom"
    t.string   "description"
    t.string   "adresse"
    t.string   "telephone"
    t.string   "email"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["location_id"], name: "index_structures_on_location_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "login"
    t.string   "nom"
    t.string   "prenom"
    t.string   "telephone"
    t.integer  "age"
    t.boolean  "admin"
    t.boolean  "adminActu"
    t.boolean  "adminEvent"
    t.string   "adresse"
    t.boolean  "sexe"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "actualites", "categorie_actus"
  add_foreign_key "actualites", "users"
  add_foreign_key "annonces", "categorie_annonces"
  add_foreign_key "annonces", "users"
  add_foreign_key "commentaire_events", "events"
  add_foreign_key "events", "categorie_events"
  add_foreign_key "events", "structures"
  add_foreign_key "events", "users"
  add_foreign_key "structures", "locations"
end

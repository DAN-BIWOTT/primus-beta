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

ActiveRecord::Schema.define(version: 2019_01_06_122058) do

  create_table "active_storage_attachments", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "departments", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.text "depName"
    t.text "depHead"
    t.date "depStartDate"
    t.integer "depStdCapacity"
    t.text "depDescription"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "exams", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.date "date"
    t.text "examName"
    t.integer "results"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "english", default: 0
    t.integer "kiswahili", default: 0
    t.integer "science", default: 0
    t.integer "social_studies", default: 0
    t.integer "math", default: 0
    t.integer "CRE", default: 0
    t.integer "student_id"
  end

  create_table "libraries", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.text "bookTitle"
    t.text "Subject"
    t.text "Author"
    t.text "Publisher"
    t.text "Department"
    t.text "AssetType"
    t.date "purchaseDate"
    t.float "Price"
    t.text "Status"
    t.string "assetDetails"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "staffs", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.text "firstName"
    t.text "lastName"
    t.string "email"
    t.date "joinDate"
    t.string "password_digest"
    t.text "designation"
    t.text "department"
    t.text "gender"
    t.integer "phoneNumber"
    t.date "birthDate"
    t.string "address"
    t.string "image"
    t.text "education"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["email"], name: "index_staffs_on_email", unique: true
  end

  create_table "students", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.text "firstName"
    t.text "lastName"
    t.string "email"
    t.date "regDate"
    t.text "sClass"
    t.text "gender"
    t.integer "mobileNumber"
    t.text "parentName"
    t.integer "parentNumber"
    t.date "birth"
    t.string "address"
    t.string "image"
    t.integer "attendance", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "subjects", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.text "subjectName"
    t.text "subjectCode"
    t.string "subjectDetail"
    t.date "startDate"
    t.text "subjectTeacher"
    t.integer "subjectCapacity"
    t.integer "subjectNumber"
    t.string "subjectImage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "teachers", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.text "firstName"
    t.text "lastName"
    t.string "email"
    t.date "joinDate"
    t.string "password_digest"
    t.text "designation"
    t.text "department"
    t.text "gender"
    t.integer "phoneNumber"
    t.date "birthDate"
    t.string "address"
    t.string "image"
    t.string "education"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["email"], name: "index_teachers_on_email", unique: true
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "schoolName"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end

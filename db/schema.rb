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

ActiveRecord::Schema.define(version: 2018_09_26_220741) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "reclamacoes", force: :cascade do |t|
    t.integer "ordem_arquivo"
    t.string "regiao"
    t.string "uf"
    t.string "cidade"
    t.string "sexo"
    t.string "faixa_etaria"
    t.string "data_fim"
    t.string "tempo_resposta"
    t.string "nome_fantasia"
    t.string "segmento"
    t.string "area"
    t.string "assunto"
    t.string "grupo_problema"
    t.string "problema"
    t.string "como_comprou"
    t.string "procurou_empresa"
    t.string "respondida"
    t.string "situacao"
    t.string "avaliacao"
    t.string "nota_consumidor"
    t.string "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

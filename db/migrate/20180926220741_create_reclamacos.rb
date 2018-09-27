class CreateReclamacos < ActiveRecord::Migration[5.2]
  def change
    create_table :reclamacoes do |t|
      t.integer :ordem_arquivo
      t.string :regiao
      t.string :uf
      t.string :cidade
      t.string :sexo
      t.string :faixa_etaria
      t.string :data_fim
      t.string :tempo_resposta
      t.string :nome_fantasia
      t.string :segmento
      t.string :area
      t.string :assunto
      t.string :grupo_problema
      t.string :problema
      t.string :como_comprou
      t.string :procurou_empresa
      t.string :respondida
      t.string :situacao
      t.string :avaliacao
      t.string :nota_consumidor
      t.string :total

      t.timestamps
    end
  end
end

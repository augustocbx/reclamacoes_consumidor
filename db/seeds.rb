# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
i = 0
puts 'dafkjdaslkfasdljkfjkasldfkl'
puts Rails.root.join('db', 'csv', '2017.csv')
File.open(Rails.root.join('db', 'csv', '2017.csv')).each(sep="\r") do |line|
  if i < 1
    i+=1
    next
  end
  puts line
  array = line.split(';')
  reclamacao = Reclamacao.find_or_initialize_by(ordem_arquivo: i)
  reclamacao.regiao = array[0]
  reclamacao.uf = array[1]
  reclamacao.cidade = array[2]
  reclamacao.sexo = array[3]
  reclamacao.faixa_etaria = array[4]
  reclamacao.data_fim = array[5]
  reclamacao.tempo_resposta = array[6]
  reclamacao.nome_fantasia = array[7]
  reclamacao.segmento = array[8]
  reclamacao.area = array[9]
  reclamacao.assunto = array[10]
  reclamacao.grupo_problema = array[11]
  reclamacao.problema = array[12]
  reclamacao.save
  i+=1
end
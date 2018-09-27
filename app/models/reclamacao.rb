class Reclamacao < ApplicationRecord
  self.table_name = 'reclamacoes'
  include ReclamacaoSearchable
end

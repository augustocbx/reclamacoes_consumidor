module ReclamacaoSearchable
  extend ActiveSupport::Concern

  included do
    include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks

    # include Indexing
    after_touch() {__elasticsearch__.index_document}

    analyzers = {
        "analysis": {
            "analyzer": {
                "folding": {
                    "tokenizer": "standard",
                    "filter": ["lowercase", "asciifolding"]
                }
            }
        }
    }

    settings index: analyzers do
      mapping do
        indexes :uf, type: 'text'
        indexes :cidade, type: 'text'
        indexes :nome_fantasia, type: 'text', boost: 4
        indexes :area, type: 'text'
        indexes :assunto, type: 'text', boost: 4, analyzer: 'folding'
        indexes :problema, type: 'text', boost: 2, analyzer: 'folding'
      end
    end


    def self.search(texto, page, per_page = 20)
      from = 0
      size = per_page
      if page > 1
        from = ((page - 1) * per_page)
      end

      search = Jbuilder.encode do |json|
        json.query do
          json.query_string do
            json.set! 'query', texto
            json.fields %w(uf cidade nome_fantasia area assunto problema)
            json.analyze_wildcard 'true'
            json.default_operator 'AND'
          end
        end

        json.from from
        json.size size
      end

      if Rails.env.development?
        puts "======search======"
        puts search
        puts "======search======"
      end
      return __elasticsearch__.search(search)
    end


    def as_indexed_json(options = {})
      as_json(only: [:uf, :cidade, :nome_fantasia, :area, :assunto, :problema])
    end
  end

end
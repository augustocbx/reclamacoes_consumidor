class ReclamacoesController < ApplicationController
  def index
    if !params[:search].blank?
      @reclamacaos = Reclamacao.search("*#{params[:search]}*", 1).records.to_a
    else
      @reclamacaos = []
    end
  end
end

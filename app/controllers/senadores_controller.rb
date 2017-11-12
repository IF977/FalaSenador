class SenadoresController < ApplicationController
  require 'restfolia'

  def index

      origem = Restfolia.at('http://legis.senado.leg.br/dadosabertos/senador/lista/atual.json').get
      @senadores = origem.ListaParlamentarEmExercicio.Parlamentares.Parlamentar
  end

end

class SenadoresController < ApplicationController
  require 'restfolia'

  def index

      origem_sen = Restfolia.at('http://legis.senado.leg.br/dadosabertos/senador/lista/atual.json').get
      @senadores = origem_sen.ListaParlamentarEmExercicio.Parlamentares.Parlamentar

  end

end

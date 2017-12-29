class SenadoresController < ApplicationController
  require 'restfolia'

  def index

      @senadores = Senator.all
      @discursos = Speech.all

  end

end

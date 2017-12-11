class SenadoresController < ApplicationController
  require 'restfolia'

  def index

      @senadores = Senator.all
      
  end

end

class SenatorsController < ApplicationController
  before_action :set_senator, only: [:show, :edit, :update, :destroy]

  # GET /senators
  # GET /senators.json
  def index
    origem_sen = Restfolia.at('http://legis.senado.leg.br/dadosabertos/senador/lista/atual.json').get
    senadores = origem_sen.ListaParlamentarEmExercicio.Parlamentares.Parlamentar

    senadores.each do |senador|

        Senator.create(:codigoparlamentar => senador.IdentificacaoParlamentar.CodigoParlamentar,
                       :nome => senador.IdentificacaoParlamentar.NomeParlamentar,
                       :urlfoto => senador.IdentificacaoParlamentar.UrlFotoParlamentar,
                       :urlpagina => senador.IdentificacaoParlamentar.UrlPaginaParlamentar,
                       :siglapartido => senador.IdentificacaoParlamentar.SiglaPartidoParlamentar,
                       :uf => senador.IdentificacaoParlamentar.UfParlamentar)

    end

    @senators = Senator.all
  end

  # GET /senators/1
  # GET /senators/1.json
  def show
  end

  # GET /senators/new
  def new
    @senator = Senator.new
  end

  # GET /senators/1/edit
  def edit
  end

  # POST /senators
  # POST /senators.json
  def create
    @senator = Senator.new(senator_params)

    respond_to do |format|
      if @senator.save
        format.html { redirect_to @senator, notice: 'Senator was successfully created.' }
        format.json { render :show, status: :created, location: @senator }
      else
        format.html { render :new }
        format.json { render json: @senator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /senators/1
  # PATCH/PUT /senators/1.json
  def update
    respond_to do |format|
      if @senator.update(senator_params)
        format.html { redirect_to @senator, notice: 'Senator was successfully updated.' }
        format.json { render :show, status: :ok, location: @senator }
      else
        format.html { render :edit }
        format.json { render json: @senator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /senators/1
  # DELETE /senators/1.json
  def destroy
    @senator.destroy
    respond_to do |format|
      format.html { redirect_to senators_url, notice: 'Senator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_senator
      @senator = Senator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def senator_params
      params.require(:senator).permit(:codigoparlamentar, :nome, :urlfoto, :urlpagina, :siglapartido, :uf)
    end
end

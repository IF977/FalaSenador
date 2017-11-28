class SpeechesController < ApplicationController
  before_action :set_speech, only: [:show, :edit, :update, :destroy]

  # GET /speeches
  # GET /speeches.json
  def index
    senadores = Senator.all

    # Pegando do BD
    senadores.each do |senador|
        primeira, codigo, segunda = "http://legis.senado.leg.br/dadosabertos/senador/", "5529", "/discursos.json"

        url_codigo =  "#{primeira}#{codigo}#{segunda}"

        origem_dis = Restfolia.at(url_codigo).get
        discursos = origem_dis.DiscursosParlamentar.Parlamentar.Pronunciamentos.Pronunciamento

        discursos.each do |discurso|

            Speech.create(:codigoparlamentar => senador.codigoparlamentar,
                          :codigopronunciamento => discurso.CodigoPronunciamento,
                          :data => discurso.DataPronunciamento,
                          :urltexto => discurso.UrlTexto,
                          :textocompleto => 0)

        end
    end

    @speeches = Speech.all
  end

  # GET /speeches/1
  # GET /speeches/1.json
  def show
  end

  # GET /speeches/new
  def new
    @speech = Speech.new
  end

  # GET /speeches/1/edit
  def edit
  end

  # POST /speeches
  # POST /speeches.json
  def create
    @speech = Speech.new(speech_params)

    respond_to do |format|
      if @speech.save
        format.html { redirect_to @speech, notice: 'Speech was successfully created.' }
        format.json { render :show, status: :created, location: @speech }
      else
        format.html { render :new }
        format.json { render json: @speech.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /speeches/1
  # PATCH/PUT /speeches/1.json
  def update
    respond_to do |format|
      if @speech.update(speech_params)
        format.html { redirect_to @speech, notice: 'Speech was successfully updated.' }
        format.json { render :show, status: :ok, location: @speech }
      else
        format.html { render :edit }
        format.json { render json: @speech.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /speeches/1
  # DELETE /speeches/1.json
  def destroy
    @speech.destroy
    respond_to do |format|
      format.html { redirect_to speeches_url, notice: 'Speech was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_speech
      @speech = Speech.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def speech_params
      params.require(:speech).permit(:codigoparlamentar, :codigopronunciamento, :data, :urltexto, :textocompleto)
    end
end

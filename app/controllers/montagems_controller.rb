class MontagemsController < ApplicationController
  before_action :set_montagem, only: %i[ show edit update destroy ]

  # GET /montagems or /montagems.json
  def index
    @montagems = Montagem.all
  end

  # GET /montagems/1 or /montagems/1.json
  def show
  end

  # GET /montagems/new
  def new
    @montagem = Montagem.new
  end

  # GET /montagems/1/edit
  def edit
  end

  # POST /montagems or /montagems.json
  def create
    @montagem = Montagem.new(montagem_params)

    respond_to do |format|
      if @montagem.save
        format.html { redirect_to montagem_url(@montagem), notice: "Montagem was successfully created." }
        format.json { render :show, status: :created, location: @montagem }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @montagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /montagems/1 or /montagems/1.json
  def update
    respond_to do |format|
      if @montagem.update(montagem_params)
        format.html { redirect_to montagem_url(@montagem), notice: "Montagem was successfully updated." }
        format.json { render :show, status: :ok, location: @montagem }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @montagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /montagems/1 or /montagems/1.json
  def destroy
    @montagem.destroy!

    respond_to do |format|
      format.html { redirect_to montagems_url, notice: "Montagem was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_montagem
      @montagem = Montagem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def montagem_params
      params.require(:montagem).permit(:livro_id)
    end
end

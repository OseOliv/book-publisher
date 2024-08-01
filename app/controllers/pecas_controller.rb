class PecasController < ApplicationController
  before_action :set_peca, only: %i[ show edit update destroy ]

  # GET /pecas or /pecas.json
  def index
    @pecas = Peca.all
  end

  # GET /pecas/1 or /pecas/1.json
  def show
  end

  # GET /pecas/new
  def new
    @peca = Peca.new
  end

  # GET /pecas/1/edit
  def edit
  end

  # POST /pecas or /pecas.json
  def create
    @peca = Peca.new(peca_params)

    respond_to do |format|
      if @peca.save
        format.html { redirect_to peca_url(@peca), notice: "Peca was successfully created." }
        format.json { render :show, status: :created, location: @peca }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @peca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pecas/1 or /pecas/1.json
  def update
    respond_to do |format|
      if @peca.update(peca_params)
        format.html { redirect_to peca_url(@peca), notice: "Peca was successfully updated." }
        format.json { render :show, status: :ok, location: @peca }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @peca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pecas/1 or /pecas/1.json
  def destroy
    @peca.destroy!

    respond_to do |format|
      format.html { redirect_to pecas_url, notice: "Peca was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_peca
      @peca = Peca.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def peca_params
      params.require(:peca).permit(:nome, :valor, :fornecedor_id)
    end
end

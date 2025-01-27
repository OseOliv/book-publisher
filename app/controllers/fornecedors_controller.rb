class FornecedorsController < ApplicationController
  before_action :set_fornecedor, only: %i[ show edit update destroy ]

  # GET /fornecedors or /fornecedors.json
  def index
    @fornecedors = Fornecedor.all
  end

  # GET /fornecedors/1 or /fornecedors/1.json
  def show
  end

  # GET /fornecedors/new
  def new
    @fornecedor = Fornecedor.new
  end

  # GET /fornecedors/1/edit
  def edit
  end

  # POST /fornecedors or /fornecedors.json
  def create
    @fornecedor = Fornecedor.new(fornecedor_params)

    respond_to do |format|
      if @fornecedor.save
        format.html { redirect_to fornecedor_url(@fornecedor), notice: "Fornecedor was successfully created." }
        format.json { render :show, status: :created, location: @fornecedor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fornecedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fornecedors/1 or /fornecedors/1.json
  def update
    respond_to do |format|
      if @fornecedor.update(fornecedor_params)
        format.html { redirect_to fornecedor_url(@fornecedor), notice: "Fornecedor was successfully updated." }
        format.json { render :show, status: :ok, location: @fornecedor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fornecedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fornecedors/1 or /fornecedors/1.json
  def destroy
    @fornecedor = Fornecedor.find(params[:id])

    if @fornecedor.pecas.any?
      respond_to do |format|
        format.html { redirect_to fornecedors_url, alert: "Não é possível excluir o fornecedor porque ele está associado a peças." }
        format.json { head :unprocessable_entity }
      end
    else
      @fornecedor.destroy
      respond_to do |format|
        format.html { redirect_to fornecedors_url, notice: "Fornecedor was successfully destroyed." }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fornecedor
      @fornecedor = Fornecedor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fornecedor_params
      params.require(:fornecedor).permit(:nome, :cnpj, :conta)
    end
end

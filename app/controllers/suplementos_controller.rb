class SuplementosController < ApplicationController
  before_action :set_suplemento, only: [:show, :edit, :update, :destroy]

  # GET /suplementos
  # GET /suplementos.json
  def index
    @suplementos = Suplemento.all
  end

  # GET /suplementos/1
  # GET /suplementos/1.json
  def show
  end

  # GET /suplementos/new
  def new
    @suplemento = Suplemento.new
  end

  # GET /suplementos/1/edit
  def edit
  end

  # POST /suplementos
  # POST /suplementos.json
  def create
    @suplemento = Suplemento.new(suplemento_params, user: :current_user)

    respond_to do |format|
      if @suplemento.save
        format.html { redirect_to @suplemento, notice: 'Suplemento was successfully created.' }
        format.json { render action: 'show', status: :created, location: @suplemento }
      else
        format.html { render action: 'new' }
        format.json { render json: @suplemento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suplementos/1
  # PATCH/PUT /suplementos/1.json
  def update
    respond_to do |format|
      if @suplemento.update(suplemento_params)
        format.html { redirect_to @suplemento, notice: 'Suplemento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @suplemento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suplementos/1
  # DELETE /suplementos/1.json
  def destroy
    @suplemento.destroy
    respond_to do |format|
      format.html { redirect_to suplementos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_suplemento
      @suplemento = Suplemento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def suplemento_params
      params.require(:suplemento).permit(:nome, :marca, :link)
    end
end

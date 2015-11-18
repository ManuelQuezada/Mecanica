class MecanicoEspecialidadsController < ApplicationController
  before_action :set_mecanico_especialidad, only: [:show, :edit, :update, :destroy]

  # GET /mecanico_especialidads
  # GET /mecanico_especialidads.json
  def index
    @mecanico_especialidads = MecanicoEspecialidad.all
  end

  # GET /mecanico_especialidads/1
  # GET /mecanico_especialidads/1.json
  def show
  end

  # GET /mecanico_especialidads/new
  def new
    @mecanico_especialidad = MecanicoEspecialidad.new
  end

  # GET /mecanico_especialidads/1/edit
  def edit
  end

  # POST /mecanico_especialidads
  # POST /mecanico_especialidads.json
  def create
    @mecanico_especialidad = MecanicoEspecialidad.new(mecanico_especialidad_params)

    respond_to do |format|
      if @mecanico_especialidad.save
        format.html { redirect_to @mecanico_especialidad, notice: 'Mecanico especialidad was successfully created.' }
        format.json { render :show, status: :created, location: @mecanico_especialidad }
      else
        format.html { render :new }
        format.json { render json: @mecanico_especialidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mecanico_especialidads/1
  # PATCH/PUT /mecanico_especialidads/1.json
  def update
    respond_to do |format|
      if @mecanico_especialidad.update(mecanico_especialidad_params)
        format.html { redirect_to @mecanico_especialidad, notice: 'Mecanico especialidad was successfully updated.' }
        format.json { render :show, status: :ok, location: @mecanico_especialidad }
      else
        format.html { render :edit }
        format.json { render json: @mecanico_especialidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mecanico_especialidads/1
  # DELETE /mecanico_especialidads/1.json
  def destroy
    @mecanico_especialidad.destroy
    respond_to do |format|
      format.html { redirect_to mecanico_especialidads_url, notice: 'Mecanico especialidad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mecanico_especialidad
      @mecanico_especialidad = MecanicoEspecialidad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mecanico_especialidad_params
      params.require(:mecanico_especialidad).permit(:mecanico_id, :especialidad_id)
    end
end

class ComponentsController < ApplicationController
  before_action :set_component, only: %i[show edit update destroy]

  def create; end

  def show; end

  def edit; end

  def update
    respond_to do |format|
      if @component.update(component_params)
        format.html { redirect_to @component, notice: 'Component was successfully updated.' }
        format.json { render :show, status: :ok, location: @component }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @component.errors, status: :unprocessable_entity }
      end
    end
  end

  def new; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_component
    @component = Component.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def component_params
    params.require(:component).permit(:id, :name,
                                      subcomponents_attributes: %i[id name impect_attributes _destroy], impect_attributes: %i[id water_use climate_change])
  end
end

class CarriagesController < ApplicationController
  before_action :set_carriage, only: %i(show edit update destroy)
  before_action :set_train, only: %i(new, create, index)

  def index
    redirect_to @train
  end

  def show
  end

  def new
    @carriage = Carriage.new
  end

  def edit
  end

  def create
    if Carriage.types.include?(carriage_params[:type])
      carriage_class = carriage_params[:carriage][:type].constantize
      @carriage = carriage_class.new(carriage_params)
      if @carriage.save
        redirect_to @carriage.train, notice: 'Wagon was successfully created.'
      else
        render :new
      end
    else
      redirect_to new_train_carriage_path,  alert: 'Что-то пошло не так'
    end
  end


  def update
      if @carriage.update(carriage_params)
        redirect_to @carriage.train, notice: "Carriage was successfully updated."
      else
        render :edit
      end
  end

  def destroy
    train = @carriage.train
    @carriage.destroy
    redirect_to train, notice: "Carriage was successfully destroyed."
  end

  private

  def set_carriage
    @carriage = Carriage.find(params[:id])
  end

  def set_train
    @train = Train.find(params[:train_id])
  end

  def carriage_params
    params.require(:carriage).permit(:type, :train_id, :top_place, :lower_place,
                                                  :side_top_places, :side_lower_places, :seats)
  end
end

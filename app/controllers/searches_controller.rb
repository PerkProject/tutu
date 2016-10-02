class SearchesController < ApplicationController
  def new
    @search ||= Search.new
  end

  def show
    @search = Search.new(start_station_id: params[:start_station_id],
                         end_station_id:   params[:end_station_id])
    @search.search_run
    render :show
  end

  private

  # def search_params
  #  params.require(:search).permit(:start_station_id, :end_station_id)
  # end
end

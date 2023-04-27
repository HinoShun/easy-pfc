class BodyDataController < ApplicationController
  def new
    @body_datum = BodyDatum.new
  end

  def create
    @body_datum = BodyDatum.new(body_datum_params)
    if @body_datum.save
      redirect_to root_path
    else
      render action: :new
    end
    #ToDo:値変換?
  end

  private
  def body_datum_params
    params.require(:body_datum).permit(:height, :weight, :age, :sex_id, :target_date, :target_weight, :activity_level_id)
  end

end

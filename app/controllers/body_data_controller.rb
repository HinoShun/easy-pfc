class BodyDataController < ApplicationController
  def new
    @body_datum = BodyDatum.new
  end

  def create
    @body_datum = BodyDatum.new(body_datum_params)
    #if @body_datum.valid?
      render json:{ body_datum: @body_datum }
    #else
      #render action: :new
    #end
  end

  private
  def body_datum_params
    params.require(:body_datum).permit(:height, :weight, :age, :sex_id, :target_date, :target_weight, :activity_level_id)
  end

end

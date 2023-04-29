class BodyDatum < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :sex
  belongs_to :activity_level

  with_options presence: true do
    validates :height
    validates :weight
    validates :age
    validates :target_date
    validates :target_weight
  end

  with_options numericality: { other_than: 1 } do
    validates :sex_id, numericality: {message: "can't be blank"}
    validates :activity_level_id, numericality: {message: "can't be blank"}
  end

end

class BodyDatum < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :sex
  belongs_to :activity_level

end

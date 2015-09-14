class SurveyChoice < ActiveRecord::Base
  belongs_to :survey_question
end

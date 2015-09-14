class CreateSurveyChoices < ActiveRecord::Migration
  def change
    create_table :survey_choices do |t|
      t.references :survey_question, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

class CreateSurveyVotes < ActiveRecord::Migration
  def change
    create_table :survey_votes do |t|
      t.references :user, index: true, foreign_key: true
      t.string :survey_choice
      t.string :references

      t.timestamps null: false
    end
  end
end

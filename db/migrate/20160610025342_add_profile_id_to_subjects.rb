class AddProfileIdToSubjects < ActiveRecord::Migration[5.0]
  def change
    add_reference :subjects, :profile, foreign_key: true
  end
end

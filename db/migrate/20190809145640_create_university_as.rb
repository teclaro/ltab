class CreateUniversityAs < ActiveRecord::Migration[5.1]
  def change
    create_table :university_as do |t|

      t.timestamps
    end
  end
end

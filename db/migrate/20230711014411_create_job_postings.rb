class CreateJobPostings < ActiveRecord::Migration[7.0]
  def change
    create_table :job_postings do |t|
      t.references :company, null: false, foreign_key: true
      t.string :position
      t.integer :category
      t.string :city
      t.string :country
      t.text :description
      t.integer :language
      t.string :source
      t.date :posted_at

      t.timestamps
    end
  end
end

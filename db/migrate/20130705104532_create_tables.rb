class CreateTables < ActiveRecord::Migration
  def change

    create_table :users do |t|
      t.text :name
      t.text :password_hash
      t.text :email

      t.timestamps
    end

    create_table :surveys do |t|
      t.text :survey_name
      t.references :user
      t.text :url

      t.timestamps
    end

    create_table :questions do |t|
      t.text :question_text
      t.references :survey


      t.timestamps
    end

    create_table :choices do |t|
      t.text :answer
      t.references :question

      t.timestamps
    end

    create_table :responses do |t|
      t.references :choice
      t.references :user

      t.timestamps
    end
  end
end

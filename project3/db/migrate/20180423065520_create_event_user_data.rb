class CreateEventUserData < ActiveRecord::Migration[5.2]
  def change
    create_table :event_user_data do |t|
      t.references :rsvp, foreign_key: true
      t.text :relation
      t.text :user_role
      t.boolean :attending
      t.text :diet
      t.integer :additional_persons
      t.integer :num_babies
      t.integer :num_toddlers
      t.boolean :require_carpark
      t.text :message
      t.boolean :attended

      t.timestamps
    end
  end
end

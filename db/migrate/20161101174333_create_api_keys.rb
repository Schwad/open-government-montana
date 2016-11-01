class CreateApiKeys < ActiveRecord::Migration
  def change
    create_table :api_keys do |t|
      t.string :token, :text
      t.string :user_id, :integer

      t.timestamps null: false
    end
  end
end

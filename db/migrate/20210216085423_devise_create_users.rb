# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      # preparing devise support
      t.string :email, null: false, default: ''
      t.string :encrypted_password, null: false, default: ''

      # legacy setup dor bcrypt
      t.string :password_digest

      t.string :first_name
      t.string :last_name
      t.text :description

      t.timestamps
    end
  end
end
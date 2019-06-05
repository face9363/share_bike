class CreateTourists < ActiveRecord::Migration[5.1]
  def change
    create_table :tourists do |t|
      t.string :name
      t.string :nickname
      t.string :email
      t.string :phmnumber
      # t.string :address
      # t.string :passport
      t.boolean :temp_terms, default: false
      t.integer :terms, default: 0
      t.integer :tutorial, default: 0
      t.string :remember_digest
      t.timestamps
    end
  end
end
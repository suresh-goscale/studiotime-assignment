class CreateAuthTokens < ActiveRecord::Migration[5.1]
  def change
    create_table :auth_tokens do |t|
      t.references :customer
      t.string     :token
      t.datetime   :expires_at
      t.integer    :kind
      t.timestamps
    end
  end
end

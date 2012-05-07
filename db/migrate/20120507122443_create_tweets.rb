class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
    	t.string :account_name
    	t.string :content
    	t.datetime :posted_at
      t.timestamps
    end
  end
end

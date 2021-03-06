class Initial < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :body
 
      t.timestamps null: false
    end
    
    create_table :requests do |t|
      t.belongs_to :user, index: true
      t.string :title, null: false
      t.string :body
      t.boolean :public, null: false
      t.integer :user #better attribute name
 
      t.timestamps null: false
    end
    
    create_table :collaborations do |t|
      t.belongs_to :request, index: true
      t.string :body
      
      t.timestamps null: false
    end
    
    create_table :taggings do |t|
      t.references :taggable, polymorphic: true, index: true
      t.belongs_to :tags, index: true
 
      t.timestamps null: false
    end
    
    create_table :tags do |t|
      t.string :title, null: false
      t.boolean :active
 
      t.timestamps null: false
    end
    
    create_table :conversations do |t|
      t.belongs_to :request, index: true
      t.belongs_to :user, index: true
      
      t.timestamps null: false
    end
    
    create_table :comments do |t|
      t.belongs_to :conversation, index: true
      t.string :body
      t.integer :index, null: false
 
      t.timestamps null: false
    end
  end
end
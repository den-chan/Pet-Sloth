class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :body
 
      t.timestamps null: false
    end
  end
end

class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.belongs_to :user, index: true
      t.string :title, null: false
      t.string :body
      t.bool :public, null: false
      t.integer :user #better attribute name
 
      t.timestamps null: false
    end
  end
end

class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.references :taggable, polymorphic: true, index: true
      t.string :title, null: false
 
      t.timestamps null: false
    end
  end
end

class CreateCandidateTags < ActiveRecord::Migration
  def change
    create_table :candidatetags do |t|
      t.string :title, null: false
 
      t.timestamps null: false
    end
  end
end

class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.belongs_to :request, index: true
      t.belongs_to :user, index: true
      
      t.timestamps null: false
    end
  end
end

class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :conversation, index: true
      t.string :body
      t.integer :index, null: false
 
      t.timestamps null: false
    end
  end
end
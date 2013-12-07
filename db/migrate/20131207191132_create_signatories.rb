class CreateSignatories < ActiveRecord::Migration
  def up
    create_table :signatories do |t|
      t.belongs_to :campaign
      
      t.string :name
      t.string :email

      t.timestamps
    end
  end

  def down
    drop_table :signatories
  end
end

class ChangeDataTypeForFieldname < ActiveRecord::Migration
  def change
    change_table :contacts do |t|
      t.change :message, :text
    end
  end

end

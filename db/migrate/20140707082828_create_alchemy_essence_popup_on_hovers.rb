class CreateAlchemyEssencePopupOnHovers < ActiveRecord::Migration
  def change
    create_table :alchemy_essence_popup_on_hovers do |t|
    	t.text     "body"
        t.string   "title"
        t.string   "popup"
      t.timestamps
    end
  end
end

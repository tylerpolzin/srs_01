class Callsheet < ActiveRecord::Base
  acts_as_xlsx :columns => [:id, :user_id, :store_id, :store_number, :store_abbrv, :store_name, :visit_date, :dept_manager_400, :ce_stairdisplays, :ce_binboxes, :ce_tvdisplay, :ce_closetdoors, :ce_barndoors, :ce_lit_tearpads, :ce_lit_closetdoors, 
                            :ce_lit_columns, :ce_notes, :genie_sku_4251691, :genie_sku_4251689, :genie_sku_4252547, :genie_sku_4252548, :genie_sku_4254040, :genie_sku_4251720, :genie_sku_4252388, 
                            :genie_sku_4252445, :genie_sku_4252391, :genie_sku_4251685, :genie_notes, :dept_manager_600, :hw_sku_3351566, :hw_sku_3351579, :hw_sku_6360310, :hw_sku_6360320, :hw_sku_6360325, :hw_sku_6360328, :hw_sku_3351813, 
                            :hw_sku_3351830, :hw_sku_3351832, :hw_sku_3351833, :hw_sku_6360205, :hw_sku_6360210, :hw_sku_6360220, :hw_sku_6360150, :hw_sku_6360200, :hw_sku_3351837, :hw_sku_3351779, 
                            :hw_sku_3351885, :hw_sku_3351785, :hw_sku_3351798, :hw_sku_3351879, :hw_sku_3351895, :hw_sku_3352001, :hw_sku_3352014, :hw_sku_3352027, :hw_sku_3352030, :hw_sku_6399948, 
                            :hw_sku_6399949, :hw_sku_6399978, :hw_sku_6399979, :hw_lit_thermostat, :hw_lit_airquality, :honeywell_notes, :summit_sku_6471315, :summit_sku_6471317, :summit_sku_6471323, :summit_sku_6471320, :summit_sku_6471321, :summit_sku_6471330, 
                            :summit_sku_6471333, :summit_sku_6471305, :summit_sku_6471322, :summit_sku_6471302, :summit_sku_6473100, :summit_sku_6471335, :summit_sku_6471325, :summit_sku_6473918, 
                            :summit_sku_6473917, :summit_sku_6473900, :summit_sku_6473136, :summit_notes, :allstone_lit, :allstone_notes, :tuscany_notes, :callsheet_complete]
  has_one :store
  
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |callsheet|
        csv << callsheet.attributes.values_at(*column_names)
      end
    end
  end
end
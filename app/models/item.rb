class Item < ActiveRecord::Base
attr_accessor :vendor_name_other
  has_many :task_products, foreign_key: :product_id
  has_many :parts
  
  accepts_nested_attributes_for :parts, allow_destroy: true
  
  has_attached_file :avatar,
                    :styles => {:medium => "300x300>", :thumb => "100x100>" },
                    :default_url => "No_Image_Found"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\z/

  def item_select
    "#{vendor_name} (#{description})"
  end

end
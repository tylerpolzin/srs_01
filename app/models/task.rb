class Task < ApplicationRecord
  has_one :storeorder, :dependent => :destroy
  has_one :warrantyorder, :dependent => :destroy
  belongs_to :user, foreign_key: :initiated_by
  has_many :task_products
  has_many :uploads
  
  accepts_nested_attributes_for :storeorder, :reject_if => :store_id_blank, :allow_destroy => true
  accepts_nested_attributes_for :warrantyorder, :reject_if => :customer_id_blank, :allow_destroy => true
  accepts_nested_attributes_for :task_products
  accepts_nested_attributes_for :uploads
  
  validates :task_name, presence: true
  validates :task_type, presence: true
  
  def uploads=(array = [])
    array.each do |f|
      uploads.create upload: f
    end
  end

  def store_id_blank(a)
    self.new_record? && a[:store_id].blank?
  end
  
  def customer_id_blank(a)
    self.new_record? && a[:customer_id].blank?
  end
  
  def is_customer_order
    self.task_type == "Customer Order"
  end
  
  def is_store_order
    self.task_type == "Store Order"
  end
  
  def is_srs_task
    self.task_type == "SRS Task"
  end
  
  def deadstrf
    deadline.strftime("%B %d, %Y")
  end
  
end


class Customer < ApplicationRecord
  has_one :warrantyorder, foreign_key: :customer_id
  
  def customer_select
    "#{firstname} #{lastname} (#{city}, #{state})"
  end
  
  def customer_name
    "#{firstname} #{lastname}"
  end
  
  def customer_csz
    "#{city}, #{state} #{zipcode}"
  end
  
  def phone_h
    "#{phone.insert(0, '(').insert(4, ')').insert(5, ' ').insert(9, '-')}"
  end

end

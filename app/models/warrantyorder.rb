class Warrantyorder < ApplicationRecord
  has_one :task
  belongs_to :customer, foreign_key: :customer_id
  accepts_nested_attributes_for :customer, :reject_if => :all_blank, :allow_destroy => true
  
  def ups_tracking_link
    "<td><a href='//wwwapps.ups.com/WebTracking/processInputRequest?AgreeToTermsAndConditions=yes&loc=en_US&tracknum=#{tracking_number}' target='_blank'>#{tracking_number}</a></td>"
  end
  
  def fedex_tracking_link
    "<a href='//www.fedex.com/apps/fedextrack/?action=track&tracknumbers=#{tracking_number}&locale=en_US&cntry_code=us' target='_blank'>#{tracking_number}</a>"
  end
  
  def usps_tracking_link
    "<a href='//tools.usps.com/go/TrackConfirmAction?qtc_tLabels1=#{tracking_number}' target='_blank'>#{tracking_number}</a>"
  end
  
end

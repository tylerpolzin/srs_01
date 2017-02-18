class Store < ActiveRecord::Base
  belongs_to :user
  has_many :callsheets
  has_one :storeorder, foreign_key: :store_id

  def store_select
    "#{name.titleize} (#{abbrv} ##{yard})"
  end

  def store_identifier
    "MENARDS ##{yard}"
  end

  def store_csz
    "#{city}, #{state} #{zipcode.insert(5, '-')}"
  end
  def store_csy
    "#{city}, #{state} #{zipcode}"
  end
  
  def store_cszt
    "#{city.titleize}, #{state} #{zipcode.insert(5, '-')}"
  end
  def store_csyt
    "#{city.titleize}, #{state} #{zipcode}"
  end

  def phone_h
    "#{phone.insert(0, '(').insert(4, ')').insert(5, ' ').insert(9, '-')}"
  end
  
  def lastvisit_blank
    "No logged visits yet"
  end
  
  def infowindow
    "<table>
      <tbody>
        <tr>
          <td><strong>#{name} (#{abbrv}, #{yard}) (#{prototype})</strong></td>
        </tr>
        <tr>
          <td>Rep: #{service_rep.titleize}</td>
        </tr>
        <tr>
          <td>#{address.titleize}</td>
        </tr>
        <tr>
          <td>#{store_cszt if zipcode.length > 5}#{store_csyt if zipcode.length < 6}</td>
        </tr>
        <tr>
          <td>#{phone_h}</td>
        </tr>
        <tr>
          <td>Last Visit: #{lastvisit_blank if lastvisit.blank?}#{lastvisit.strftime("%B %d, %Y") if !lastvisit.blank?}</td>
        </tr>
        <tr>
          <td><a href='stores/#{id}'>SRS Store Information</a></td>
        </tr>
        <tr>
          <td><a href='//www.menards.com/main/storeDetails.html?store=#{yard}'>Menards.com Store Information</a></td>
        </tr>
      </tbody>
    </table>"
  end

end
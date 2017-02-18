module ApplicationHelper
  def vendor
    [
      ['Tuscany', 'Tuscany'],
      ['Ray Padula', 'Ray Padula'],
      ['Colonial Elegance', 'Colonial Elegance'],
      ['Dr Sharp', 'Dr Sharp'],
      ['Momentum', 'Momentum'],
      ['Turn of the Century', 'Turn of the Century'],
      ['Other...', 'Other']
    ]
  end
  
  def prototype
    [
      ['undefined', 'undefined', :proto_id => 'undefined'],
      ['P5', 'P5', :proto_id => 'P5'],
      ['Reverse P5', 'R5', :proto_id => 'R5'],
      ['P5 w/ Mezz', 'P5M', :proto_id => 'P5M'],
      ['Reverse P5 w/ Mezz', 'R5M', :proto_id => 'R5M'],
      ['2-Story', 'P2S', :proto_id => 'P2S'],
      ['Reverse 2-Story', 'R2S', :proto_id => 'R2S'],
      ['Non-Prototype', 'NP', :proto_id => 'NP']
    ]
  end
  
  def reps
    [
      ['Beth Sheely', 'BETH SHEELY', :user_id => "10"],
      ['Brian Myers', 'BRIAN MYERS', :user_id => "11"],
      ['Jeff Voegele', 'JEFF VOEGELE', :user_id => "12"],
      ['Lindy Barsness', 'LINDY BARSNESS', :user_id => "13"],
      ['Mark Emerson', 'MARK EMERSON', :user_id => "14"],
      ['Steve Mampe', 'STEVE MAMPE', :user_id => "15"],
      ['Tom Brennan', 'TOM BRENNAN', :user_id => "16"],
      ['Tony Duquette', 'TONY DUQUETTE', :user_id => "18"],
      ['Tony Scotino', 'TONY SCOTINO', :user_id => "17"],
      ['Tyler Polzin', 'TYLER POLZIN', :user_id => "1"]
    ]
  end
  
  def us_states
    [
      ['Alabama', 'AL'],
      ['Alaska', 'AK'],
      ['Arizona', 'AZ'],
      ['Arkansas', 'AR'],
      ['California', 'CA'],
      ['Colorado', 'CO'],
      ['Connecticut', 'CT'],
      ['Delaware', 'DE'],
      ['District of Columbia', 'DC'],
      ['Florida', 'FL'],
      ['Georgia', 'GA'],
      ['Hawaii', 'HI'],
      ['Idaho', 'ID'],
      ['Illinois', 'IL'],
      ['Indiana', 'IN'],
      ['Iowa', 'IA'],
      ['Kansas', 'KS'],
      ['Kentucky', 'KY'],
      ['Louisiana', 'LA'],
      ['Maine', 'ME'],
      ['Maryland', 'MD'],
      ['Massachusetts', 'MA'],
      ['Michigan', 'MI'],
      ['Minnesota', 'MN'],
      ['Mississippi', 'MS'],
      ['Missouri', 'MO'],
      ['Montana', 'MT'],
      ['Nebraska', 'NE'],
      ['Nevada', 'NV'],
      ['New Hampshire', 'NH'],
      ['New Jersey', 'NJ'],
      ['New Mexico', 'NM'],
      ['New York', 'NY'],
      ['North Carolina', 'NC'],
      ['North Dakota', 'ND'],
      ['Ohio', 'OH'],
      ['Oklahoma', 'OK'],
      ['Oregon', 'OR'],
      ['Pennsylvania', 'PA'],
      ['Puerto Rico', 'PR'],
      ['Rhode Island', 'RI'],
      ['South Carolina', 'SC'],
      ['South Dakota', 'SD'],
      ['Tennessee', 'TN'],
      ['Texas', 'TX'],
      ['Utah', 'UT'],
      ['Vermont', 'VT'],
      ['Virginia', 'VA'],
      ['Washington', 'WA'],
      ['West Virginia', 'WV'],
      ['Wisconsin', 'WI'],
      ['Wyoming', 'WY']
    ]
  end
  
  
end

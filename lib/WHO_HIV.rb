require "WHO_HIV/version"
require "yaml"
require 'json'


module WorldRec

  #this makes the request to the api server
  def self.parse_url url
    command = "curl #{url}"
    return JSON.parse(%x[ #{command} ])
  end

  def self.build_api_url country=nil, years=[]
    #build url using country code and year
    country_code = get_country_code(country)
    url = "http://apps.who.int/gho/athena/data/GHO/CM_01,CM_02,CM_03,DEVICES09,DEVICES22,HIV_0000000020,MALARIA001,MDG_0000000001,MH_17,MH_18,MH_6,SA_0000001688,TB_1,TB_tot_newrel,TOBACCO_0000000192,WHOSIS_000001,WHOSIS_000003,WHOSIS_000005,WHOSIS_000011,WHOSIS_000015,WHS10_1,WHS10_8,WHS10_9,WHS2_138,WHS2_162,WHS2_163,WHS2_164,WHS2_165,WHS2_166,WHS2_167,WHS2_168,WHS2_170,WHS2_171,WHS2_172,WHS2_173,WHS2_174,WHS2_3070_all,WHS2_3070_cancer,WHS2_3070_cdd,WHS2_3070_chronic,WHS2_513,WHS2_514,WHS2_515,WHS2_516,WHS2_523,WHS3_40,WHS3_41,WHS3_42,WHS3_43,WHS3_45,WHS3_46,WHS3_47,WHS3_48,WHS3_49,WHS3_50,WHS3_51,WHS3_52,WHS3_53,WHS3_55,WHS3_56,WHS3_57,WHS3_62,WHS4_100,WHS4_106,WHS4_107,WHS9_CBR,WHS9_CDR,WHS9_CS.json?filter=COUNTRY:#{country_code}"
    
    years.each do |year|
      url += "%3BYEAR:#{year}"
    end
    
    return url 
  end


  #this gets country code from yml file
  def self.get_country_code country
    path = File.expand_path("../../resources/country_codes.yml", __FILE__)
    countries ||= YAML.load_file(path)
    countries[country.to_sym]
  end


  #this function manages everything. It is the JLP of this gem. 
  def self.run country=nil, years=[]
    raise ArgumentError, "I need a country code to work" if country.nil?

    #take url and send request to server
    url = build_api_url(country, years)
    data = parse_url(url)
    return data
  end
end

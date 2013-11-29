# WHOHIV

This gem gives you access to World Health Organization's public health statistics for specific countries. The World Health Organization (WHO) is a specialized agency of the United Nations (UN) that is concerned with international public health.  It's website can be found at http://www.who.int/. 


The quality, timeliness, range, and accuracy of the statistics is dependent on the WHO. Many of these datasets represent the best estimates of WHO using methodologies for specific indicators that aim for comparability across countries and time; they are updated as more recent or revised data become available, or when there are changes to the methodology being used. Therefore, they are not always the same as official national estimates. 


To call the records of a specific country for multiple years:
WorldRec.run "Country", [year1, year2, year3]
WorldRec.run "China", [2009, 2011, 1996]

To call the records of a specific country for one year:
WorldRec.run "Country", [year1]
WorldRec.run "China", [2011]

The country's first letter must be capitalized and the year(s) must be put inside of an array. Otherwise things won't work. Please note that information is not always available for every year for each country. 

When using the information retrieved via this gem please attribute all data to the World Health Organization. 



## Installation

Add this line to your application's Gemfile:

    gem 'WHO_HIV'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install WHO_HIV

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

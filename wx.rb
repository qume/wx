

require 'wunderground'
w_api = Wunderground.new("4e150b2bf3a1e523")

wx = w_api.forecast_for("pws:IJALISCO22")


wx["forecast"]["txt_forecast"]["forecastday"].each  { |day|

puts "#{'%-20.20s' % day["title"]}      -      #{day["fcttext_metric"]}"


}


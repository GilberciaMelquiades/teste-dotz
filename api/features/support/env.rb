require 'allure-cucumber'
require 'cucumber'
require 'httparty'

ENV["url_path"] = "https://api.openweathermap.org/data/2.5/"
ENV["api_key"] = "52bae9cdafbec4438254e84afa4235c3"

HTTParty::Basement.default_options.update(verify: false)


AllureCucumber.configure do |config|
    config.results_directory = "/logs"
    config.clean_results_directory = true
end

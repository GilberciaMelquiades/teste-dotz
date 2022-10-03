module Weather
  module V1
    class CallApiWeather
      include HTTParty
      def get(path,route,appid)
        @header = {
                   'Content-Type': 'application/json'
                  }

        @param =  { "appid" => appid}
        @fullPath = "#{path}#{route}"
        self.class.get(@fullPath, headers: @header, query: @param)
      end
    end
  end
end



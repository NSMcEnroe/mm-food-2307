class USDADatabaseService
  def conn
    Faraday.new(url: "https://api.nal.usda.gov") do |faraday|
      faraday.params["api_key"] = Rails.application.credentials.usda[:key]
    end 
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def foods_with_ingredient(ingredient)
    get_url("/fdc/v1/foods/search?query=#{ingredient}")
  end
end

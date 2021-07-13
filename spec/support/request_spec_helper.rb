module RequestSpecHelper
  # Parse JSON response to ruby hash
  def parsed_json_response
    JSON.parse(response.body)
  end
end

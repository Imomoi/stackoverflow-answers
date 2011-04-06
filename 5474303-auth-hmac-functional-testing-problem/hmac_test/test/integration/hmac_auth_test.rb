require 'test_helper'

class HmacAuthTest < ActionDispatch::IntegrationTest
  fixtures :all

  def setup
    #load from fixture
    @client = clients(:client_2)
  end

  # Replace this with your real tests.
  test "the truth" do
    return
    auth_hmac.sign!(request,client.key)

    get "/items.xml?api_client_key=#{@client.key}"

    assert_response :success
  end
end


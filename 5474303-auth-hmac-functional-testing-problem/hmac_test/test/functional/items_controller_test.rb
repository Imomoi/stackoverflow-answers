require 'test_helper'

class ItemsControllerTest < ActionController::TestCase
  def setup
    #load from fixture
    @client = clients(:client_2)
    ItemsController.any_instance.expects('hmac_authenticated?').returns(true)
  end

  def sign_valid_request(request,client)
    #auth_hmac = AuthHMAC.new(client.key => client.secret )
    #auth_hmac.sign!(request,client.key)
    # because this would be deleted in request.recycle! method in test framework
    #request.env.merge!(request.env['action_dispatch.request.parameters'])
    request
  end

  def test_response_client_xml
    @request =  sign_valid_request(@request,@client)

    pp @request
    get :index, {:api_client_key => @client.key, :format=> "xml"}
    @xml_response = @response.body
    assert_response :success
  end
end


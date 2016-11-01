require 'rails_helper'

RSpec.describe "api_keys/index", type: :view do
  before(:each) do
    assign(:api_keys, [
      ApiKey.create!(
        :token => "Token",
        :user_id => "User"
      ),
      ApiKey.create!(
        :token => "Token",
        :user_id => "User"
      )
    ])
  end

  it "renders a list of api_keys" do
    render
    assert_select "tr>td", :text => "Token".to_s, :count => 2
    assert_select "tr>td", :text => "User".to_s, :count => 2
  end
end

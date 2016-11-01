require 'rails_helper'

RSpec.describe "api_keys/show", type: :view do
  before(:each) do
    @api_key = assign(:api_key, ApiKey.create!(
      :token => "Token",
      :user_id => "User"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Token/)
    expect(rendered).to match(/User/)
  end
end

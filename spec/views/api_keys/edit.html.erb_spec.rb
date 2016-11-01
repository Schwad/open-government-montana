require 'rails_helper'

RSpec.describe "api_keys/edit", type: :view do
  before(:each) do
    @api_key = assign(:api_key, ApiKey.create!(
      :token => "MyString",
      :user_id => "MyString"
    ))
  end

  it "renders the edit api_key form" do
    render

    assert_select "form[action=?][method=?]", api_key_path(@api_key), "post" do

      assert_select "input#api_key_token[name=?]", "api_key[token]"

      assert_select "input#api_key_user_id[name=?]", "api_key[user_id]"
    end
  end
end

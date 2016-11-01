require 'rails_helper'

RSpec.describe "api_keys/new", type: :view do
  before(:each) do
    assign(:api_key, ApiKey.new(
      :token => "MyString",
      :user_id => "MyString"
    ))
  end

  it "renders new api_key form" do
    render

    assert_select "form[action=?][method=?]", api_keys_path, "post" do

      assert_select "input#api_key_token[name=?]", "api_key[token]"

      assert_select "input#api_key_user_id[name=?]", "api_key[user_id]"
    end
  end
end

require 'rails_helper'

RSpec.describe "Owners", type: :request do
  describe "GET /owners" do
    let(:header) {{'Accept' => 'application/json'}}
    it "index" do
      owners = create_list(:owner, 5)
      get owners_path, {}, header
      expect(response).to have_http_status(200)
      json_response = JSON.parse(response.body)
      expect(json_response["owners"].count).to eql(5)
      expect(json_response["owners"][0]["name"]).to eql owners[0].name
    end
    it "show" do
      owner = create(:owner)
      get "/#{owner.name.parameterize}", {}, header
      expect(response).to have_http_status(200)
      json_response = JSON.parse(response.body)
      expect(json_response["owner_name"]).to eql owner.name
    end
  end
end

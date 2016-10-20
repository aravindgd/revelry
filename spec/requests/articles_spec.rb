require 'rails_helper'

RSpec.describe "Articles", type: :request do
  describe "GET /articles" do
    let(:owner) { create(:owner) }
    let(:header) {{'Accept' => 'application/json'}}
    it "index" do
      articles = create_list(:article, 5, owner: owner)
      create_list(:article, 5)
      get "/#{owner.slug}/articles", {}, header
      expect(response).to have_http_status(200)
      json_response = JSON.parse(response.body)
      expect(json_response["owner_name"]).to eql owner.name
      expect(json_response["articles"].count).to eql(5)
      expect(json_response["articles"][0]["name"]).to match articles[0].name
    end

    it "show" do
      article = create(:article, owner: owner)
      get article_path(id: article.id), {}, header
      expect(response).to have_http_status(200)
      json_response = JSON.parse(response.body)
      expect(json_response["owner_name"]).to eql owner.name
      expect(json_response["name"]).to match article.name
    end
  end
end

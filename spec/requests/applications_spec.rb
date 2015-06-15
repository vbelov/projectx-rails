require 'rails_helper'

RSpec.describe "Application", type: :request do
  describe "GET /" do
    it "greets the world" do
      get root_path
      expect(response).to have_http_status(200)
      expect(response.body).to include('Hello world')
    end
  end

  describe "GET /any/path" do
    it "greets the world" do
      get '/any/path'
      expect(response).to have_http_status(200)
      expect(response.body).to include('Hello world')
    end
  end
end

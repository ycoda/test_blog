require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "#new" do
    it "レスポンスを返すこと" do
      get :new
      # expect(response).to be_success
      expect(response).to have_http_status "200"
    end
  end
end

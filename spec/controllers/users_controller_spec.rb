require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  it "200レスポンスを返す" do
    get :new
    expect(response).to be_success
  end
end

RSpec.describe UsersController do
  describe "GET index" do
    it "assigns @users" do
      get :index
      expect(response).to render_template("index")
    end
  end
end
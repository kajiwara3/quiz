module ControllerMacros
  def login_admin
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:administrator]
      @administrator = FactoryGirl.create(:administrator)
      sign_in @administrator
    end
  end

  def login_user
    before(:each) do
      # controller.stub(:authenticate_user!).and_return true
      # for rr
      stub(controller).authenticate_user { true }

      @request.env['devise.mapping'] = Devise.mappings[:user]
      @user = FactoryGirl.create(:user1)
      @user.confirm!
      sign_in @user
    end
  end
end
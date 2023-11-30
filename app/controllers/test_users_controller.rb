class TestUsersController < InheritedResources::Base

  private

    def test_user_params
      params.require(:test_user).permit(:email, :name, :desc)
    end

end

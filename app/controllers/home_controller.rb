class HomeController < ApplicationController
    def index   
        # printf(current_user.id)
        # @gazooyAll.each do |@gazooy|
        #     render "gazooys/show"
        #   end
        @gazooys = Gazooy.all
        @profiles = Profile.all
    end
end 
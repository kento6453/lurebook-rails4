class MylureController < ApplicationController

  def index
    @my_user = current_user
    @my_lures = @my_user.users_lures

    @my_lures_1st = @my_user.users_lures.where("priority = '1'")

    @my_lures_2nd = @my_user.users_lures.where("priority = '2'")

    @my_lures_3rd = @my_user.users_lures.where("priority = '3'")

  end

end

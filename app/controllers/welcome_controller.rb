class WelcomeController < ApplicationController
  def index
    
    @user = current_user

    @lures = Array.new
    @same_lure_users = Array.new 
    @my_lures = Array.new
    
    # 自分のルアーリストの表示
    if current_user then
      @lures = @user.users_lures

      # 同じルアーを持っているユーザー    
      @lures.each do  |lure| 
        @my_lures.push(lure.lure_id)
      end

      @same_lure_users = UsersLure.where('lure_id IN(?) and user_id <> (?)', @my_lures, current_user.id).uniq

    end 

    
    
    
  end
end

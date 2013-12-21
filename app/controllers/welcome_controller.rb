class WelcomeController < ApplicationController
  def index
    
    @user = current_user


    
    # 自分のルアーリストの表示
    if current_user then

      @my_lures = Array.new
      @same_lure_users = Array.new
      @my_lures_id = Array.new

      # 最近登録されたルアー
      @new_users_lures = UsersLure.order(:updated_at).reverse_order.limit(10)

      # 自分のもっているルアー
      @my_lures = @user.users_lures

      # 同じルアーを持っているユーザー    
      @my_lures.each do  |my_lure|
        @my_lures_id.push(my_lure.lure_id)
      end

      @same_lure_users = UsersLure.where('lure_id IN(?) and user_id <> (?)', @my_lures_id, current_user.id).uniq

    end 

  end
end

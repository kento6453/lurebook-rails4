# coding: utf-8

lure1 = Lure.find(1)  
lure2 = Lure.find(2)

puts lure1.name

alpha = User.find_by_email('alpha@hoge.com')  
beta = User.find_by_email('beta@hoge.com')  

puts alpha.email

UsersLure.create(:user_id => alpha.id, :lure_id => lure1.id,  :comment => "alpha_comment1")
UsersLure.create(:user_id => alpha.id, :lure_id => lure2.id,  :comment => "alpha_comment2")
UsersLure.create(:user_id => beta.id, :lure_id => lure1.id,  :comment => "beta_comment1")
UsersLure.create(:user_id => beta.id, :lure_id => lure2.id,  :comment => "beta_comment2")

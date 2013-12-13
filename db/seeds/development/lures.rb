# coding: utf-8

ima = Maker.find_by_name('ima')  
daiwa = Maker.find_by_name('DAIWA')  

genre = ["seabass", "bass"]
kind = ["フローティングミノー","バイブレーション","シンキングペンシル"]

Lure.create(:name => "sasuke95", :genre => genre[0], :kind => kind[0], :maker => ima, :price => 1500, :weight => 20.0, :buy_link => "")
Lure.create(:name => "sasuke96", :genre => genre[0], :kind => kind[0], :maker => ima, :price => 1500, :weight => 20.0, :buy_link => "")
Lure.create(:name => "sasuke97", :genre => genre[0], :kind => kind[0], :maker => ima, :price => 1500, :weight => 20.0, :buy_link => "")
Lure.create(:name => "sasuke98", :genre => genre[0], :kind => kind[0], :maker => ima, :price => 1500, :weight => 20.0, :buy_link => "")
Lure.create(:name => "sasuke99", :genre => genre[0], :kind => kind[0], :maker => ima, :price => 1500, :weight => 20.0, :buy_link => "")
User.destroy_all
Project.destroy_all
Team.destroy_all
MyAsset.destroy_all

u1 = User.create! email: 'test@example.com', password: 'valid_password', password_confirmation:'valid_password'
u2 = User.create! email: 'test1@example.com', password: 'valid_password', password_confirmation:'valid_password'
u3 = User.create! email: 'test2@example.com', password: 'valid_password', password_confirmation:'valid_password'
u4 = User.create! email: 'test3@example.com', password: 'valid_password', password_confirmation:'valid_password'
u5 = User.create! email: 'test4@example.com', password: 'valid_password', password_confirmation:'valid_password'
u6 = User.create! email: 'test5@example.com', password: 'valid_password', password_confirmation:'valid_password'
u7 = User.create! email: 'test6@example.com', password: 'valid_password', password_confirmation:'valid_password'

p1 = Project.create! name: "Arcadia"
p2 = Project.create! name: "Agartha"
p3 = Project.create! name: "Annwn"
p4 = Project.create! name: "Atlantis"
p5 = Project.create! name: "Avalon"

a1 = MyAsset.create! name: "Arondight"
a2 = MyAsset.create! name: "Galatine"
a3 = MyAsset.create! name: "Secace"
a4 = MyAsset.create! name: "Gram"
a5 = MyAsset.create! name: "Tizona"
a6 = MyAsset.create! name: "Masamune"
a7 = MyAsset.create! name: "Harpe"
a8 = MyAsset.create! name: "Ascalon"
a9 = MyAsset.create! name: "Longuinus"
a10 = MyAsset.create! name: "Caduceus"
a11 = MyAsset.create! name: "Parashu"

t1 = Team.create! name:"Delta"
t2 = Team.create! name:"Bravo"

p1.my_assets << a1 << a2 << a3
p2.my_assets << a4 << a5
p3.my_assets << a6 << a7 << a8
p4.my_assets << a9
p5.my_assets << a10 << a11

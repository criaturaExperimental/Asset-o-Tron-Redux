Project.destroy_all
MyAsset.destroy_all

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

p1.my_assets << a1 << a2 << a3
p2.my_assets << a4 << a5
p3.my_assets << a6 << a7 << a8
p4.my_assets << a9
p5.my_assets << a10 << a11

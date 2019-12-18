# coding: utf-8
	Vaccine.create({name: "なし"})
	Vaccine.create({name: "黄熱病"})
	Vaccine.create({name: "A型肝炎"})
	Vaccine.create({name: "B型肝炎"})
	Vaccine.create({name: "破傷風"})
	Vaccine.create({name: "狂犬病"})
	Vaccine.create({name: "ポリオ"})
	Vaccine.create({name: "日本脳炎"})
	Vaccine.create({name: "麻疹風疹"})
	Vaccine.create({name: "不明"})


User.create!(
  [
    {
      email: 'test1@test.com',
      password: '111111',
      name: 'テスト太郎',
    },
    {
      email: 'test2@test.com',
      password: '222222',
      name: 'テスト徹子',
    }
  ]
)

15.times do |n|
  country  = Faker::country
end
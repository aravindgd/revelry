owner = Owner.create(name: "Matz")
10.times do |iter1|
  owner.articles.build(name: "MINASWAN", price: rand(1.0..100.1), description: 'some desc').save!
end
10.times do |iter|
  owner = Owner.create!(name: "owner#{iter}")
  10.times do |iter1|
    owner.articles.build(name: "article#{iter1}", price: rand(1.0..100.1), description: 'some desc').save!
  end
end

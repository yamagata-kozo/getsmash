if Article.count == 0
  10.times do |n|
    Article.create({
      title: "Sample Title #{ n }",
      body: "this is sample article #{ n }"
    })
  end
end

if Category.count == 0
  10.times do |n|
    Category.create({
      name: "sample category #{ n }"
    })
  end
end

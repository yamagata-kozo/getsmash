if Article.count == 0
  10.times do |n|
    Article.create({
      title: "Sample Title #{ n }",
      body: "this is sample article #{ n }"
    })
  end
end

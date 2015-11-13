include RandomData
=begin
# Create Posts
50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body:  RandomData.random_paragraph
  )
end
posts = Post.all

# Create Comments

100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  ) 
end
=end
Post.find_or_create_by(title: "This is the best post ever written!")
Comment.find_or_create_by(body: "blah!!!")

puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"

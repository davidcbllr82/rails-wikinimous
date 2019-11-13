Article.destroy_all

def fake_content
  paragraphs = []
  paragraphs << Faker::TvShows::GameOfThrones.quote
  paragraphs << "![](https://source.unsplash.com/random/1000x500)"
  paragraphs << "## #{Faker::Quote.famous_last_words}"
  paragraphs << Faker::TvShows::GameOfThrones.quote
  paragraphs << "**#{Faker::JapaneseMedia::DragonBall.character}** #{Faker::ChuckNorris.fact}"
  paragraphs << "## #{Faker::Quote.yoda}"
  paragraphs << "#{Faker::Quote.matz} [#{Faker::Commerce.product_name}](#{Faker::Internet.url}) #{Faker::Quote.most_interesting_man_in_the_world}"
  paragraphs << Faker::TvShows::TwinPeaks.quote
  paragraphs.flatten.join("\n\n")
end

15.times do
  Article.create(
    title: Faker::GreekPhilosophers.quote,
    content: fake_content
  )
end

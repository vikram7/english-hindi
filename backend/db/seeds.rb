require 'csv'

file = File.read("english-hindi-seed-file.csv")
csv = CSV.parse(file, headers: true, header_converters: :symbol)
count = 0

csv.each do |row|
  part_of_speech = row[:part_of_speech]
  puts "Creating Category with a part of speech #{part_of_speech}"
  category = Category.find_or_create_by!(part_of_speech: part_of_speech)

  text = row[:text]
  puts "Creating Meaning with text of #{text}"
  meaning = Meaning.find_or_initialize_by(text: text)
  meaning.category_id = category.id
  meaning.save!

  text_hindi = row[:text_hindi]
  text_romanized = row[:text_romanized]
  puts "Creating Word. Hindi: #{text_hindi}. Romanized: #{text_romanized}"
  word = Word.find_or_initialize_by(text_hindi: text_hindi)
  word.meaning_id = meaning.id
  word.text_romanized = text_romanized
  word.category_id = category.id
  if word.get_forvo_url
    word.forvo_url = word.get_forvo_url
  end
  word.save!
end



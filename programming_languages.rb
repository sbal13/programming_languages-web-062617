require 'pry'
def reformat_languages(languages)
  final = Hash.new
  languages.each do |style, langs|
    langs.each do |language, attributes|
      final[language] ||= attributes
      final[language][:style].nil? ? final[language][:style] = [style] : final[language[:style]] << style
    end
  end
end

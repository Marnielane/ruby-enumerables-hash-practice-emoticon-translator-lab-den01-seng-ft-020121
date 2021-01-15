# require modules here
require 'pry'
require 'yaml'

def load_library(file_path)
  final_hash = {}
  YAML.load_file(file_path).each do |key, value|
    final_hash[key] = {}
    final_hash[key][:english] = value[0]
    final_hash[key][:japanese] = value[1]
  end
  final_hash
end

def get_japanese_emoticon(path, emoticon)
  load_library(path).each do |key, value|
      if value[:japanese] == emoticon
        return key
      else
        return "Sorry, that emoticon was not found"
      end

  end
  
end

def get_english_meaning(path, emoticon)
  load_library(path).each do |key, value|
      if value[:english] == emoti
  
  end
  # code goes here
end
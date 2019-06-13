# require modules here
require 'yaml'


def load_library(yaml_file_path)
  # code goes here
  library = YAML.load(File.read(yaml_file_path))
  return library
end

def get_japanese_emoticon(yaml_file_path, english_emoticon)
  # code goes here
  message = "Sorry, that emoticon was not found."
  library = load_library(yaml_file_path)
  library.each do |(meaning, emoticon_array)|
    if emoticon_array[0] == english_emoticon
      message = emoticon_array[1]
      break
    end
  end
  return message
end

def get_english_meaning
  # code goes here
end

load_library

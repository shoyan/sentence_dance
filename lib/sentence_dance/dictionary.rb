require 'yaml'
require 'singleton'

module SentenceDance
  class Dictionary
    include Singleton
    attr_reader :list

    def initialize(file = 'default')
      @list = YAML.load(File.open(File.expand_path("../dictionaries/#{file}.yml", __FILE__)).read)
    end
  end
end

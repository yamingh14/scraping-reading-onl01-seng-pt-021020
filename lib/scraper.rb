require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")
class Course
  attr_accessor :title, :schedule, :description

  @@all = []

  def initialize
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end
end

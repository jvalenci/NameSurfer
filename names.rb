require 'dm-core'
require 'dm-migrations'

DataMapper.setup(:default , "sqlite3://#{Dir.pwd}/names.db")

class NameChart
  include DataMapper::Resource
  property :id, Serial
  property :name, String, :required => true
  property :year1900, String
  property :year1910, String
  property :year1920, String
  property :year1930, String
  property :year1940, String
  property :year1950, String
  property :year1960, String
  property :year1970, String
  property :year1980, String
  property :year1990, String
  property :year2000, String

end

DataMapper.finalize()
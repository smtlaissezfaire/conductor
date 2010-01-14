module ActiveRecordAttributeParser
  require File.expand_path(File.dirname(__FILE__) + "/active_record_attribute_parser/version")
  require File.expand_path(File.dirname(__FILE__) + "/active_record_attribute_parser/parser")
  
  def self.parse(hash)
    Parser.parse(hash)
  end
end
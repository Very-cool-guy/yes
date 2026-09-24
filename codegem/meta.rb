module ActsAsCsv
  class CsvRow
    attr_accessor :headers, :contents
    def initialize(headers, contents)
      @headers = headers
      @contents = contents
    end

    def method_missing name, *args
      name = name.to_s
      if @headers.include? name
        @contents[@headers.index name]
      end
    end
  end
  
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def acts_as_csv
      include InstanceMethods
    end
  end

  module InstanceMethods
    def read
      @csv_contents = []
      filename = self.class.to_s.downcase + '.csv'
      file = File.new(filename)
      @headers = file.gets.chomp.split(',')

      file.each do |row|
        @csv_contents << row.chomp.split(',')
      end
    end

    attr_accessor :headers, :csv_contents

    def initialize
      read
    end

    def each(&block)
      @csv_contents.each do |row|
        yield(CsvRow.new(@headers, row))
      end
    end
  end
end

class Hi
  include ActsAsCsv
  acts_as_csv
end

m = Hi.new
puts m.headers.inspect
puts m.csv_contents.inspect
m.each {|row| puts row.one}

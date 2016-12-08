require ('csv')

class ClassCreator  

  def create_class classname, filename
    filename = File.dirname(__FILE__) << "/#{filename}.csv"

    data = CSV.open(filename, headers: true)#data.read
    headings =  data.read.headers
    data = CSV.read(filename,headers:true) 

    new_class = Class.new do
      def initialize(row)
        @row = row
      end
    end

    headings.each do |heading|
      new_class.send(:define_method,heading.downcase) do
        puts "The value of #{heading} is #{@row[heading]}"
      end
    end

    Object.const_set(classname.capitalize, new_class)#p eval("#{cname.capitalize}.class")

    create_instances new_class, data
  end

  def create_instances new_class, csvdata    
    instances = []
    csvdata.each_entry do |item| 
      instances << new_class.new( item) #eval("#{cname.capitalize}.new(#{item})")#
    end
    instances
  end


end
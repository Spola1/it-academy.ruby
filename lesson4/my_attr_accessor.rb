class Class
  def my_attr_accessor(*args)
    args.each do |arg|
      self.class_eval("def #{arg};@#{arg};end") #геттер
      self.class_eval("def #{arg}=(val);@#{arg}=val;end") #сеттер
    end
  end
end

class Persone
  my_attr_accessor :name, :sex
end

persone = Persone.new
persone.name = 'Alex'
p persone.name
persone.sex = 'M'
p persone.sex

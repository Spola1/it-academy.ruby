class Module
  def my_attr_accessor( method_name )
    inst_variable_name = "@#{method_name}".to_sym
    define_method method_name do
      instance_variable_get inst_variable_name
    end
    define_method "#{method_name}=" do |new_value|
      instance_variable_set inst_variable_name, new_value
    end
  end
end

class Persone
  my_attr_accessor :name
  my_attr_accessor :sex
end

persone = Persone.new
persone.name = 'Alex'
persone.sex = 'M'
p persone.name
p persone.sex

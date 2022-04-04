IRB sessions:

$irb
2.4.10 :001 > irb
2.4.10 :001 > jobs
 => #0->irb on main (#<Thread:0x00007fafbd872f20>: stop)
#1->irb#1 on main (#<Thread:0x00007fafbd8781f0>: running) 
2.4.10 :002 > fg 0
 => #<IRB::Irb: @context=#<IRB::Context:0x00007fafbd967188>, @signal_status=:IN_EVAL, @scanner=#<RubyLex:0x00007fafbd954dd0>> 
2.4.10 :002 > class Apple

  attr_reader :variety, :origin, :history
  def initialize(**args)
    @variety = args[:variety]
    @origin = args[:origin]
    @history = args[:history]
  end
end

apple = Apple.new(variety: 'Honeycrisp', origin: 'Minnesota', history: 'Introduction to Market: 1991')
 => :initialize 
 => #<Apple:0x00007fafbe8325f0 @variety="Honeycrisp", @origin="Minnesota", @history="Introduction to Market: 1991"> 
2.4.10 :013 > irb Apple
2.4.10 :001 > jobs
 => #0->irb on main (#<Thread:0x00007fafbd872f20>: stop)
#1->irb#1 on main (#<Thread:0x00007fafbd8781f0>: stop)
#2->irb#2 on Apple (#<Thread:0x00007fafbda72190>: running) 
2.4.10 :002 > Apple.instance_methods
 => [:history, :variety, :origin, :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :tap, :public_send, :public_method, :singleton_method, :instance_variable_defined?, :define_singleton_method, :method, :instance_variable_set, :extend, :to_enum, :enum_for, :<=>, :===, :=~, :!~, :eql?, :respond_to?, :freeze, :inspect, :object_id, :send, :display, :to_s, :nil?, :hash, :class, :singleton_class, :clone, :dup, :itself, :taint, :tainted?, :untaint, :untrust, :untrusted?, :trust, :frozen?, :methods, :singleton_methods, :protected_methods, :private_methods, :public_methods, :instance_variable_get, :instance_variables, :!, :==, :!=, :__send__, :equal?, :instance_eval, :instance_exec, :__id__] 
2.4.10 :003 > apple
NameError: undefined local variable or method 'apple' for Apple:Class
	from (irb#2):3
2.4.10 :004 > 



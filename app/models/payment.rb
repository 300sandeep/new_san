module Payment

  def self.included(base)
    # base is our target class. Invoke `extend` on it and pass nested module with class methods.
    binding.pry
    def base.show1
    	p "show1"
    end
    def base.show2
    	p "show1"
    end
  end

  def mod1
    "mod1"
  end

  #module ClassMethods
    def mod2
      "mod2"
    end
  #end

end
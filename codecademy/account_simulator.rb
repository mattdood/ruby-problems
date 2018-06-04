class Account
  attr_reader :name, :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end

  private
  def pin
    @pin = 1234
  end

  def pin_error
    return "Access denied: incorrect PIN."
  end

  public
  def display_balance(pin_number)
   	@pin_number = pin_number
		if @pin_number == pin
    	puts "Balance: $#{@balance}."
 	 	else
    	puts pin_error
  	end
  end

  def withdraw(pin_number, amount)
    @pin_number = pin_number
    @amount = amount
    if @pin_number == pin
      puts "Withdrew #{@amount}. New balance: $#{@balance}."
    else
      puts pin_error
    end
  end
end

my_account = Account.new("Matthew", 1_000_000)
my_account.withdraw(11, 500_000)
my_account.display_balance(1234)
my_account.withdraw(1234, 500_000)
my_account.display_balance(1234)

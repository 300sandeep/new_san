class StripeChargesServices
  DEFAULT_CURRENCY = 'usd'.freeze
  
  def initialize(params, user)
    @stripe_email = params[:stripeEmail]
    @stripe_token = params[:stripeToken]
    @amount = params[:amount].to_i * 100
    @user = user
  end

  def call
    create_charge(find_customer)
  end

  private

  attr_accessor :user, :stripe_email, :stripe_token, :amount

  def find_customer
	  #  if user.stripe_token
	  #    retrieve_customer(user.stripe_token)
	  #  else
	  create_customer
	  #end
  end

  def retrieve_customer(stripe_token)
    Stripe::Customer.retrieve(stripe_token) 
  end

  def create_customer
    customer = Stripe::Customer.create(
      email: stripe_email,
      source: stripe_token
    )
    user.subscriptions.create(customer_id: customer.id, user_id: @user.id)
    customer
  end

  def create_charge(customer)
    # Stripe::Charge.create(
    #   customer: customer.id,
    #   amount: amount,
    #   description: customer.email,
    #   currency: DEFAULT_CURRENCY
    # )
    subscription = customer.subscriptions.create({:plan => 'gold'})
    binding.pry
  end

end


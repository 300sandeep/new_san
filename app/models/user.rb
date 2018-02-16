class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  rolify
  attr_accessor :check
  has_many :members, :foreign_key => :clinic_id
  #has_many :members, :foreign_key => :client_id
  has_many :clients, :through => :members, dependent: :destroy
  #has_many :posts, :through => :post_connections, :source => :post_b
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :email, confirmation: true
  validates :first_name, presence: true, :uniqueness => true,  if: :location_other
  
  def self.search(search, page)
	  paginate :per_page => 5, :page => page,
    :conditions => ['first_name like ?', "%#{search}%"],
    :order => 'name'
	end

  def location_other
    self.check.to_sym == :client if self.check.present?
  end

 

end



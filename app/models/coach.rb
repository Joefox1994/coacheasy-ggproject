class Coach < ActiveRecord::Base
  
  has_many :programs
  
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :firstname, :lastname, :coach, :avatar
  # attr_accessible :title, :body
  has_attached_file :avatar, :styles => { :medium => "150x150>", :thumb => "25x25>" }, :default_url => "/images/:style/missing.png"

  
end

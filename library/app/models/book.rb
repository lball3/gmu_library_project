class Book < ActiveRecord::Base
  GENRES = ['Contemporary Fiction','Fiction','Science Fiction']

  validates :isbn, :title, :abstract, :pages, 
            :genre, :published_on, :total_in_library, 
            presence: true
  validates :abstract, length: { minimum: 15 }
  validates_numericality_of :pages, :total_in_library, :only_integer => true, :greater_than_or_equal_to => 0
  # validates inclusion - genre (need list first)
  validates :genre, :inclusion => { :in => GENRES}

  has_many :reservations, dependent: :destroy



  def self.search(search)
    where("title like :search OR author like :search", search: "%#{search}%")      
  end



  before_save do 
    if (self.author_id) 
      self.author = Author.find(self.author_id).name
    end
  end
end

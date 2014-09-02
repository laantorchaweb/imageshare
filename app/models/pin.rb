class Pin < ActiveRecord::Base

    has_attached_file :image, :whiny => false, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

    validates :description, presence: true
    validates :user_id, presence: true
    validates_attachment :image, :content_type => { :content_type => ["image/jpeg", "image/jpg", "image/gif", "image/png"] }

    belongs_to :user
end

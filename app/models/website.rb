class Website < ActiveRecord::Base
has_attached_file :iamge, styles: { thumb:  "100x100#" }
validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

validates :image, attachment_presence: true
validates_with AttachmentPresenceValidator, attributes: :image
validates_with AttachmentSizeValidator, attributes: :image, less_than: 1.megabytes
end

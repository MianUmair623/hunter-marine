class NewsArticle < ActiveRecord::Base
  include ActionView::Helpers::SanitizeHelper
  validates_presence_of :title, :category, :text
  has_attached_file :file
  do_not_validate_attachment_file_type :file

  has_attached_file :image, styles: { resized: '740>' }
  validates_attachment :image,
    content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] },
    size: { in: 0..6.megabyte }


  # remove file
  attr_writer :remove_file
  def remove_file
    @remove_file || false
  end
  before_validation { self.file=nil if self.remove_file == '1' }

  # remove image
  attr_writer :remove_image
  def remove_image
    @remove_image || false
  end
  before_validation { self.image=nil if self.remove_image == '1' }


  def teaser
    return "" if self.text.nil?
    strip_tags(self.text[0..300]) + "..."
  end

end
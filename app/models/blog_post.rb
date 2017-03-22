
# Blogpost inherits from CMS Entry
class BlogPost < KryptonicCms::Entry

  content_attr :body, :text

  # where to search
  searchable_attributes :title, :body

  # Validate body is present
  validates :body, presence: true

end
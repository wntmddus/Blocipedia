class Wiki < ApplicationRecord
  belongs_to :user
  #default_scope { where(published: true) }
  before_save :update_published_at, if: Proc.new {|w| w.published_changed?}
  before_save :set_published
  def set_published
    self.published = true if self.published == nil
  end
  private

  def update_published_at
    self.published_at = Time.now if self.published?
  end
end

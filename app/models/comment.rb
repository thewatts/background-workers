class Comment < ActiveRecord::Base
  belongs_to :article

  validates :article_id, :presence => true

  def self.for_dashboard
    order('created_at DESC').limit(5).all
  end

  def self.update_statistics
    calculate_total_word_count
  end

  def self.calculate_total_word_count
    total = all.inject(0) {|total, a| total += a.word_count }
    DataCache.set 'comment/total_word_count', total
  end

  def word_count
    body.split.count
  end

  def self.total_word_count
    DataCache.get_i 'comment/total_word_count'
  end
end

class ArticleTotalWordCount
  @queue = :total_word_count

  def self.perform
    Article.calculate_total_word_count
  end
end

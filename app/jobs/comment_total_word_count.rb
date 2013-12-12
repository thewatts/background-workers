class CommentTotalWordCount
  @queue = :total_word_count

  def self.perform
    Comment.calculate_total_word_count
  end
end

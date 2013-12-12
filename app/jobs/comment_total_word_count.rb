class CommentTotalWordCount
  @queue = :total_word_count

  def self.perform
    Comment.total_word_count
  end
end

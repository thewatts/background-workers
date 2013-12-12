class CommentTotalWordCount
  @queue = :total_word_count

  def self.perform
    DataCache.set 'comment_total_word_count', Comment.total_word_count
  end
end

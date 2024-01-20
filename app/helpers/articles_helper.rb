module ArticlesHelper
  def truncate_body(article, word_count = 22)
    words = article.body.split(' ')
    truncated_body = words[0, word_count].join(' ')
    truncated_body += ' ...' if words.length > word_count
    truncated_body
  end
end

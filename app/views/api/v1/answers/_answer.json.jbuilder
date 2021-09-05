json.extract! answer, :id, :body
json.created_at "#{time_ago_in_words answer.created_at} ago"

json.extract! question, :id, :title
json.created_at "#{time_ago_in_words question.created_at} ago"

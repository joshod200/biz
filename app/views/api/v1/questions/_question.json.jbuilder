json.extract! question, :id, :title
json.user question.user
json.created_at "#{time_ago_in_words question.created_at} ago"

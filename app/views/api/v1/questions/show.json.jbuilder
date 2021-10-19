json.partial! "api/v1/questions/question", question: @question
json.body @question.body
json.answers(@question.answers) do |answer|
  json.partial! "api/v1/answers/answer", answer: answer
end

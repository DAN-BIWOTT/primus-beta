json.extract! exam, :id, :date, :examName, :studentName, :subject, :results, :created_at, :updated_at
json.url exam_url(exam, format: :json)

json.extract! @tip, :id, :title, :headline, :image

json.steps @tip.steps.each do |step|
	json.step step.displayIndex
	json.heading step.heading
	json.image step.image
	json.content step.content
end

json.extract! @tip, :created_at, :updated_at

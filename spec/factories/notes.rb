FactoryBot.define do
  factory :note do
    message { "My importnat note." }
    association :project
    user { project.owner }

    trait :with_attachment do
      attachment { File.new("#{Rails.root}/spec/files/attachment.jpeg")}
    end
  end
end

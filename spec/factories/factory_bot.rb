FactoryBot.define do
  factory :user do
    email { Faker::Internet.email}
    password {"123456"}
  end
end

FactoryBot.define do
  factory :article do
    title {"First article"}
    body {"Article body"}
    association :user, strategy: :build #builds user factory for test but doesn't save to test database
    user_id {user.id} #foreign key 
  end
end

# FactoryBot.define do
#   factory :user do 
#     email {Faker::Internet.email}
#     password {"112"}
#   end
#   factory :article do
#     title {}
#     body {}
#   end
# end

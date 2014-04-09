# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :reservation do
    start_time "2014-04-09"
    end_time "2014-04-09"
    table_number 1
  end
end

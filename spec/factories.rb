
FactoryGirl.define do
    factory :customer do
        first_name "Asma"
        last_name "Behih"
        address "Al Nasr"
        email "nabehih@gmail.com"
        phone "97444991456"

    end
  
factory :cart do
  email "nabehih@gmail.com"
  menu_items "[apple,orange,banana]"
  food_id 1
  association :customer
end


factory :food do
name "Apple"
price 12
available "true"
association :food

end



end


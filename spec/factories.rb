
FactoryGirl.define do
    factory :customer do
        first_name "Asma"
        last_name "Behih"
        address "Al Nasr"
        email "nabehih@gmail.com"
        phone "97444991456"

    end
  
factory :cart do
  email "nbehih@gmail.com"
  menu_items ["apple","banan"]
  password "ahousain"
  password_confirmation "ahousain"
  password_digest "fngbjhbndfjgbn;gnb"
  association :customer
end


factory :food do
name "Apple"
price 12
available "true"
association :cart

end



end


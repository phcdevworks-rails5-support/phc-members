FactoryGirl.define do
  factory :phcmember_members_listing, class: 'Phcmember::Members::Listing' do
    mlcontactname "MyString"
    mlcompanyname "MyString"
    mladdressl1 "MyString"
    mladdressl2 "MyString"
    mlcity "MyString"
    mlprovince "MyString"
    mlcountry "MyString"
    mlpostalcode "MyString"
    mlphone "MyString"
    mlwebsite "MyString"
    mlemail "MyString"
    main nil
    account_id 1
  end
end
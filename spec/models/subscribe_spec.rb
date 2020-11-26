# spec/models/ubscribe_spec.rb

require 'rails_helper'

RSpec.describe Subscribe, type: :model do
    subject {
        Subscribe.new(email: "oyindamola.kosemani@gmail.com", location: "Lagos")
    }
    before {
        subject.save
    }
  it "email should be present" do
    subject.email = nil 
    expect(subject).to_not be_valid
  end

  it "is valid with valid attributes" do
    expect(Subscribe.new).to_not be_valid
  end

  it "location should be present" do
    subject.location = nil 
    expect(subject).to_not be_valid
  end
  it "is valid with valid attributes" do
    subject.location = "Anything"
    subject.email = "Anything"
    expect(subject).to be_valid
  end
#   it "is not valid without a email" do
#     subscribe = Subscribe.new(email: nil)
#     expects(subscribe).to_not be_valid
#   end
#   it "is not valid without a location" do
#     subscribe = Subscribe.new(location: nil)
#     expects(subscribe).to_not be_valid
#   end
end
#spec/models/subscribe_spec.rb 
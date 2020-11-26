# spec/models/ubscribe_spec.rb

require 'rails_helper'

RSpec.describe Subscribe, type: :model do
    subject {
        Subscribe.new(email: "a.b@gmail.com", location: "Lagos")
        Subscribe.new(email: "a.c@gmail.com", location: "Lagos")
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
  it "subscription should be found" do
    # sub = Subscribe.find_by(email: subject1.email, location: subject1.location)
    expect(Subscribe.find_by(email: subject.email, location: subject.location)).to be_valid
  end

  it "subscription should be found" do
    sub = Subscribe.find_by(email: subject.email, location: subject.location)
    expect(Subscribe.destroy(sub[:id])).to be_valid
  end
end

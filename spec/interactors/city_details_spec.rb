require 'rails_helper'

RSpec.describe CityDetails, type: :interactor do
  describe '.call' do
    subject = CityDetails.call(search: 'Lagos')
    it 'city is valid' do
      expect(subject.city_details.location).to eq('Lagos')
    end
    subject1 = CityDetails.call(search: 'xxx')
    it 'city is not valid' do
      expect(subject1.city_details.location).to_not eq('Lagos')
    end
    # pending "add some examples to (or delete) #{__FILE__}"
  end
end
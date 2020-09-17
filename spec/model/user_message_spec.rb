require 'rails_helper'

RSpec.describe UserMessage, :type => :model do
  subject {
    described_class.new(first_name: "Anything",
                        last_name: "Lorem ipsum",
                        email: 'gijuambrose2@gmail.com',
                        phone_number: '7736280803',
                        message: "you are good")
  }


  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a first name" do 
    subject.first_name = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a last name" do 
    subject.last_name = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a email" do
    subject.email = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a phone number" do 
    subject.phone_number = nil
    expect(subject).to_not be_valid
  end
  it "is not valid it phone number has alphabets and symbols" do 
    subject.valid?
    expect(subject.phone_number).to eq(7736280803)
  end
end
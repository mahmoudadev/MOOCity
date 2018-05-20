require 'rails_helper'

RSpec.describe User, type: :model do

  context "validation" do
    it 'should name exists' do
      user = User.new(name: 'mahmoud' , email: "m@msaa.com", gender:"Male", password:"123456", birthday:"22/06/1994", photo:"example.jpg").save
      expect(user).to eq(true)
    end


    it 'should attachment exists for each lecture' do

      lecture = Lecture.new(course_id: 4 , content: "sometext...", attachment:"").save
      expect(lecture).to eq(false)

    end

  end


end

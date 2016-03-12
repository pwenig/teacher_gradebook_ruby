require 'rails_helper'
require 'spec_helper'

describe 'students' do

  before student = Student.create(name: "Jeff Spicoli", grade: 50) do
  end

  it 'creates a student name' do
    expect(student.name).to eq("Jeff Spicoli")
    expect(student.grade).to eq(50)
  end

end


require 'rails_helper'
require 'spec_helper'

describe 'students' do


  it 'creates a student name' do
    create_students
    expect(Student.first.name).to eq("Jeff Spicoli")
    expect(Student.first.grade).to eq(50)
  end


  it 'finds the min grade' do
    create_students
    result = Student.find_min
    expect(result).to eq(50)
  end

  it 'finds the max grade' do
    create_students
    result = Student.find_max
    expect(result).to eq(90)
  end

  it 'finds the average grade' do
    create_students
    result = Student.find_average
    expect(result).to eq(70)
  end

  it 'adds student status' do
    create_students
    results = Student.set_status
    expect(results[0].status).to eq "red"
    expect(results[1].status).to eq "none"
  end


end


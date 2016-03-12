require 'rails_helper'
require 'spec_helper'

feature 'home page' do

  scenario 'teacher visits home page' do
    visit root_path
    expect(page).to have_css "a", text: "Grade Book"
  end

end

require 'rails_helper'

describe 'home page' do
  it 'shows title' do
    visit '/'
    expect(page).to have_content 'N.P. ;-)'
  end
end

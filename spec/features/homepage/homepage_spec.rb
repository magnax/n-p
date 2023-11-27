# frozen_string_literal: true

require 'rails_helper'

describe 'home page' do
  context 'elements' do
    it 'has title' do
      visit '/'
      expect(page).to have_content 'N.P. ;-)'
    end

    it 'has a form to send information' do
      visit '/'
      expect(page).to have_selector('textarea[name="text"]')
      expect(page).to have_css('#info-text-box')
      expect(page).to have_selector('button[type="submit"]')
    end
  end

  context 'functionality - sending info' do
    context 'valid info' do
      it 'submit information from input' do
        visit '/'
        fill_in 'info-text-box', with: 'Some info'
        click_button 'send-button'
        expect(page).to have_content 'Thanks!'
      end
    end

    context 'invalid info' do
      it 'submit information from input' do
        visit '/'
        fill_in 'info-text-box', with: ''
        click_button 'send-button'
        expect(page).to have_css '.site-messages-error', text: 'Error'
      end
    end
  end
end

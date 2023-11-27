# frozen_string_literal: true

require 'rails_helper'

describe Information do
  it { is_expected.to validate_presence_of :text }
end

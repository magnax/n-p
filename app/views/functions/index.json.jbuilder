# frozen_string_literal: true

json.array! @functions, partial: 'functions/function', as: :function

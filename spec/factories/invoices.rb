# frozen_string_literal: true

FactoryBot.define do
  factory :invoice do
    invoice_number { '123ABC' }
    total { '12' }
    invoice_date { Time.current }
    status { 'created' }
  end
end

# frozen_string_literal: true

class Invoice < ApplicationRecord
  scope :filter_by_date, lambda { |start_date, end_date|
    where('invoice_date BETWEEN ? AND ?', start_date.beginning_of_day, end_date.end_of_day)
  }

  def self.top_10_days
    Invoice
      .group('DATE(invoice_date)')
      .order(Arel.sql('COUNT(*) DESC'))
      .limit(10)
      .pluck(Arel.sql('DATE(invoice_date), COUNT(*)'))
  end
end

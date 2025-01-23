# frozen_string_literal: true

require 'rails_helper'

RSpec.describe InvoicesDailyReportJob, type: :job do
  it 'validates the shipment of the email' do
    expect do
      InvoicesDailyReportJob.perform_now
    end.to send_email(to: 'example@example.com')
  end
end

# frozen_string_literal: true

class InvoicesDailyReportJob < ApplicationJob
  queue_as :default

  def perform(*_args)
    top_invoices_created_dates = Invoice.top_10_days
    InvoicesDailyReportJobMailer.with(
      top_invoices_created_dates: top_invoices_created_dates
    ).top_created_invoices_email.deliver_now
  end
end

# frozen_string_literal: true

# Preview all emails at http://localhost:3000/rails/mailers/invoices_daily_report_job_mailer
class InvoicesDailyReportJobMailerPreview < ActionMailer::Preview
  def top_created_invoices_email
    top_invoices_created_dates = Invoice.top_10_days
    InvoicesDailyReportJobMailer.with(
      top_invoices_created_dates: top_invoices_created_dates
    ).top_created_invoices_email
  end
end

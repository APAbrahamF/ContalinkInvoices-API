# frozen_string_literal: true

class InvoicesDailyReportJobMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def top_created_invoices_email
    @top_invoices_created_dates = params[:top_invoices_created_dates]
    mail(
      to: 'example@example.com',
      subject: 'Top 10 Days in which more invoices were created'
    )
  end
end

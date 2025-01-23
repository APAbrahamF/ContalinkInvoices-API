# frozen_string_literal: true

class InvoicesController < ApplicationController
  before_action :obtain_all_invoices, only: [:index]

  def index
    render json: @invoices
  end

  private

  def permitted_params
    params.permit(:start_date, :end_date)
  end

  def obtain_all_invoices
    start_date = permitted_params[:start_date]
    end_date = permitted_params[:end_date]
    @invoices = if start_date.nil? || end_date.nil?
                  Invoice.all
                else
                  Invoice.filter_by_date(start_date.to_date, end_date.to_date)
                end
  end
end

# frozen_string_literal: true

class InvoiceSerializer < ActiveModel::Serializer
  attributes :id,
             :invoice_number,
             :total,
             :invoice_date,
             :status
end

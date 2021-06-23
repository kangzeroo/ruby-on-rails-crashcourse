# visible or not
module Visible
  extend ActiveSupport::Concern

  VALID_STATUSES = ['public', 'private', 'archived'].freeze

  included { validates :status, inclusion: { in: VALID_STATUSES } }

  class_methods do
    def public_count
      where(status: 'public').count
    end
  end

  def archived?
    status == 'archived'
  end
end

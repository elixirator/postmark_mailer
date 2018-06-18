require 'postmark_mailer'

# Null object for MessageDelivery.
# Follows the same interface but performs no deliveries.
# However, it will schedule a job if #perform_later is called.
# It allows to at least test that our mailer was scheduled...
module PostmarkMailer
  class NullDelivery < MessageDelivery
    # Does nothing
    # @return [nil]
    def deliver_now; end
  end
end

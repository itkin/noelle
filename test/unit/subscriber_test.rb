require 'test_helper'

class SubscriberTest < ActiveSupport::TestCase

  def test_email_is_not_sent_when_email_is_blank
    subscriber = Subscriber.new('name' => 'io')
    assert !subscriber.save
    assert subscriber.errors[:email]
  end

end

# -*- encoding : utf-8 -*-
class Newsletter < ActionMailer::Base

  def report(subscriber)
    @subscriber = subscriber
    mail  :from => 'noelle.webflows.fr',
          :to => User.with(:manage_newsletter => true).map(&:email),
          :subject => "Noelle : Nouvel abonné a la newsletter Noelle Echiffre"

  end
end

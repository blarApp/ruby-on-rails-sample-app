module PushNotifications
    module Promoters
      class SendGroupLoanApplicationPassedToReviewJob < ApplicationJob
        def perform
          message_params
        end
  
        private
  
        def message_params
          title = "Default Title"
          body  = "Default Body"
  
          {
            data: {
              notifee: {
                id: "group_loan_application_passed_to_review",
                title:,
                body:,
                android: android_params
              }.to_json
            },
            android: {
              priority: "high"
            }
          }
        end
  
        def android_params
          { some_android_key: "some_android_value" }
        end
      end
    end
  end
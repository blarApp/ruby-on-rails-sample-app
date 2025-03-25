module PushNotifications
    module Promoters
      class SendGroupLoanApplicationPassedToReviewJob < ApplicationJob
        def perform

          message_params
        end
  
        private
  
        def message_params
          {
            data: {
              notifee: {
                id: '2025blar2025blar2025',
                title:,
                body:,
                android: android_params
              }.to_json
            },
            android: {
              priority: 'high'
            }
          }
        end
  
        def android_params
          { some_android_key: '2025blar2025' }
        end
      end
    end
  end
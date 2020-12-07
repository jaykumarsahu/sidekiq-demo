# frozen_string_literal: true
25.times {|n|
    LowPriorityWorker.perform_async(n)
    MediumPriorityWorker.perform_async(n)
    HighPriorityWorker.perform_async(n)
    TopPriorityWorker.perform_async(n)

}




3.times { |n| LowPriorityWithRetryFalseWorker.perform_async(n) }
3.times { |n| LowPriorityWithRetryZeroWorker.perform_async(n) }
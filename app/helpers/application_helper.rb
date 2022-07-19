module ApplicationHelper
  def calculate_quotation(municipal_evaluation)
    
    prime_avant_TX = (((municipal_evaluation.to_f-500000.0 ) / 1000.0 )* 1.17 ) + 320.0
    emission_fees = 20.0
    tax = prime_avant_TX * 9.0 / 100.0
    prime_avant_TX + emission_fees + tax
  end
end

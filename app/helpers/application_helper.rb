module ApplicationHelper
  def calculate_quotation(municipal_evaluation)
    
    prime_avant_TX = (((municipal_evaluation.to_f-500000)/1000)*1.17)+320
    emission_fees = 20
    tax = prime_avant_TX * 9 / 100
    prime_avant_TX + emission_fees + tax
  end
end

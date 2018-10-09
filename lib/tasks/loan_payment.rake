desc "Calculate monthly loan payments"
task :loan_payment do
  path_to_apr = Rails.root + "lib/input_files/loan_payment_apr.txt"
  apr = open(path_to_apr).read.to_f
  
  path_to_years = Rails.root + "lib/input_files/loan_payment_years.txt"
  years = open(path_to_years).read.to_f

  path_to_principal = Rails.root + "lib/input_files/loan_payment_principal.txt"
  principal = open(path_to_principal).read.to_f
  
  r = apr / 1200
  n = r * principal
  term = years * 12
  d = 1 - (1 + r)** - term
  monthly = n / d
  
  ap("APR: " + apr.to_s)
  ap("Number of Years: " + years.to_s)
  ap("Principal: $" + principal.to_s)
  ap("Monthly Payment: $%.2f" % [monthly])
end

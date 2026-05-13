Insight 1

-- Total deceased member losses
SELECT 
    SUM(charge_off_amount) AS deceased_loss
FROM clean_loan_analysis
WHERE status = 'Deceased';


Insight  2

-- Insurance impact analysis
SELECT 
    insurance_flag,
    SUM(charge_off_amount) AS total_loss
FROM clean_loan_analysis
WHERE status = 'Deceased'
GROUP BY insurance_flag;


Insight  3

SELECT loan_type, 
       SUM(charge_off_amount)
FROM clean_loan_analysis
WHERE status = 'Deceased'
GROUP BY loan_type;

--Each admission costs $50 for patients without insurance, and $10 for patients with insurance. All patients with an even patient_id have insurance.
--Give each patient a 'Yes' if they have insurance, and a 'No' if they don't have insurance. Add up the admission_total cost for each has_insurance group.


select has_insurance,
  case
    when has_insurance='Yes' then num*10
    else num*50
  end as cost
from(
SELECT *, 
  case 
    when patient_id %2 = 0 then 'Yes'
    Else 'No'
  end as has_insurance, count(*) as num
from admissions
group by has_insurance)
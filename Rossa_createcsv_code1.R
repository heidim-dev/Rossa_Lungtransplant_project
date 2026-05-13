# Rossa's lung transplant cohort
##Create csv file

transplant_template <- data.frame(
  
  # Basic demographics with variables naming
  patient_number = integer(),
  year_of_transplant = integer(),
  age_at_transplant_years = numeric(),
  sex = character(),
  
  # Diagnosis
  diagnosis_group = character(),
  genetic_diagnosis = character(),
  
  # Pre-transplant treatment or support required
  regular_steroids = character(),
  steroid_sparing_agents = character(),
  home_oxygen = character(),
  home_NIV = character(),
  home_invasive_ventilation = character(),
  
  # Pre-transplant lung function
  fev1_pre_tx_l = numeric(),
  fev1_pre_tx_pp = numeric(),
  
  fvc_pre_tx_l = numeric(),
  fvc_pre_tx_pp = numeric(),
  
  dlco_pre_tx = numeric(),
  dlco_pre_tx_pp = numeric(),
  
  # Post-transplant outcomes
  alive = character(),
  cause_of_death = character(),
  years_transplant_to_death_or_retransplant = numeric(),
  
  # Complications
  CLAD = character(),
  CLAD_phenotype = character(),
  PTLD = character(),
  
  # IF WE FIND ADD FOLLOW-UP LF
  fev1_1yr_pp = numeric(),
  fvc_1yr_pp = numeric(),
  dlco_1yr_pp = numeric(),
  
  fev1_last_followup_pp = numeric(),
  fvc_last_followup_pp = numeric(),
  dlco_last_followup_pp = numeric(),
  
  comments = character()
)

# Export CSV
write.csv(
  transplant_template,
  "Newcastle_DPLD_transplant_database.csv",
  row.names = FALSE
)
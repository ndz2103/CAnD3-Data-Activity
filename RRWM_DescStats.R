# table(sex)
sex <- table(GSS_data$sex)
sex
prop.table(sex)

# table(minority)
minority <- table(GSS_data$minority)
minority
prop.table(minority)

# table(partner)
partner <- table(GSS_data$partner)
partner
prop.table(partner)

# table(education)
education <- table(GSS_data$education)
education
prop.table(education)

# table(age)
age <- table(GSS_data$age_group)
age
prop.table(age)

# table(children)
children <- table(GSS_data$children)
children
prop.table(children)
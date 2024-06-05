#import "template.typ": resume, header, resume_heading, edu_item, exp_item, project_item, skill_item


#let yml_personal(data) = {
  header(
    name: data.name,
    phone: data.phone,
    email: data.email,
    linkedin: data.linkedin,
    site: data.site
  )
}

#let yml_education(data) = {
  resume_heading[Education]
  for edu in data {
    edu_item(
      name: edu.name,
      degree: edu.degree,
      location: edu.location,
      date: edu.date,
    )
  }
}

#let yml_experience(data) = {
  resume_heading[Experience]
  for exp in data {
    exp_item(
      role: exp.role,
      name: exp.name,
      location: exp.location,
      date: exp.date,
      .. exp.points
    )
  }
}

#let yml_projects(data) = {
  resume_heading[Projects]
  for proj in data {
    project_item(
      name: proj.name,
      skills: proj.skills,
      site: proj.site,
      date: proj.date,
      ..proj.points
    )
  }
}

#let yml_skills(data) = {
  resume_heading[Technical Skills]
  for skill in data {
    skill_item(
      category: skill.category,
      skills: skill.skills
    )
  }
}

#let yml_resume(data) = {
  show: resume

  yml_personal(data.personal)
  yml_education(data.education)
  yml_experience(data.experience)
  yml_projects(data.projects)
  yml_skills(data.skills)
}

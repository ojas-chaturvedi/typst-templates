#import "template.typ": *
#let title = "Assignment #1"
#let author = "Ojas Chaturvedi"
#let course_id = "CS101"
#let instructor = "Turing, Alan"
#let semester = "Fall 2024"
#let due_time = "August 24 at 11:59 PM"
#set enum(numbering: "a)")
#show: assignment.with(title, author, course_id, instructor, semester, due_time)

#prob(
  [
    What is the purpose of life?
  ], 
  [
    1. I do not know.
    2. Perchance.
  ]
)
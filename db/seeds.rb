# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@q1 = Questionnaire.create(name: "Realtionship System")

@question1 = @q1.Question.create(body: "What is your partners name?")
@question2 = @q1.Question.create(body: "Is your relationship important to you?")
@question3 = @q1.Question.create(body: "When you feel most connected to [A1] do you feel? (Pick Two)")
@question3 = @q1.Question.create(body: "[Current User] when you and [A1] are disconnected how would you describe [A1]?(Pick 2)")
@question3 = @q1.Question.create(body: "[Current User], when [A1] appears to be [A4a] and [A4b] how do you feel? (Pick 2)")
@question3 = @q1.Question.create(body: "  When you see [A1] as [A4a] and [A4b], and you are feeling [A5a] and [A5b] what do you do? (Pick 2)")
@question3 = @q1.Question.create(body: "[Current User], Being disconnected sucks!! When you see [A1] as [A4a] and [A4b] and you are feeling [A5a] and [A5b] which of the following best describes what it feels like deep inside? (Pick 2)")
@question3 = @q1.Question.create(body: "When you are feeling [A7a] and [A7b] do you ever see yourself as being any of the following? (Pick 2)")
@question3 = @q1.Question.create(body: "[Current User], in moments when you feel you are [A8a] and [A8b] and [A7a] and [A7b] how do you imagine you appear to [A1]? Pick two")
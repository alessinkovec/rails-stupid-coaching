class QuestionsController < ApplicationController

  QUESTIONS = [
    { ask: "I am going to work", answer: "Great!" },
    { ask: "..?", answer: "Silly question, get dressed and go to work!" },
    { ask: "else", answer: "I don't care, get dressed and go to work!" }
  ]

  def ask
    # @question = params[:question]
  end

  def answer
    @questions = QUESTIONS
    if params[:question].split.last[-1] == "?"
      @question = @questions[1][:answer]
    elsif params[:question] == "I am going to work"
      @question = @questions[0][:answer]
    else
      @question = @questions[2][:answer]
    end
  end
end


# The answer.html.erb will display the question you
# ask your coach as well as his answer. The controller
# will need to read the question from params and compute an
# instance variable @answer for the view to display. Here are two
# requests that you should be able to handle:

# localhost:3000/answer?question=hello
# localhost:3000/answer?question=what+time+is+it%3F
# ⚠️ Don't try to work on the form yet! Click on the links above
# and make your Answer page work!

# If you don't remember about the coach (poor) logic, here it is:

# If the message is I am going to work, the coach will answer Great!
# If the message has a question mark ? at the end, the coach will
 # answer Silly question, get dressed and go to work!.
# Otherwise he will answer I don't care, get dressed and go to work!

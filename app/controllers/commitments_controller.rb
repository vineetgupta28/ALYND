class CommitmentsController < ApplicationController
def list
      #@commitments = Commitment.find(:all)
      @commitmentsToMe = Commitment.where("DueTo='vineet'")
      @commitmentsMade = Commitment.where("DueFrom='vineet'")
   end
   def listall
      @commitmentsMade = Commitment.where("DueFrom='vineet'").order(:DueDate)
      @commitmentsToMe = Commitment.where("DueTo='vineet'").order(:DueDate)
      @commitmentsCompleted = Commitment.where("Status='completed'").order(:DueDate)
   end
 end

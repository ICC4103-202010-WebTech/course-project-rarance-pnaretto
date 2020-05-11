class AdminController < ApplicationController
  # GET /events
  # GET /events.json
  def index
    @CR=EventCommentReport.all
    @CCR=CommentCommentReport.all
    @OR=OrganizationReport.all
    @ER=EventReport.all
    @UR=UserReport.all
  end
end

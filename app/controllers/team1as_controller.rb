class Team1asController < ApplicationController
  def index
    @team1as = Team1a.all

    render("team1a_templates/index.html.erb")
  end

  def show
    @team1a = Team1a.find(params.fetch("id_to_display"))

    render("team1a_templates/show.html.erb")
  end

  def new_form
    @team1a = Team1a.new

    render("team1a_templates/new_form.html.erb")
  end

  def create_row
    @team1a = Team1a.new


    if @team1a.valid?
      @team1a.save

      redirect_back(:fallback_location => "/team1as", :notice => "Team1a created successfully.")
    else
      render("team1a_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @team1a = Team1a.find(params.fetch("prefill_with_id"))

    render("team1a_templates/edit_form.html.erb")
  end

  def update_row
    @team1a = Team1a.find(params.fetch("id_to_modify"))


    if @team1a.valid?
      @team1a.save

      redirect_to("/team1as/#{@team1a.id}", :notice => "Team1a updated successfully.")
    else
      render("team1a_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @team1a = Team1a.find(params.fetch("id_to_remove"))

    @team1a.destroy

    redirect_to("/team1as", :notice => "Team1a deleted successfully.")
  end
end

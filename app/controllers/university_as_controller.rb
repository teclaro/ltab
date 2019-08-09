class UniversityAsController < ApplicationController
  def index
    @q = UniversityA.ransack(params[:q])
    @university_as = @q.result(:distinct => true).page(params[:page]).per(10)

    render("university_a_templates/index.html.erb")
  end

  def show
    @university_a = UniversityA.find(params.fetch("id_to_display"))

    render("university_a_templates/show.html.erb")
  end

  def new_form
    @university_a = UniversityA.new

    render("university_a_templates/new_form.html.erb")
  end

  def create_row
    @university_a = UniversityA.new


    if @university_a.valid?
      @university_a.save

      redirect_back(:fallback_location => "/university_as", :notice => "University a created successfully.")
    else
      render("university_a_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @university_a = UniversityA.find(params.fetch("prefill_with_id"))

    render("university_a_templates/edit_form.html.erb")
  end

  def update_row
    @university_a = UniversityA.find(params.fetch("id_to_modify"))


    if @university_a.valid?
      @university_a.save

      redirect_to("/university_as/#{@university_a.id}", :notice => "University a updated successfully.")
    else
      render("university_a_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @university_a = UniversityA.find(params.fetch("id_to_remove"))

    @university_a.destroy

    redirect_to("/university_as", :notice => "University a deleted successfully.")
  end
end

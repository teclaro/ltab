Rails.application.routes.draw do
  # Routes for the University a resource:

  # CREATE
  get("/university_as/new", { :controller => "university_as", :action => "new_form" })
  post("/create_university_a", { :controller => "university_as", :action => "create_row" })

  # READ
  get("/university_as", { :controller => "university_as", :action => "index" })
  get("/university_as/:id_to_display", { :controller => "university_as", :action => "show" })

  # UPDATE
  get("/university_as/:prefill_with_id/edit", { :controller => "university_as", :action => "edit_form" })
  post("/update_university_a/:id_to_modify", { :controller => "university_as", :action => "update_row" })

  # DELETE
  get("/delete_university_a/:id_to_remove", { :controller => "university_as", :action => "destroy_row" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

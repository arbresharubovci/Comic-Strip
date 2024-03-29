Rails.application.routes.draw do

  get("/", { :controller => "comics", :action => "index" }) 
 
  get("/account", { :controller => "comics", :action => "account" }) 

  # Routes for the Share resource:

  get("/home", { :controller => "comics", :action => "index" }) 

  # CREATE
  post("/insert_share", { :controller => "shares", :action => "create" })
          
  # READ
  get("/shares", { :controller => "shares", :action => "index" })
  
  get("/shares/:path_id", { :controller => "shares", :action => "show" })
  
  # UPDATE
  
  post("/modify_share/:path_id", { :controller => "shares", :action => "update" })
  
  # DELETE
  get("/delete_share/:path_id", { :controller => "shares", :action => "destroy" })

  #------------------------------

  # Routes for the Comment resource:

  # CREATE
  post("/insert_comment", { :controller => "comments", :action => "create" })
          
  # READ
  get("/comments", { :controller => "comments", :action => "index" })
  
  get("/comments/:path_id", { :controller => "comments", :action => "show" })
  
  # UPDATE
  
  post("/modify_comment/:path_id", { :controller => "comments", :action => "update" })
  
  # DELETE
  get("/delete_comment/:path_id", { :controller => "comments", :action => "destroy" })

  #------------------------------

  # Routes for the Like resource:

  # CREATE
  post("/insert_like", { :controller => "likes", :action => "create" })
          
  # READ
  get("/likes", { :controller => "likes", :action => "index" })
  
  get("/likes/:path_id", { :controller => "likes", :action => "show" })
  
  # UPDATE
  
  post("/modify_like/:path_id", { :controller => "likes", :action => "update" })
  
  # DELETE
  get("/delete_like/:path_id", { :controller => "likes", :action => "destroy" })

  #------------------------------

  # Routes for the Comic resource:

  # CREATE
  post("/insert_comic", { :controller => "comics", :action => "create" })
          
  # READ
  get("/comics", { :controller => "comics", :action => "index" })
  
  get("/comics/:path_id", { :controller => "comics", :action => "show" })
  
  # UPDATE
  
  post("/modify_comic/:path_id", { :controller => "comics", :action => "update" })
  
  # DELETE
  get("/delete_comic/:path_id", { :controller => "comics", :action => "destroy" })

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

end

#get student form  -  get create
get '/'




#create student - post create
post '/student/create' do 



  erb(:create)
end 


#get student get - get 'student/:id'
get '/student/:id' do

erb(:show)
end



#get all students - get 'students'
get '/students' do 
  erb(:index)#students are the url and load the index page
end  



#delete a student - post student/id/delete
post '/student/:id/delete'
  redirect
end

#

#update a student - get student/:id/edit


# actually update post  student/:id/edit


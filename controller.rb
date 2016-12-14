
require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/student.rb')
#get all students - get 'students'
get '/students' do 
  @students = Student.all()
  erb(:index)#students are the url and load the index page
end  

#get student form  -  get create
get '/student/new_form' do   # <------   get to/from url
  erb(:new)  # <----- load (get) the 'new' view (page)
end



#create student - post create
post '/students' do # <---- post to/from url
  student = Student.new(params)
  student.save()
  erb(:create) # <----- post what
end 


#get student get - get 'student/:id'
get '/student/:id' do
  @student = Student.find_id(params[:id])
  erb(:show)
end


#delete a student - post student/id/delete
post "/student/:id/delete" do
  Student.delete(params[:id])
  erb(:index)
end


#update a student - get student/:id/edit
get '/student/:id/edit_form' do

end  

# actually update post  student/:id/
post '/student/:id/' do

end

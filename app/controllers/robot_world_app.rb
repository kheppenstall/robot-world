require_relative '../models/robot.rb'

class RobotWorldApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)
  set :method_override, true

  get '/' do
    redirect '/robots'
  end
  
  get '/robots' do
    @robots = Robot.all
    haml :index
  end

  get '/robots/new' do
    haml :new
  end

  get '/robots/:id' do
    @robot = Robot.find(params[:id])
    haml :show
  end

  get '/robots/:id/edit' do
    @robot = Robot.find(params[:id])
    haml :edit
  end

  put '/robots/:id' do |id|
    Robot.update(id.to_i, params[:robot])
    redirect '/robots'
  end

  post '/robots' do
    robot = Robot.new(params[:robot])
    robot.save
    redirect '/robots'
  end

  delete '/robots/:id' do |id|
    Robot.destroy(id.to_i)
    redirect '/robots'
  end
  
end


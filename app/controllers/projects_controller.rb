class ProjectsController < ApplicationController
  def index
  	@projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to root_path, notice: '実証実験事例の作成に成功しました'
    else
      redirect_to new_project_path, alert: '実証実験事例の作成に失敗しました'
    end
  end

  def show
  	@project = Project.find(params[:id])
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      redirect_to root_path, notice: '実証実験事例の更新に成功しました'
    else
      redirect_to edit_project_path, alert: '実証実験事例の更新に失敗しました'
    end
  end

  private

  def project_params
    params.require(:project).permit(:title, :sub_title, :image, :client, :collaborator, :begin_date, :end_date, :place, :service, :press_date, :press_url, :category_list, :technology_list, :reference)
  end
end

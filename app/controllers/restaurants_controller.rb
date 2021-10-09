class RestaurantsController < ApplicationController

  # CRUD
  # ----
  # Create
  # Read
  # Update
  # Delete

  # Read USER ACTIONS
  #
  # 1) Read all the collection
  # 2) Read the details of a single item of the collection

  # 1) Read all the collection
  def index
    @restaurants = Restaurant.all
  end

  # 2) Read the details of a single item of the collection
  def show
    @restaurant = Restaurant.find(params[:id])
  end

  # Create USER ACTIONS
  #
  # 1) Get the form
  # 2) Submit the form

  # 1) Get the form
  def new
    @restaurant = Restaurant.new
  end

  # 2) Submit the form
  def create
    restaurant = Restaurant.new(restaurant_params)

    restaurant.save

    redirect_to restaurants_path # redirect to Index
  end

  # Update USER ACTIONS
  #
  # 1) Get the form
  # 2) Submit the form

  # 1) Get the form
  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  # 2) Submit the form
  def update
    @restaurant = Restaurant.find(params[:id])

    @restaurant.update(restaurant_params)

    redirect_to restaurant_path(@restaurant.id) # redirects to Show
  end

  # Delete USER ACTIONS
  #
  # 1) Deletes the item given it's id

  # As we don't have a GET route for this, like we have for Create/Update,
  # this means that we'll need a link somewhere that will enable the user
  # to make the DELETE request.

  # That link will sometimes be in the index, sometimes in the show, that
  # depends on the project and on the UX.
  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy

    redirect_to restaurants_path  # redirects to Index
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating, :cuisine, :chef_name)
  end
end

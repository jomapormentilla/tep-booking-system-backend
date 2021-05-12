class NavItemsController < ApplicationController
    def index
        navitems = NavItem.all
        render json: navitems.to_json
    end
end

package ordreedi

class AdminController {

	def AdminService

    def index() { }

    def listRestaurant(){
    	def _list = AdminService.listRestaurant()
    	return [list: _list]
    }

    def restaurantForm(){
    	def _row
    	if (params?.id?.length() > 0){
    		_row = AdminService.getRestaurant(params);
    	}
		render (template: "restaurantForm", model:[row: _row])
    }

    def saveRestaurant(){
    	def _row = AdminService.saveRestaurant(params);
       	render "<h1>Registro almacenado</h1>"
    }

}

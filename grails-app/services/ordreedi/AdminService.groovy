package ordreedi

import grails.transaction.Transactional

@Transactional
class AdminService {

    def serviceMethod() {

    }

    def listRestaurant(data){
    	def _list
    	if (data?.name?.length() > 0){
	    	def criteria = Menu.createCriteria();
	    	_list = criteria.list{
	    		like("name", '%'+data.name.replaceAll(" ", "%")+'%')
	    	}    		
    	}else{
    		_list = Restaurant.list();
    	}

    	return _list
    }

    def getRestaurant(data){
    	def _row = Restaurant.get(data.id);

    	return _row
    }

    def saveRestaurant(data){
    	def _row
    	if (data.id != null && data.id.length() > 0){
    		_row = Restaurant.get(data.id);
    	}else{
    		_row = new Restaurant();
    	}

    	_row.properties = data;
    	_row.save(flush: true, failOnError: true);

    	return _row
    }

}

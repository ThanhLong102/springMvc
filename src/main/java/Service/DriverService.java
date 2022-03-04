package Service;

import Entity.Driver;
import Repository.DriverDao;
import Repository.DriverDaoImpl;

import java.util.List;

public class DriverService {
    public final DriverDao driverDao = new DriverDaoImpl();

    public void add(Driver driver) {
        driverDao.add(driver);
    }

    public Driver findById(int driverId) {
        return driverDao.findById(driverId);
    }

    public List<Driver> getAll(){
        return driverDao.getAll();
    }

    public void delete(int driverId){
        driverDao.delete(driverId);
    }

    public void update(Driver driver){
        driverDao.update(driver);
    }

}

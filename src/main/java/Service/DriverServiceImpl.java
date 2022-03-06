package Service;

import Entity.Driver;
import Repository.DriverDao;
import Repository.DriverDaoImpl;

import java.util.List;

public class DriverServiceImpl implements DriverService{

    public final DriverDao driverDao = new DriverDaoImpl();

    @Override
    public void add(Driver driver) {
        driverDao.add(driver);
    }

    @Override
    public Driver findById(int driverId) {
        return driverDao.findById(driverId);
    }

    @Override
    public List<Driver> getAll(){
        return driverDao.getAll();
    }

    @Override
    public void delete(int driverId){
        driverDao.delete(driverId);
    }

    @Override
    public void update(Driver driver){
        driverDao.update(driver);
    }
}

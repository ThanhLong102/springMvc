package Repository;

import AssignmetTable.AssignmentTable;
import Entity.Assignment;
import Entity.Line;

import java.util.List;

public interface AssignmentDao {

    void add(Assignment assignment);

    List<Assignment> getAll();

    void update(Assignment assignment);

    Assignment findById(int driverId,int lineID);

    List<Assignment> findByDriverName(String driverName);

    void delete(int driverId,int lineID);

    List<Assignment> findByDriverId(int driverID);
}

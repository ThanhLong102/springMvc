package Service;

import Dto.AssigmentTableDto;
import Dto.AssignmentDto;
import Dto.AssignmentTable;
import Entity.Assignment;

import java.util.List;

public interface AssignmentService {

    List<Assignment> getAll();

    String add(Assignment assignment);

    String update(AssignmentDto assignmentDto);

    void delete(int driverId, int lineId);

    Assignment findById(int driverId, int lineId);

    List<AssignmentTable> findByDriverName(String driverName);

    List<AssignmentTable> sortByNameDriver();

    List<AssignmentTable> sortByTurnNumber();

    List<AssignmentTable> getAssigmentTable(List<Assignment> assignmentList);

    List<AssigmentTableDto> distanceStatistics();
}

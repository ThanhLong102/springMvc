package Repository;

import Entity.Assignment;
import Util.DataUtil;
import Util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.List;

public class AssigmnetDaoImpl implements AssignmentDao {
    @Override
    public void add(Assignment assignment) {
        if (DataUtil.isEmptyOrNull(assignment)) {
            return;
        }
        Session session = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            session.save(assignment);
            session.getTransaction().commit();
        } catch (Exception exception) {
            exception.printStackTrace();
            assert session != null;
            session.getTransaction().rollback();
        }
    }

//    @Override
//    public List<AssignmentTable> getAll() {
//        List<AssignmentTable> assignmentTableList = new ArrayList<>();
//        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
//            session.beginTransaction();
//            List<Assignment> assignmentList = session.createQuery("from Assignment").list();
//            for (Assignment assignment : assignmentList) {
//                boolean checkExits = false;
//                for (AssignmentTable assignmentTable : assignmentTableList) {
//                    if (assignmentTable.getDriver().getId() == assignment.getDriver().getId()) {
//                        assignmentTable.getLineTurns().add(new LineTurn(assignment.getLine(), assignment.getTurnNumber()));
//                        checkExits = true;
//                        break;
//                    }
//                }
//                if (!checkExits) {
//                    List<LineTurn> lineTurns = new ArrayList<>();
//                    lineTurns.add(new LineTurn(assignment.getLine(), assignment.getTurnNumber()));
//                    assignmentTableList.add(new AssignmentTable(assignment.getDriver(), lineTurns));
//                }
//            }
//
//            return assignmentTableList;
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return null;
//    }

    @Override
    public List<Assignment> getAll() {
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            session.beginTransaction();
            return (List<Assignment>) session.createQuery("from Assignment").list();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


    @Override
    public void update(Assignment assignment) {
        if (DataUtil.isEmptyOrNull(assignment)) {
            return;
        }
        Session session = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            session.update(assignment);
            session.getTransaction().commit();
        } catch (Exception exception) {
            exception.printStackTrace();
            assert session != null;
            session.getTransaction().rollback();
        }
    }

    @Override
    public void delete(int driverId, int lineID) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            Query<Assignment> query = session.createNativeQuery(
                    "SELECT * FROM ASSIGNMENT WHERE DRIVER_ID = :p_driver_id and LINE_ID = :p_line_id"
                    , Assignment.class);
            query.setParameter("p_driver_id", driverId);
            query.setParameter("p_line_id", lineID);
            Assignment assignment = query.getSingleResult();
            session.delete(assignment);
            session.getTransaction().commit();
        } catch (Exception e) {
            session.getTransaction().rollback();
        }
    }

    @Override
    public Assignment findById(int driverId,int lineID) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Assignment assignment = null;
        try {
            session.beginTransaction();
            Query<Assignment> query = session.createNativeQuery(
                    "SELECT * FROM ASSIGNMENT WHERE DRIVER_ID = :p_driver_id and LINE_ID = :p_line_id"
                    , Assignment.class);
            query.setParameter("p_driver_id", driverId);
            query.setParameter("p_line_id", lineID);
            assignment = query.getSingleResult();
            session.getTransaction().commit();
            return assignment;
        } catch (Exception e) {
            session.getTransaction().rollback();
        }
        return assignment;
    }

    @Override
    public List<Assignment> findByDriverName(String name) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            List<Assignment> assignmentList = new ArrayList<>();
            for (Assignment assignment: getAll()){
                if(assignment.getDriver().getFullName().toUpperCase().contains(name.toUpperCase())){
                    assignmentList.add(assignment);
                }
            }
            session.getTransaction().commit();
            return assignmentList;
        } catch (Exception e) {
            session.getTransaction().rollback();
        }
        return null;
    }

    @Override
    public List<Assignment> findByDriverId(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            List<Assignment> assignmentList = new ArrayList<>();
            for (Assignment assignment: getAll()){
                if(assignment.getDriver().getId() == id){
                    assignmentList.add(assignment);
                }
            }
            session.getTransaction().commit();
            return assignmentList;
        } catch (Exception e) {
            session.getTransaction().rollback();
        }
        return null;
    }
}

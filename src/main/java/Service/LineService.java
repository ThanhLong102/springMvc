package Service;

import Entity.Line;
import Repository.LineDao;
import Repository.LineDaoImpl;

import java.util.List;

public class LineService {

    public LineDao lineDao = new LineDaoImpl();

    public void add(Line line) {
        lineDao.add(line);
    }

    public Line findById(int id) {
        return lineDao.findById(id);
    }

    public List<Line> getAll(){
        return lineDao.getAll();
    }

    public void delete(int id){
        lineDao.delete(id);
    }

    public void update(Line line){
        lineDao.update(line);
    }
}

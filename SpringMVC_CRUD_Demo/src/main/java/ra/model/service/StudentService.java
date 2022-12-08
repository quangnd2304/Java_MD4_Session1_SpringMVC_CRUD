package ra.model.service;

import ra.model.entity.Student;

import java.util.List;

public interface StudentService {
    public List<Student> findAll();
    public Student findById(int studentId);
    public boolean save(Student st);
    public boolean updatee(Student st);
    public boolean delete(int studentId);
}

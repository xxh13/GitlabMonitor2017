package org.dao;

import org.bean.Connection;
import org.bean.IterationStudentCommit;
import org.bean.StudentCommit;
import org.bean.ValidCommit;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.*;

/**
 *
 * Created by XXH on 2017/3/29.
 */
@Repository
public class StudentCommitDao extends BaseDaoImpl{


    /**
     * @param id : 项目名称
     * @return ： 对应项目中学生每天的提交情况
     */
    public List<StudentCommit> selectStudentCommitById(int id) {
        return sqlSession.selectList("studentCommit.selectStudentCommitById", id);
    }

    /**
     * @param id : 项目名称
     * @return ： 对应项目中学生的贡献度
     */
    public List<IterationStudentCommit> selectStudentCommit(int id) {
        return sqlSession.selectList("studentCommit.selectStudentCommit", id);
    }

    /**
     * @param id ： 项目的id
     * @return : 每个deadline的学生的提交记录
     */
    public List<IterationStudentCommit> selectStudentIterationCommit(int id, int deadline_id) {
        Map<String, Integer> map = new HashMap<>();
        map.put("id", id);
        map.put("deadline_id", deadline_id);
        return sqlSession.selectList("studentCommit.selectStudentIterationCommit", map);
    }

    /**
     *
     * @param id : 项目id
     * @return ： 项目中学生之间的关联度
     */
    public List<Connection> selectStudentConnection(int id) {
        return sqlSession.selectList("studentCommit.selectStudentConnection", id);
    }

    /**
     *
     * @param id : 项目的id
     * @return ： 学生的有效提交情况
     */
    public List<ValidCommit> selectStudentValidCommit(int id){
        return sqlSession.selectList("studentCommit.selectStudentValidCommit", id);
    }
}

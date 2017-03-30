package org.bean;

import java.time.LocalDate;

/**
 * table: projectCommitv1
 */
public class ProjectCommit {

    private int id;                               //项目名称
    private String team;                          //团队名称
    private LocalDate day;                        //日期
    private int commit_count;                     //今日提交的次数
    private int add_line;                         //增加的行数
    private int delete_line;                      //删除的行数
    private int java_file;                        //提交的文件数目
    private int total_commit;                     //前面累加的提交次数
    private int total_add;                        //前面累加的增加行数
    private int total_delete;                     //前面累加的删除行数

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTeam() {
        return team;
    }

    public void setTeam(String team) {
        this.team = team;
    }

    public LocalDate getDay() {
        return day;
    }

    public void setDay(LocalDate day) {
        this.day = day;
    }

    public int getCommit_count() {
        return commit_count;
    }

    public void setCommit_count(int commit_count) {
        this.commit_count = commit_count;
    }

    public int getAdd_line() {
        return add_line;
    }

    public void setAdd_line(int add_line) {
        this.add_line = add_line;
    }

    public int getDelete_line() {
        return delete_line;
    }

    public void setDelete_line(int delete_line) {
        this.delete_line = delete_line;
    }

    public int getJava_file() {
        return java_file;
    }

    public void setJava_file(int java_file) {
        this.java_file = java_file;
    }

    public int getTotal_commit() {
        return total_commit;
    }

    public void setTotal_commit(int total_commit) {
        this.total_commit = total_commit;
    }

    public int getTotal_add() {
        return total_add;
    }

    public void setTotal_add(int total_add) {
        this.total_add = total_add;
    }

    public int getTotal_delete() {
        return total_delete;
    }

    public void setTotal_delete(int total_delete) {
        this.total_delete = total_delete;
    }
}

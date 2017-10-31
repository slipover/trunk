package com.airport.dao;

import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TotalDao<T> {
    public int insert(T t);
    public int delete(T t);
    public int update(T t);
    public T selectID(@Param("id") int id);
    public List<T> selectAll();
    public List<T> selectPage(@Param("pageNo") int pageNo, @Param("pageSize") int pageSize);
    public int insertRelation(@Param("one") int one, @Param("two") int two);
    public int deleteRelation(@Param("one") int one, @Param("two") int two);

    public List<T> selectQuery(@Param("from") String from,@Param("arrival")String arrival,@Param("timefrom")String timefrom);
}

package com.dulich.repository;

import com.dulich.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface UserRepository extends JpaRepository<UserEntity , Long>
{
    UserEntity findByUsername(String username);
    @Modifying
    @Query(value="insert into user_role(userid,roleid) values(:id,2)", nativeQuery = true)
    void insert(@Param("id") Long id);
}

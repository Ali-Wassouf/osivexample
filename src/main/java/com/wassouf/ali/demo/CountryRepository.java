package com.wassouf.ali.demo;

import com.wassouf.ali.demo.entity.Country;
import java.util.List;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CountryRepository extends JpaRepository<Country, Long>
{
    @EntityGraph(attributePaths = "states.streets")
    List<Country> findAllByName(String name);

    boolean existsByName(String name);
}

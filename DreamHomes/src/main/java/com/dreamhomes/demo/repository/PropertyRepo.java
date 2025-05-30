package com.dreamhomes.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.dreamhomes.demo.entity.Property;

@Repository
public interface PropertyRepo extends JpaRepository<Property,Integer>{

	@Query("SELECT u FROM Property u WHERE " 
			+ "(:price IS NULL OR u.price = :price) AND " 
			//+ "(:city IS NULL OR u.city = :city) AND " 
			+ "(:location IS NULL OR u.location = :location) AND " 
			+ "(:type IS NULL OR u.type = :type)")
	List<Property> findWithOptionalFilters(@Param("price") Double price,/*@Param("city") String city,*/ @Param("location") String location, @Param("type") String type);
}

package com.example.filtering_test_car.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.example.filtering_test_car.vo.Car;
import com.example.filtering_test_car.vo.CarDetail;

@Mapper
public interface CarRepository {

	@Select("""
		    <script>
		        SELECT *
		        FROM `car` 
		        WHERE  id
		          <if test="size != null">
		          AND  `size` in <foreach collection="size" item="code" index="index"
			          separator="," open="(" close=")">
			          #{code}
			      </foreach>
		          </if>
		          <if test = " engine != null">
		          AND  `engine` in <foreach collection="engine" item="code" index="index"
			          separator="," open="(" close=")">
			          #{code}
			      </foreach>
		           </if>
		          <if test = " displacement != null">
		          AND `displacement` &lt; #{displacement}
		           </if>
		          <if test = " maxPrice != null">
		          AND `maxPrice` &lt; #{maxPrice}
		        </if>
		    </script>
		""")
	public List<Car> getCarsBySearch(@Param("size") List<String>  size, @Param("engine") List<String>  engine,
			@Param("displacement")List<Long>  displacement, @Param("distanceDriven")List<Long>   distanceDriven,
			@Param("maxPrice") List<Long>  maxPrice);
	
	
	
	
	public static void getColor(String color){
		return;
	};


}



//		        <if test="size != null or engine != null or displacement != null or maxPrice != null">

//`size`=IFNULL(#{size} ,"asd") ,
//`engine`=IFNULL(#{engine},"dds")
//
//<if test="size != null">
//`size` = #{size} AND
//</if>
//<if test="engine != null">
//`engine` = #{engine} AND
//</if>
//<if test="displacement != null">
//`displacement` < #{displacement} AND
//</if>
//<if test="maxPrice != null">
//`maxPrice` < #{maxPrice}
//</if>
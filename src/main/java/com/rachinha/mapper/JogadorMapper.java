package com.rachinha.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

import com.rachinha.model.Jogador;

@Mapper
public interface JogadorMapper {

	@Select("select * from jogadores")
	List<Jogador> findAll();
	
	@Select("select * from jogadores where id = #{id}")
	Jogador findById(Integer id);

	@Insert("insert into jogadores (nome, telefone) values (#{nome}, #{telefone});")
	@SelectKey(statement = "SELECT LAST_INSERT_ID()", keyProperty = "id",
			before = false, resultType = Integer.class)
	void insert(Jogador jogador);

	@Update("update jogadores set nome = #{nome}, telefone = #{telefone} "
		  + "where id = #{id}")
	void update(Jogador jogador);
	
	@Delete("delete from jogadores where id = #{id}")
	void delete(Integer id);
	
}

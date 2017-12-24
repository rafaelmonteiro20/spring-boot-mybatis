package com.rachinha.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;

import com.rachinha.model.Jogador;

@Mapper
public interface JogadorMapper {

	@Select("select * from jogadores")
	List<Jogador> findAll();
	
	Jogador findById(Integer id);

	@Insert("insert into jogadores (nome, telefone) values (#{nome}, #{telefone});")
	@SelectKey(statement = "SELECT LAST_INSERT_ID()", keyProperty = "id",
			before = false, resultType = Integer.class)
	void insert(Jogador jogador);

	void update(Jogador jogador);
	
	void delete(Integer id);
	
}

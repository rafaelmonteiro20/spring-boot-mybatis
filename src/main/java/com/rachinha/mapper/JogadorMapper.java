package com.rachinha.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.rachinha.model.Jogador;

@Mapper
public interface JogadorMapper {

	@Select("select * from jogadores")
	List<Jogador> findAll();

}

package com.itbank.mvc0211_2;

import java.util.List;

public interface DaoInterface {

	void insert(DtoInterface dto) throws Exception;

	void update(DtoInterface dto) throws Exception;

	void delete(DtoInterface dto) throws Exception;

	DtoInterface select(DtoInterface dto) throws Exception;

	List<DtoInterface> selectAll() throws Exception;

}
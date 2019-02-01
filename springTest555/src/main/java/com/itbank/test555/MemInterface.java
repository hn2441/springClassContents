package com.itbank.test555;

import java.util.ArrayList;

public interface MemInterface {

	boolean login(String id, String pw) throws Exception;

	void update(MemberDTO dto) throws Exception;

	void delete(String id) throws Exception;

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.itbank.mvc0125.MemInterface#insert(com.itbank.mvc0125.MemberDTO)
	 */
	void insert(MemberDTO dto) throws Exception;

	ArrayList<MemberDTO> selectAll() throws Exception;

	MemberDTO select(String input) throws Exception;

}
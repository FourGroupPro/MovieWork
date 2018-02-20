package kr.co.daegu.ticketing;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import kr.ac.daegu.ConstVal;

public class TicketingDAO {
	public DataSource dataFactory;
	private Connection conn;
	private String sql;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private ArrayList<TicketingDTO> ticketingList;
	private int cnt;
	
	public TicketingDAO() {
		try {
			Context ctx = new InitialContext();
			ticketingList = new ArrayList<TicketingDTO>();
			dataFactory=(DataSource)ctx.lookup(ConstVal.DB_NAME);
			conn = dataFactory.getConnection();
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void ticketingInsert(TicketingDTO ticketingDTO) {
		sql="";
	}
}

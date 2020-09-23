package com.flowerPot.security;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", "file:src/main/webapp/WEB-INF/spring/security-context.xml"})
public class MemberTests {

	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Autowired
	private DataSource dataSource;
	
	@Test
	public void testInsertMember() {
		 String sql = "insert into f_member(mno, id, password,name) values (mno_seq.nextval,?,?,?)";
		    
		    for(int i = 0; i < 2; i++) {
		      
		      Connection con = null;
		      PreparedStatement pstmt = null;
		      
		      try {
		        con = dataSource.getConnection();
		        pstmt = con.prepareStatement(sql);
		        
		        pstmt.setString(1, "user" + i);
		        pstmt.setString(2, passwordEncoder.encode("password" + i));
		        pstmt.setString(3, "이름" + i);
		        
		        pstmt.executeUpdate();
		        
		      }catch(Exception e) {
		        e.printStackTrace();
		      }finally {
		        if(pstmt != null) { try { pstmt.close();  } catch(Exception e) {} }
		        if(con != null) { try { con.close();  } catch(Exception e) {} }
		        
		      }
		    }//end for
	}
	
}

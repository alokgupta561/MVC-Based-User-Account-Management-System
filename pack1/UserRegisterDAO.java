package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class UserRegisterDAO 
{
	public int inser_UserData(UserBean ub)
	{
		int rowCount = 0;
		try
		{
			Connection con = DBConnect.getCon();
			PreparedStatement pstmt = con.prepareStatement("insert into registration values(?,?,?,?,?,?)");
			pstmt.setString(1, ub.getU_name());
			pstmt.setString(2, ub.getU_pwd());
			pstmt.setString(3, ub.getU_fname());
			pstmt.setString(4, ub.getU_lname());
			pstmt.setString(5, ub.getU_mail());
			pstmt.setString(6, ub.getU_phn());
			
			rowCount = pstmt.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rowCount;
	}
}

package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import dto.shopMemberDTO;

public class shopMemberDAO {

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	ArrayList<shopMemberDTO> list = new ArrayList<shopMemberDTO>();
	shopMemberDTO sDto;
	
	public ArrayList<shopMemberDTO> shopMemberUpdate() {

		ArrayList<shopMemberDTO> list = new ArrayList<>();

		try {
			conn = DBManager.getConnection();

			String sql = "SELECT * FROM shopMember";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery(sql);

			if(rs.next() == true){
				System.out.println("값이 있음");
			}else if(rs.next() == false){
				System.out.println("값이 없음");
			}
			while (rs.next()) {
				String id = rs.getString("id");
				String pw = rs.getString("pw");
				String name = rs.getString("name");
				String zipcode = rs.getString("zipcode");
				String addr1 = rs.getString("addr1");
				String addr2 = rs.getString("addr2");
				String phone = rs.getString("phone");
				String email = rs.getString("email");
				Date regdate = rs.getDate("regdate");
				System.out.println();

				for (int i = 0; i < list.size(); i++) {
					System.out.println(list.get(i).getId() + "\t");
					System.out.println(list.get(i).getPw() + "\t");
					System.out.println(list.get(i).getName() + "\t");
					System.out.println(list.get(i).getZipcode() + "\t");
					System.out.println(list.get(i).getAddr1() + "\t");
					System.out.println(list.get(i).getAddr2() + "\t");
					System.out.println(list.get(i).getPhone() + "\t");
					System.out.println(list.get(i).getEmail() + "\t");
					System.out.println(list.get(i).getRegdate() + "\t");

					shopMemberDTO shopMemberDto = new shopMemberDTO(id, pw, name, zipcode, addr1, addr2, phone, email, regdate);
					list.add(shopMemberDto);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return list;
	}

	public shopMemberDTO ckLogin(String id, String pw) {


		/*
		 * shopMemberDTO sDto = new shopMemberDTO(id, pw, name, addr, phone,
		 * email, regdate);
		 */
		try {
			conn = DBManager.getConnection();
			String sql = "SELECT * FROM shopmember " + " WHERE id = ? AND pw = ? ";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, id);
			pstmt.setString(2, pw);

			rs = pstmt.executeQuery();
			
			while (rs.next()) {

				 id = rs.getString("id");
				 pw = rs.getString("pw");
				String name = rs.getString("name"); 
				String zipcode = rs.getString("zipcode");
				String addr1 = rs.getString("addr1");
				String addr2 = rs.getString("addr2");
				String phone = rs.getString("phone"); 
				String email = rs.getString("email");
				Date regdate = rs.getDate("regdate");
				

				sDto = new shopMemberDTO(id, pw, name, zipcode, addr1, addr2, phone, email, regdate);

			}
			System.out.println(id + pw);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);

		}
		return sDto;
	}

	public shopMemberDTO joinUpdate(String id,String pw, String name,String zipcode,String addr1,String addr2,String phone,String email) {

		ArrayList<shopMemberDTO> list = new ArrayList<>();
		try {
			conn = DBManager.getConnection();

			String sql = "UPDATE shopMember SET PW = ?, NAME = ?, ZIPCODE = ?, ADDR1 = ?, ADDR2 = ?, PHONE = ?, EMAIL = ? WHERE ID = ?";

			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			pstmt.setString(1, sDto.getPw());
			pstmt.setString(2, sDto.getName());
			pstmt.setString(3, sDto.getZipcode());
			pstmt.setString(4, sDto.getAddr1());
			pstmt.setString(5, sDto.getAddr2());
			pstmt.setString(6, sDto.getPhone());
			pstmt.setString(7, sDto.getEmail());
			pstmt.setString(8, sDto.getId());
			
			if(rs.next() == true){
				System.out.println("값이 있음");
			}else if(rs.next() == false){
				System.out.println("값이 없음");
			}
			while (rs.next()) {
				  pw = rs.getString("pw");
				  name = rs.getString("name");
				  zipcode = rs.getString("zipcode");
				  addr1 = rs.getString("addr1");
				  addr2 = rs.getString("addr2");
				  phone = rs.getString("phone");
				  email = rs.getString("eamil");
				  id = rs.getString("id");
				
				for (int i = 0; i < list.size(); i++) {
					System.out.println(list.get(i).getId() + "\t");
					System.out.println(list.get(i).getPw() + "\t");
					System.out.println(list.get(i).getName() + "\t");
					System.out.println(list.get(i).getZipcode() + "\t");
					System.out.println(list.get(i).getAddr1() + "\t");
					System.out.println(list.get(i).getAddr2() + "\t");
					System.out.println(list.get(i).getPhone() + "\t");
					System.out.println(list.get(i).getEmail() + "\t");
			
					 sDto = new shopMemberDTO(id, pw, name, zipcode, addr1, addr2, phone, email);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return sDto;
	}

	public int idck(String id){
		String id2;
		int aa =0;
		try {
			conn = DBManager.getConnection();
			String sql = "SELECT id FROM shopmember WHERE ID = ?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			if(rs.next() == true){
				System.out.println("값이 있음");
				aa = 1;
				
			}else if(rs.next() == false){
				System.out.println("값이 없음");
				aa = 0;
			}
			
		while(rs.next()){
				id2 = rs.getString("id");}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			DBManager.close(conn, pstmt, rs);
			
		}
		return aa;
		
	}
	
	
	
	
	
	
	
	
	
	
}

package board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import common.JDBCUtil;

public class BoardDAO {
	// JDBC 愿��젴 蹂��닔
	private Connection conn = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	// SQL 紐낅졊�뼱�뱾  select ifnull(max(number), 0) + 1
	//private final String BOARD_INSERT = "insert into board(number, title, writer, content) values(2,?,?,?)";
	private final String BOARD_INSERT = "insert into board( title, writer, content) values(?,?,?)";
	private final String BOARD_UPDATE = "update board set title=?, content=? where number=?";
	private final String BOARD_DELETE = "delete from board where number=? ;";
	private final String BOARD_GET = "select * from board where number=?";
	private final String BOARD_LIST = "select * from board order by number desc";

	// CRUD 湲곕뒫�쓽 硫붿냼�뱶 援ы쁽
	// 湲� �벑濡�
	public void insertBoard(BoardDTO vo) {
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_INSERT);
			stmt.setString(1, vo.getTitle());
			stmt.setString(2, vo.getWriter());
			stmt.setString(3, vo.getContent());
			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(stmt, conn);
		}
	}

	public void updateBoard(BoardDTO vo) {
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_UPDATE);
			stmt.setString(1, vo.getTitle());
			stmt.setString(2, vo.getContent());
			stmt.setInt(3, vo.getNumber());
			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(stmt, conn);
		}
	}

	public void deleteBoard(BoardDTO vo) {
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_DELETE);
			stmt.setInt(1, vo.getNumber());
			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(stmt, conn);
		}
	}

	public BoardDTO getBoard(BoardDTO vo) {
		BoardDTO board = null;
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_GET);
			stmt.setInt(1, vo.getNumber());
			rs = stmt.executeQuery();
			if (rs.next()) {
				board = new BoardDTO();
				board.setNumber(rs.getInt("NUMBER"));
				board.setTitle(rs.getString("TITLE"));
				board.setWriter(rs.getString("WRITER"));
				board.setContent(rs.getString("CONTENT"));
				board.setRegDate(rs.getString("REGDATE"));
				board.setCnt(rs.getInt("CNT"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, stmt, conn);
		}
		return board;
	}

	public List<BoardDTO> getBoardList(BoardDTO vo) {
		List<BoardDTO> boardList = new ArrayList<BoardDTO>();
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_LIST);
			rs = stmt.executeQuery();
			while (rs.next()) {
				BoardDTO board = new BoardDTO();
				board.setNumber(rs.getInt("NUMBER"));
				board.setTitle(rs.getString("TITLE"));
				board.setWriter(rs.getString("WRITER"));
				board.setContent(rs.getString("CONTENT"));
				board.setRegDate(rs.getString("REGDATE"));
				board.setCnt(rs.getInt("CNT"));
				boardList.add(board);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, stmt, conn);
		}
		return boardList;
	}
	public ArrayList<BoardDTO> getSearch(String searchField, String searchText){
	      ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
	      String SQL ="select * from board WHERE "+searchField.trim();
	      try {
	            if(searchText != null && !searchText.equals("") ){
	                SQL +=" LIKE '%"+searchText.trim()+"%' order by number desc limit 10";
	            }
	            conn = JDBCUtil.getConnection();
	            PreparedStatement pstmt=conn.prepareStatement(SQL);
				rs=pstmt.executeQuery();//select
	         while(rs.next()) {
	            BoardDTO board = new BoardDTO();
	            board.setNumber(rs.getInt(1));
	            board.setTitle(rs.getString(2));
	            board.setWriter(rs.getString(3));
	            board.setContent(rs.getString(4));
	            board.setRegDate(rs.getString(5));
	            board.setCnt(rs.getInt(6));
	            list.add(board);//list에 해당 인스턴스를 담는다.
	         }         
	      } catch(Exception e) {
	         e.printStackTrace();
	      }
	      return list;//ㄱㅔ시글 리스트 반환
	   }
	

	public int getCount() {
		String SQL = "select count(*) from board";
		try {
			conn = JDBCUtil.getConnection();
			PreparedStatement pstmt=conn.prepareStatement(SQL);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1);
			}			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	public String getDate() {
	  	String SQL = "SELECT NOW()"; // 현재 시간 가져오기
	  	try {
	  		conn = JDBCUtil.getConnection();
	  		PreparedStatement pstmt = conn.prepareStatement(SQL);
	  		rs = pstmt.executeQuery();
	  		if (rs.next()) {
	  			return rs.getString(1);
	  		}
	  	} catch(Exception e) {
	  		e.printStackTrace();
	  	}
	  	return "";
	  }
	
}

package payment;

import java.sql.*;

import common.DBConnectionMgr;

public class PaymentMgr {

    private DBConnectionMgr pool = null;

    public PaymentMgr() {
        try {
            pool = DBConnectionMgr.getInstance();
        } catch (Exception e) {
            System.out.println("Error !!");
        }
    }

    public boolean insertPayment(PaymentBean payBean) {
        Connection con = null;
        PreparedStatement pstmt = null;
        boolean result = false;
        try {
            con = pool.getConnection();
            String strQuery = "insert into payment values(?,?,?,?,?,?,?,?,?)";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, payBean.getCard_type());
            pstmt.setString(2, payBean.getCard_number());
            pstmt.setString(3, payBean.getCard_month());
            pstmt.setString(4, payBean.getCard_year());
            pstmt.setString(5, payBean.getCard_cvc());
            pstmt.setString(6, payBean.getCard_pwd());
            pstmt.setString(7, payBean.getAddress_number());
            pstmt.setString(8, payBean.getAddress());
            pstmt.setString(9, payBean.getAddress_detail());
            int count = pstmt.executeUpdate();

            if (count == 1) {
                result = true;
            }
            
        } catch (Exception ex) {
            System.out.println("Exception :" + ex);
        } finally {
            pool.freeConnection(con, pstmt);
        }
        return result;
    }
    
}


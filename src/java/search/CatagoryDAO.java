/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package search;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import utils.DBUtils;

/**
 *
 * @author ADmin
 */
public class CatagoryDAO {

    public List<CategoryDTO> selectCategoryList() {
        List<CategoryDTO> list = null;
        Connection con = DBUtils.getConnection();
        String sql;
        try {
            sql = "SELECT * from [dbo].[tblCategory]";
            PreparedStatement stm = con.prepareStatement(sql);
            //stm.setString(1, catelory);
            ResultSet rs = stm.executeQuery();
            list = new ArrayList<>();
            while (rs.next()) {
                CategoryDTO categoryList = new CategoryDTO(rs.getString("categoryId"), rs.getString("categoryName"));
                list.add(categoryList);
            }
            con.close();
        } catch (SQLException ex) {
        }
        return list;
    }
}

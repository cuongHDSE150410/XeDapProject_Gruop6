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
public class BrandDAO {

    public List<BrandDTO> selectBrandList() {
        List<BrandDTO> list = null;
        Connection con = DBUtils.getConnection();
        String sql;
        try {
            sql = "SELECT * from [dbo].[tblBrand]";
            PreparedStatement stm = con.prepareStatement(sql);
            //stm.setString(1, catelory);
            ResultSet rs = stm.executeQuery();
            list = new ArrayList<>();
            while (rs.next()) {
                BrandDTO brandList = new BrandDTO(rs.getString("brandId"), rs.getString("brandName"));
                list.add(brandList);
            }
            con.close();
        } catch (SQLException ex) {
        }
        return list;
    }

}

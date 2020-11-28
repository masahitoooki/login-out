package info_Daarc;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.InitialContext;
import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;

public class AbcdBeans {
	
	private String  updated_at;
	private String id;
	private String name;
	private String sei;
	private String nen;
	private String address;

	// DB関連の初期設定
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private DataSource ds = null;

	// コンストラクタ
	public AbcdBeans(HttpServletRequest request) {
		
		setId(request.getParameter("updated_at"));
		setId(request.getParameter("id"));
		setName(request.getParameter("name"));
		setSei(request.getParameter("sei"));
		setNen(request.getParameter("nen"));
		setAddress(request.getParameter("address"));
	}

	
	
	// データベースへのアクション
	private void doDataBase(String sql) throws Exception {
		
		// コンテキストを取得
		InitialContext ic = new InitialContext();
		// ルックアップしてデータソースを取得
		ds = (DataSource) ic.lookup("java:comp/env/jdbc/ciel");
		conn = ds.getConnection();
		
		// sql文を表示
		System.out.println(sql);
		pstmt = conn.prepareStatement(sql);
		// sql文実行
		pstmt.execute();

		// 使用したオブジェクトを終了させる
		pstmt.close();
		conn.close();
	}

	// getter setter
	
	public String getUpdated_at() {
		return updated_at;
	}



	public void setUpdated_at(String updated_at) {
		this.updated_at = updated_at;
	}
	
	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSei() {
		return sei;
	}

	public void setSei(String sei) {
		this.sei = sei;
	}

	public String getNen() {
		return nen;
	}

	public void setNen(String nen) {
		this.nen = nen;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	// 追加
	public Boolean addData() {
		try {

			// sql文 の作成
			String sql = "insert into  gorip2(id, name, sei, nen, address) values ('" + id + "','" + name + "','"
					+ sei + "','" + nen + "','" + address + "')";

//			String sql = "insert into gorip2(updated_at, id, name, sei, nen, address) values ('" + updated_at + "','" + id + "','" + name + "','"
//					+ sei + "','" + nen + "','" + address + "')";
			
			// データベース接続＆ｓｑｌの実行
			doDataBase(sql);

			return true;

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	//削除
	public Boolean deleteData() {
		try {

			// sql文 の作成
			String sql = "delete from  gorip2 where id=" + id;

			// データベース接続＆ｓｑｌの実行
			doDataBase(sql);

			return true;
			
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

}

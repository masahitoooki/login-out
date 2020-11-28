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

	// DB�֘A�̏����ݒ�
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private DataSource ds = null;

	// �R���X�g���N�^
	public AbcdBeans(HttpServletRequest request) {
		
		setId(request.getParameter("updated_at"));
		setId(request.getParameter("id"));
		setName(request.getParameter("name"));
		setSei(request.getParameter("sei"));
		setNen(request.getParameter("nen"));
		setAddress(request.getParameter("address"));
	}

	
	
	// �f�[�^�x�[�X�ւ̃A�N�V����
	private void doDataBase(String sql) throws Exception {
		
		// �R���e�L�X�g���擾
		InitialContext ic = new InitialContext();
		// ���b�N�A�b�v���ăf�[�^�\�[�X���擾
		ds = (DataSource) ic.lookup("java:comp/env/jdbc/ciel");
		conn = ds.getConnection();
		
		// sql����\��
		System.out.println(sql);
		pstmt = conn.prepareStatement(sql);
		// sql�����s
		pstmt.execute();

		// �g�p�����I�u�W�F�N�g���I��������
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

	// �ǉ�
	public Boolean addData() {
		try {

			// sql�� �̍쐬
			String sql = "insert into  gorip2(id, name, sei, nen, address) values ('" + id + "','" + name + "','"
					+ sei + "','" + nen + "','" + address + "')";

//			String sql = "insert into gorip2(updated_at, id, name, sei, nen, address) values ('" + updated_at + "','" + id + "','" + name + "','"
//					+ sei + "','" + nen + "','" + address + "')";
			
			// �f�[�^�x�[�X�ڑ����������̎��s
			doDataBase(sql);

			return true;

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	//�폜
	public Boolean deleteData() {
		try {

			// sql�� �̍쐬
			String sql = "delete from  gorip2 where id=" + id;

			// �f�[�^�x�[�X�ڑ����������̎��s
			doDataBase(sql);

			return true;
			
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

}

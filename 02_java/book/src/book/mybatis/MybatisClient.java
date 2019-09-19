package book.mybatis;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
public class MybatisClient {
	// 1.
		// 싱글턴으로 관리할 타입(SqlSessionFactory)의
		// static 변수를 선언
		private static SqlSessionFactory factory;
		
		// 2. 
		// 싱글턴으로 관리할 변수를 초기화
		// 생성자를 private 변경
		private MybatisClient() {
			// mybatis-config.xml 파일을 InputStream 으로 읽어서
			// SqlSessionFactory 생성
			String resource = "mybatis-config.xml";
			InputStream in = null;
			
			try {
				in = Resources.getResourceAsStream(resource);
				factory = new SqlSessionFactoryBuilder().build(in);
			} catch (IOException e) {
				System.err.println("mybatis 설정 읽기 오류!");
				e.printStackTrace();
			}
		} // 생성자 종료
		
		// 3. 
		// 싱글턴으로 관리할 타입(SqlSessionFactory) 을 리턴하는
		// static 메소드 getFactory() 를 선언
		public static SqlSessionFactory getFactory() {
			if (factory == null) {
				new MybatisClient();
			}
			
			return factory;
	}
}

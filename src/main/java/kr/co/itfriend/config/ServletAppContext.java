package kr.co.itfriend.config;

import javax.annotation.Resource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.mapper.MapperFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.web.multipart.support.StandardServletMultipartResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import kr.co.itfriend.beans.ReplyBean;
import kr.co.itfriend.beans.UserBean;
import kr.co.itfriend.interceptor.CheckLoginInterceptor;
import kr.co.itfriend.interceptor.CheckWriterInterceptor;
import kr.co.itfriend.interceptor.LeftMenuInterceptor;
import kr.co.itfriend.interceptor.TopMenuInterceptor;
import kr.co.itfriend.mapper.ApplicationMapper;
import kr.co.itfriend.mapper.BankMapper;
import kr.co.itfriend.mapper.BoardMapper;
import kr.co.itfriend.mapper.BookMapper;
import kr.co.itfriend.mapper.BookRankingMapper;
import kr.co.itfriend.mapper.LibraryMapper;
import kr.co.itfriend.mapper.MemberMapper;
import kr.co.itfriend.mapper.PointMapper;
import kr.co.itfriend.mapper.ReplyMapper;
import kr.co.itfriend.mapper.TopMenuMapper;
import kr.co.itfriend.service.BoardService;
import kr.co.itfriend.service.TopMenuService;


@PropertySource("/WEB-INF/properties/db.properties")
@ComponentScan("kr.co.itfriend.controller")
@ComponentScan("kr.co.itfriend.beans")
@ComponentScan("kr.co.itfriend.dao")
@ComponentScan("kr.co.itfriend.service")
@EnableWebMvc // controller로 등록된 클래스 읽어들임
@Configuration
public class ServletAppContext implements WebMvcConfigurer {

	@Value("${db.classname}")
	private String db_classname;

	@Value("${db.url}")
	private String db_url;

	@Value("${db.username}")
	private String db_username;

	@Value("${db.password}")
	private String db_password;
	
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private TopMenuService topMenuService;
	
	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;

	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {

		WebMvcConfigurer.super.configureViewResolvers(registry);

		// view 경로와 확장자 세팅
		registry.jsp("/WEB-INF/PAGE/", ".jsp");
	}

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {

		WebMvcConfigurer.super.addResourceHandlers(registry);

		// 이미지, 영상, 소리 등 정적파일 경로 세팅
		registry.addResourceHandler("/**").addResourceLocations("/resources/");
	}

	// 데이터베이스 접속 정보 관리
	@Bean
	public BasicDataSource dataSource() {
		BasicDataSource source = new BasicDataSource();
		source.setDriverClassName(db_classname);
		source.setUrl(db_url);
		source.setUsername(db_username);
		source.setPassword(db_password);

		return source;
	}

	// 쿼리문과 접속 관리하는 객체(sqlSessionFactory 접속, 쿼리를 관리하는 객체 )
	@Bean
	public SqlSessionFactory factory(BasicDataSource source) throws Exception {

		SqlSessionFactoryBean factoryBean = new SqlSessionFactoryBean();
		factoryBean.setDataSource(source);

		SqlSessionFactory factory = factoryBean.getObject();
		return factory;
	}

	// 쿼리문 실행을 위한 객체(쿼리문을 관리하는 Mapper를 정의)

	@Bean
	public MapperFactoryBean<MemberMapper> test_mapper(SqlSessionFactory factory) throws Exception {
		MapperFactoryBean<MemberMapper> factoryBean = new MapperFactoryBean<MemberMapper>(MemberMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}

	@Bean
	public MapperFactoryBean<BookRankingMapper> getBookRankingMapper(SqlSessionFactory factory) throws Exception {
		MapperFactoryBean<BookRankingMapper> factoryBean = new MapperFactoryBean<BookRankingMapper>(
				BookRankingMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}

	@Bean
	public static PropertySourcesPlaceholderConfigurer PropertySourcesPlaceholderConfigurer() {
		return new PropertySourcesPlaceholderConfigurer();
	}

	@Bean
	public MapperFactoryBean<PointMapper> test_mapper2(SqlSessionFactory factory) throws Exception {
		MapperFactoryBean<PointMapper> factoryBean = new MapperFactoryBean<PointMapper>(PointMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}

	@Bean
	public MapperFactoryBean<BankMapper> bank_mapper(SqlSessionFactory factory) throws Exception {
		MapperFactoryBean<BankMapper> factoryBean = new MapperFactoryBean<BankMapper>(BankMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}

	@Bean
	public MapperFactoryBean<LibraryMapper> LibraryMapper(SqlSessionFactory factory) throws Exception {
		MapperFactoryBean<LibraryMapper> factoryBean = new MapperFactoryBean<LibraryMapper>(LibraryMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}

	@Bean
	public MapperFactoryBean<BookMapper> BookMapper(SqlSessionFactory factory) throws Exception {
		MapperFactoryBean<BookMapper> factoryBean = new MapperFactoryBean<BookMapper>(BookMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}

	@Bean
	public MapperFactoryBean<TopMenuMapper> getTopMenuMapper(SqlSessionFactory factory) throws Exception{
	    MapperFactoryBean<TopMenuMapper> factoryBean = new MapperFactoryBean<TopMenuMapper>(TopMenuMapper.class);
	    factoryBean.setSqlSessionFactory(factory);
	    return factoryBean;
	}
	
	@Bean
	public MapperFactoryBean<BoardMapper> getBoardMapper(SqlSessionFactory factory) throws Exception{
	    MapperFactoryBean<BoardMapper> factoryBean = new MapperFactoryBean<BoardMapper>(BoardMapper.class);
	    factoryBean.setSqlSessionFactory(factory);
	    return factoryBean;
	}
	
	@Bean
	public MapperFactoryBean<ApplicationMapper> getApplicationMapper(SqlSessionFactory factory) throws Exception{
	    MapperFactoryBean<ApplicationMapper> factoryBean = new MapperFactoryBean<ApplicationMapper>(ApplicationMapper.class);
	    factoryBean.setSqlSessionFactory(factory);
	    return factoryBean;
	}
	
	//reply
	@Bean
	public MapperFactoryBean<ReplyMapper> getReplyMapper(SqlSessionFactory factory) throws Exception{
	    MapperFactoryBean<ReplyMapper> factoryBean = new MapperFactoryBean<ReplyMapper>(ReplyMapper.class);
	    factoryBean.setSqlSessionFactory(factory);
	    return factoryBean;
	}
	
	@Bean
	public ReloadableResourceBundleMessageSource messageSource() {
		ReloadableResourceBundleMessageSource res = new ReloadableResourceBundleMessageSource();
		res.setBasenames("/WEB-INF/properties/error_message");

		return res;
	}

	@Override
	public void addInterceptors(InterceptorRegistry registry) {

		WebMvcConfigurer.super.addInterceptors(registry);
		
		LeftMenuInterceptor leftMenuInterceptor = new LeftMenuInterceptor(loginUserBean);
		InterceptorRegistration reg1 = registry.addInterceptor(leftMenuInterceptor);
		// 작동시기
		reg1.addPathPatterns("/**");// 모든 요청에 대하여 작동

		// 로그인처리
		CheckLoginInterceptor checkLoginInterceptor = new CheckLoginInterceptor(loginUserBean);
		InterceptorRegistration reg2 = registry.addInterceptor(checkLoginInterceptor);
		
		reg2.addPathPatterns("/MAIN/MainBookSearch","/MYPAGE/modify","/MYPAGE/MyPage");
		reg2.excludePathPatterns("/MYPAGE/login");
		//reg2.addPathPatterns("/PAGE/MYPAGE/logout");
		
		//메뉴 & 로그인 세션 정보
		TopMenuInterceptor topMenuInterceptor = new TopMenuInterceptor(topMenuService, loginUserBean);		
		InterceptorRegistration reg3 = registry.addInterceptor(topMenuInterceptor);		
		//작동 시기
		reg3.addPathPatterns("/**"); //모든 요청에 대하여 작동	
		
		CheckWriterInterceptor checkWriterInterceptor = new CheckWriterInterceptor(loginUserBean, boardService);
		InterceptorRegistration reg4 = registry.addInterceptor(checkWriterInterceptor);
		reg4.addPathPatterns("/NBQA/modify", "/NBQA/delete");
	}

	
	//정적파일 인식
	@Bean
	public StandardServletMultipartResolver multipartResolver() {
		return new StandardServletMultipartResolver();
	}
	
	/*
	 * @Bean public MapperFactoryBean<TopMenuMapper>
	 * getTopMenuMapper(SqlSessionFactory factory) throws Exception{
	 * MapperFactoryBean<TopMenuMapper> factoryBean = new
	 * MapperFactoryBean<TopMenuMapper>(TopMenuMapper.class);
	 * factoryBean.setSqlSessionFactory(factory); return factoryBean; }
	 * 
	 * @Override public void addInterceptors(InterceptorRegistry registry) { // TODO
	 * Auto-generated method stub WebMvcConfigurer.super.addInterceptors(registry);
	 * 
	 * TopMenuInterceptor topMenuInterceptor=new TopMenuInterceptor(topMenuService);
	 * 
	 * InterceptorRegistration reg1=registry.addInterceptor(topMenuInterceptor);
	 * //작동시기 reg1.addPathPatterns("/**"); //모든요청에 대하여 작동 }
	 */
	// properties와 충돌되어 오류가 발생 되므로 분리하여 등록

	/*
	 * //메서드 등록
	 * 
	 * @Bean public ReloadableResourceBundleMessageSource messageSource() {
	 * ReloadableResourceBundleMessageSource res=new
	 * ReloadableResourceBundleMessageSource();
	 * res.addBasenames("/WEB-INF/properties/eroor_message");
	 * 
	 * return res; }
	 */
}
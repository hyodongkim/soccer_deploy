package soccer.deploy.article.entity;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.annotations.DynamicInsert;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import lombok.extern.slf4j.Slf4j;

@Entity
@DynamicInsert
//@RequiredArgsConstructor
//@AllArgsConstructor
//@Getter
//@Setter
@Slf4j
@ToString
@Table(name="article")
@SequenceGenerator( name= "article_id_seq_gen",
		sequenceName = "article_seq",
		initialValue = 1,
		allocationSize = 1)
public class article {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "article_id_seq_gen")
	private int articleId;
	@Column(name="board_id")
	private int boardId;
	@Column(name="writer")
	private String writer;
	@Column(name="subject")
	private String subject;
	@Column(name="content")
	private String content;
	@Column(name="regdate")
	private String regdate;
	@Column(name="hitcount")
	private int hitcount;
	@Column(name="group_no")
	private int groupNo;
	@Column(name="level_no")
	private int levelNo;
	@Column(name="order_no")
	private int orderNo;
	
	public article() {}

	public article(int articleId, int boardId, String writer, String subject, String content, String regdate,
			int hitcount, int groupNo, int levelNo, int orderNo) {
		super();
		this.articleId = articleId;
		this.boardId = boardId;
		this.writer = writer;
		this.subject = subject;
		this.content = content;
		this.regdate = regdate;
		this.hitcount = hitcount;
		this.groupNo = groupNo;
		this.levelNo = levelNo;
		this.orderNo = orderNo;
	}

	public int getArticleId() {
		return articleId;
	}

	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}

	public int getBoardId() {
		return boardId;
	}

	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public int getHitcount() {
		return hitcount;
	}

	public void setHitcount(int hitcount) {
		this.hitcount = hitcount;
	}

	public int getGroupNo() {
		return groupNo;
	}

	public void setGroupNo(int groupNo) {
		this.groupNo = groupNo;
	}

	public int getLevelNo() {
		return levelNo;
	}

	public void setLevelNo(int levelNo) {
		this.levelNo = levelNo;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	
	
}

//CREATE TABLE article(
//		  article_id    NUMBER(7)        NOT NULL,                   -- 게시글 식별번호
//		  board_id      NUMBER(2)        NOT NULL,        -- 소속 게시판번호 10은 게시글 20은 공지글 저는 이런식으로
//		  writer        VARCHAR2(30)     NOT NULL,                   -- 작성자 아이디 이메일
//		  subject       VARCHAR2(400)    NOT NULL,                   -- 게시글 제목
//		  content       VARCHAR2(4000)   NOT NULL,                   -- 게시글 내용
//		  regdate       DATE             DEFAULT SYSDATE NOT NULL,   -- 게시글 등록일자
//		  hitcount      NUMBER(5)        DEFAULT 0 NOT NULL,         -- 게시글 조회수
//		  group_no      NUMBER(7)        NOT NULL,                   -- 계층형 게시판 구조를 위한 게시글 그룹번호
//		  level_no      NUMBER(2)        NOT NULL,                   -- 계층형 게시판 구조를 위한 그룹내 게시글 레벨
//		  order_no      NUMBER(3)        NOT NULL                    -- 계층형 게시판 구조를 위한 그룹내 게시글 순서
//		);




//CREATE SEQUENCE article_seq
//increment by 1
//start with 1
//minvalue 1
//maxvalue 999
//nocycle
//nocache
//noorder;
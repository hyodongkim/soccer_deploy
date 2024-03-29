package soccer.deploy.match.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.DynamicInsert;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import soccer.deploy.entry.entity.Entry;
import soccer.deploy.user.entity.User;

@Data
@Entity
@NoArgsConstructor
@AllArgsConstructor
@DynamicInsert
@SequenceGenerator(
		name = "match_seq_gen",
		sequenceName = "match_seq",
		initialValue = 1,
		allocationSize = 1)
public class Match {
	@Id
	@Column(name ="match_id")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "match_seq_gen")
	private Long id;
	
	@Column(name ="match_date",nullable = false)
	@Temporal(TemporalType.DATE) // 占쏙옙占쏙옙占� 占시븝옙占쏙옙
	private Date matchDate;
	
	@Column(nullable = false)
	private String opteam;
	

	@Temporal(TemporalType.DATE)
	@Column(name ="match_regdate")
	private Date matchRegdate;
	
	@Column(name ="match_img_type")
	private String matchImgType;
	
	@Column(name ="match_img_name")
	private String matchImgName;
	
	@Column(name ="match_place")
	private String matchPlace;
	
	@ManyToOne
	@JoinColumn(name="user_id")
	private User user;
	
}

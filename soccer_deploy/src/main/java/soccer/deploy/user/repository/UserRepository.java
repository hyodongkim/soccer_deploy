package soccer.deploy.user.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import soccer.deploy.user.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {
	
	/* email , passwd를 이용해 로그인*/
	User findByEmailAndPasswd(String email, String passwd);
	
	/* 이름을 통해 검색*/
	Page<User> findAllByNameContaining(String name,Pageable pageable);

	List<User> findByEmail(String email1);
	
}

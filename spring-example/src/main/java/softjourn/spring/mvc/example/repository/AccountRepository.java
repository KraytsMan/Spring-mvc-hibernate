package softjourn.spring.mvc.example.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import softjourn.spring.mvc.example.model.Account;

public interface AccountRepository extends JpaRepository<Account, Long> {
}

package softjourn.spring.mvc.example.service.implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import softjourn.spring.mvc.example.model.Account;
import softjourn.spring.mvc.example.repository.AccountRepository;
import softjourn.spring.mvc.example.service.AccountService;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class AccountServiceImpl implements AccountService {

    @Autowired
    AccountRepository repository;

    @Override
    public Account get(long id) {
        return repository.findOne(id);
    }

    @Override
    public List<Account> getAll() {
        return repository.findAll();
    }

    @Override
    public Account safe(Account account) {
        return repository.save(account);
    }

    @Override
    public void delete(long id) {
        repository.delete(id);
    }
}

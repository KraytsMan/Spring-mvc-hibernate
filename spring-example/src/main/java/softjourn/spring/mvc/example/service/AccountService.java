package softjourn.spring.mvc.example.service;

import softjourn.spring.mvc.example.model.Account;

import java.util.List;

public interface AccountService {

    Account get(long id);

    List<Account> getAll();

    Account safe(Account account);

    void delete(long id);


}

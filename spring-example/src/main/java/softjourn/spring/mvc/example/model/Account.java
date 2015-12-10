package softjourn.spring.mvc.example.model;

import lombok.Data;

import javax.persistence.*;


@Entity
@Table
public class Account {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @Column( columnDefinition = "VARCHAR(255) COLLATE utf8_general_ci")
    private String name;

    @Column( columnDefinition = "VARCHAR(255) COLLATE utf8_general_ci")
    private String email;

    @Column(columnDefinition = "VARCHAR(255) COLLATE utf8_general_ci")
    private String password;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Account{" +
            "id=" + id +
            ", name='" + name + '\'' +
            ", email='" + email + '\'' +
            ", password='" + password + '\'' +
            '}';
    }
}

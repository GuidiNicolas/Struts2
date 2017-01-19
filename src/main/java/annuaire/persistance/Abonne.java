package annuaire.persistance;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by Nicochu on 16/11/2016.
 */

@Entity
@Inheritance(strategy = InheritanceType.JOINED)
public abstract class Abonne {

    @Id @GeneratedValue(strategy = GenerationType.SEQUENCE) 
    private int id_Abonne;

    @ManyToOne
    @JoinColumn(name="id_Annuaire")
    private Annuaire annuaire;

    private String mdp;

	@Column(name="login",unique=true)
    private String login;

    @OneToMany(mappedBy = "abonne")
    private Set<Message> messagesEnvoyes = new HashSet<Message>();

    public Abonne() {

    }

    public Abonne( String login, String mdp, Annuaire annuaire) {
        this.login = login;
        this.mdp = mdp;
        this.annuaire = annuaire;
    }

    public Abonne(String login, String mdp, Annuaire annuaire, Set messagesEnvoyes) {
        this.login = login;
        this.mdp = mdp;
        this.annuaire = annuaire;
        this.messagesEnvoyes = messagesEnvoyes;
    }

    public int getId_Abonne() {
        return id_Abonne;
    }

    public void setId_Abonne(int id_Abonne) {
        this.id_Abonne = id_Abonne;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getMdp() {
        return mdp;
    }

    public void setMdp(String mdp) {
        this.mdp = mdp;
    }

    public Annuaire getAnnuaire() {
        return annuaire;
    }

    public Set<Message> getMessagesEnvoyes() {
        return messagesEnvoyes;
    }

    public void setMessagesEnvoyes(Set<Message> messagesEnvoyes) {
        this.messagesEnvoyes = messagesEnvoyes;
    }
}

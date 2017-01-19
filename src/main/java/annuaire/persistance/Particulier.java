package annuaire.persistance;

import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

/**
 * Created by Nicochu on 16/11/2016.
 */

@Entity
@PrimaryKeyJoinColumn(name = "id_Abonne")
public class Particulier extends  Abonne {

    String nom;
    String prenom;

    public Particulier() {
    }

    public Particulier(String nom, String prenom) {
        this.nom = nom;
        this.prenom = prenom;
    }

    public Particulier( String login, String mdp, String nom, String prenom, Annuaire annuaire) {
        super(login, mdp, annuaire);
        this.nom = nom;
        this.prenom = prenom;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }
}

package annuaire.persistance;

import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;

/**
 * Created by Nicochu on 16/11/2016.
 */

@Entity
@PrimaryKeyJoinColumn(name = "id_Abonne")
public class Entreprise extends Abonne{
	
    private String raisonSociale;

    public Entreprise() {
    }

    public Entreprise(String raisonSociale) {
        this.raisonSociale = raisonSociale;
    }

    public Entreprise(String login, String mdp, String raisonSociale, Annuaire annuaire) {
        super(mdp, login, annuaire);
        this.raisonSociale = raisonSociale;
    }

    public String getRaisonSociale() {
        return raisonSociale;
    }

    public void setRaisonSociale(String raisonSociale) {
        this.raisonSociale = raisonSociale;
    }
}

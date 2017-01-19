package annuaire.persistance;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by Nicochu on 16/11/2016.
 */

@Entity
public class Annuaire {

    @Id @GeneratedValue(strategy = GenerationType.TABLE)
    private int id_Annuaire;

	@Column(name="nom",unique=true)
    private String nom;

    @OneToMany(mappedBy = "annuaire")
    private Set<Abonne> lesAbonnes = new HashSet<Abonne>();

    public Annuaire() {
    }

    public Annuaire(String nom) {
        this.nom = nom;
    }

    public Annuaire(String nom, Set<Abonne> lesAbonnes) {
        this.nom = nom;
        this.lesAbonnes = lesAbonnes;
    }

    public int getId_Annuaire() {
        return id_Annuaire;
    }

    public void setId_Annuaire(int id_Annuaire) {
        this.id_Annuaire = id_Annuaire;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public Set<Abonne> getLesAbonnes() {
        return lesAbonnes;
    }

    public void setLesAbonnes(Set<Abonne> lesAbonnes) {
        this.lesAbonnes = lesAbonnes;
    }
}

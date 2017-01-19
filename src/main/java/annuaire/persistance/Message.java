package annuaire.persistance;

import javax.persistence.*;

/**
 * Created by Nicochu on 16/11/2016.
 */

@Entity
public class Message {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_Message;

    @ManyToOne
    @JoinColumn(name="id_Abonne")
    private Abonne abonne;

    private String objet;
    private String corps;

    public Message() {
    }

    public Message(String objet, String corps) {
        this.objet = objet;
        this.corps = corps;
    }

    public Message(Abonne abonne, String objet, String corps) {
        this.abonne = abonne;
        this.objet = objet;
        this.corps = corps;
    }

    public int getId_Message() {
        return id_Message;
    }

    public void setId_Message(int id_Message) {
        this.id_Message = id_Message;
    }

    public String getObjet() {
        return objet;
    }

    public void setObjet(String objet) {
        this.objet = objet;
    }

    public String getCorps() {
        return corps;
    }

    public void setCorps(String corps) {
        this.corps = corps;
    }

    public Abonne getAbonne() {
        return abonne;
    }
}

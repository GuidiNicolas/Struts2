package annuaire;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


public class HibernateUtil {

    public static final ThreadLocal session = new ThreadLocal();

    public static final SessionFactory sessionFactory;
    static {
        try {
            sessionFactory = new Configuration().configure().buildSessionFactory();
        } catch (HibernateException ex) {
            System.out.println("Initial SessionFactory creation failed." + ex);
            throw new RuntimeException("Problème de configuration : " + ex.getMessage());
        }
    }

    public static Session currentSession() throws HibernateException {
        Session s = (Session) session.get();
        if (s == null) {
            s = sessionFactory.openSession();
            session.set(s);
        }
        return s;
    }

    public static void closeSession() throws HibernateException {
        Session s = (Session) session.get();
        session.set(null);
        if (s != null)
            s.close();
    }

    public static SessionFactory getSessionFactory() {   return sessionFactory;  }

}

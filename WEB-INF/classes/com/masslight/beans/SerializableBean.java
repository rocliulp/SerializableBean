package com.masslight.beans;

import java.beans.*;
import java.io.Serializable;
import java.io.FileOutputStream;
import java.io.ObjectOutputStream;
import java.io.FileInputStream;
import java.io.ObjectInputStream;

public class SerializableBean implements Serializable {
  private int integerProperty = 8;

  public int getIntegerProperty () {
    return integerProperty;
  }

  public void setIntegerProperty (int newInteger) {
    integerProperty = newInteger;
  }

  public boolean save (Object object, String file_name) {
    boolean status = true;

    try {
      FileOutputStream fos;
      ObjectOutputStream oos;
      fos = new FileOutputStream (file_name);
      oos = new ObjectOutputStream (fos);
      oos.writeObject (object);
      oos.close ();
    }
    catch (Exception e) {
      status = false;
      System.out.println ("Error with saving: " + e.toString ());
    }
    return status;
  }

  public Object retrieve (String file_name) {
    Object object = new Object ();

    try {
      FileInputStream fis;
      ObjectInputStream ois;
      fis = new FileInputStream (file_name);
      ois = new ObjectInputStream (fis);
      object = ois.readObject ();
      ois.close ();
    }
    catch (Exception e) {
      System.out.println ("Error with retrieval: " + e.toString ());
    }
    return object;
  }
}

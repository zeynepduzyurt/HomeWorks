
public class DBCEXAMPLE {
	/**
	 *  @inv !isEmpty() implies top() != null   //  boþ nesnelere izin verilmez
	 */
	public interface Stack
	{
	    /**
	     *  @pre o != null    // koþullarý belirtir 
	     *  @post !isEmpty()   // boþ olmamasý gerektiðini söyler. 
	     *  @post top() == o
	     */
	    void push(Object o);
	    /**
	     *  @pre !isEmpty()
	     *  @post @return == top()@pre
	     */
	    Object pop();
	    /**
	     *  @pre !isEmpty()
	     */
	    Object top();
	    boolean isEmpty();
	}
}


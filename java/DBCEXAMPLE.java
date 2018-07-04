
public class DBCEXAMPLE {
	/**
	 *  @inv !isEmpty() implies top() != null   //  bos nesnelere izin verilmez
	 */
	public interface Stack
	{
	    /**
	     *  @pre o != null    // kosullari belirtir 
	     *  @post !isEmpty()   // boþ olmamasi gerektigini söyler. 
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


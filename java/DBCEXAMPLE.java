
public class DBCEXAMPLE {
	/**
	 *  @inv !isEmpty() implies top() != null   //  bo� nesnelere izin verilmez
	 */
	public interface Stack
	{
	    /**
	     *  @pre o != null    // ko�ullar� belirtir 
	     *  @post !isEmpty()   // bo� olmamas� gerekti�ini s�yler. 
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


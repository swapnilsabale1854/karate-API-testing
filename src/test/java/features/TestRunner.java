package features;

import com.intuit.karate.junit5.Karate;
public class TestRunner {
	
	@Karate.Test
	Karate randomEmailTest()
	{
		return Karate.run("RandomEmail").relativeTo(getClass());
		
	}

	@Karate.Test
	Karate getAPITest()
	{
		return Karate.run("GetApi").relativeTo(getClass());
		
	}
	
	@Karate.Test
	Karate postAPITest()
	{
		return Karate.run("PostApi").relativeTo(getClass());
		
	}
	
	@Karate.Test
	Karate putAPITest()
	{
		return Karate.run("Put_API").relativeTo(getClass());
		
	}
	
}

function fn() {

	var env = karate.env; // get java system property 'karate.envData' from TestRunner.java

	karate.log('karate.envData system property was:', env);

	if (!env) {
		env = 'dev'; // a custom 'intelligent' default
	}

	var config = { // base config JSON
		requestBodyIs: '{"title": "Welcome To Karate","body": "Karate Automation Framework","userId": 20}'
		, baseurl: 'https://gorest.co.in',
		tokenID: '592b58514a91f8896e66dcc742d56d64b1eada3a62b0f2e08a2618db660a0d46'

	};
	if (env == 'QA') {
		// over-ride only those that need to be
		config.requestBodyIs = '{"title": "Welcome To Karate QA ","QA body": "Karate Automation Framework","userId": 20}';
	} else if (env == 'STG') {
		config.requestBodyIs = '{"title": "Welcome To Karate STG","STG body": "Karate Automation Framework","userId": 20}';
	}

	return config;
}
# Robot Framework Test Automation

## Level 1 (Selenium)

Full cource can be found here:
https://www.linkedin.com/learning/robot-framework-test-automation-level-1-selenium/

### Prepare environment

```
$ python3 -m pip install robotframework
$ python3 -m pip install robotframework-seleniumlibrary

$ $ robot --version
Robot Framework 3.1.2 (Python 3.7.4 on darwin)

```

### To find required Robotframework libraries

	https://pypi.org
	https://robotframework.org/#libraries
	https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html

### How to run scenarios

1. Execute specific test suite

	`robot -d Results/ Tests/amazon.robot`

2. Execute all test suites
    
    `robot -d Results/ Tests`

3. Execute test suites providing top level suite title

    `robot -d Results/ -N "Full Regression" tests`

4. Execute test suites if .robot file has spaces

    `robot -d Results/ "tests/<test suite name with spaces>"`

5. Execute specific test case

    `robot -d Results/ -t "User can click on logo image" tests`

6. Execute test cases with specific tag

    `robot -d Results/ -i smoke tests`

## If you decide to run Robot Framework tests from Jenkins

```
FROM jenkins/jenkins:lts
USER root
RUN apt-get update && apt-get install -y python3 python3-pip
RUN python3 -m pip install robotframework
RUN python3 -m pip install robotframework-seleniumlibrary
#USER jenkins
#........
```
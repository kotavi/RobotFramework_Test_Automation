# Robot Framework Test Automation

## Level 1 (Selenium)

Full cource can be found here:
https://www.linkedin.com/learning/robot-framework-test-automation-level-1-selenium/

### Prepare environment

```
$ python3 -m pip install robotframework
$ python3 -m pip install robotframework-seleniumlibrary
```

### To find required Robotframework libraries

	https://pypi.org
	https://robotframework.org/#libraries
	https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html

### How to execute .robot scenario

	robot -d Results/ Tests/amazon.robot

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
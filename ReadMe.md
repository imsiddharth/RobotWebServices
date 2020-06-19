
 
 
# Robot Framework Rest Service



<p>
  <a href="https://twitter.com/intent/follow?screen_name=mad_pandey"><img align="left" src="https://img.shields.io/twitter/follow/mad_pandey.svg?style=social&label=Follow%20@mad_pandey" alt="Follow on Twitter"></a>
<br />
</p>



| **CI Provider**  | **Status** |
| ------------- | ------------- |
| **Github Actions**  | [RobotWebServices](https://github.com/imsiddharth/RobotWebServices)|
| **Travis** | [![Travis](https://travis-ci.org/imsiddharth/RobotWebServices.svg)](https://travis-ci.org/imsiddharth/RobotWebServices) |


### What I added
  * Added Travis Integration 
  * Added Github Actions 
  * Added one small test which is in the document example
  * To run on CI added docker support.
  * Documentation is insightful, please read before adopting
  * Quick setup work. 

## Documentation
```url
```

## Framework
```url
```


### Required
* python 3.x.x
* pip3
* virtualenv
* Docker Setup

### Quick Setup
* Clone
  ```bash
    git clone https://github.com/imsiddharth/RobotWebServices.git
    cd RobotWebServices
  ```
  
* python --verison
  ```bash
    Python 3.8.0
  ```
* pip3 install
    ```bash
        pip3 install virtualenv
        virtualenv .env
        source .env/bin/activate
        pip install robotframework
        pip install robotframework-seleniumlibrary
    ```
* Run 
    ```python
         robot -d results Tests/   
    ```

* Execution Log
  
```bash
(venv) siddharth@MacBook-Pro RobotWebServices % robot -d results  Tests
==============================================================================
Tests                                                                         
==============================================================================
Tests.TC1 GET Request                                                         
==============================================================================
Get Weather Info                                                      | PASS |
------------------------------------------------------------------------------
Tests.TC1 GET Request                                                 | PASS |
1 critical test, 1 passed, 0 failed
1 test total, 1 passed, 0 failed
==============================================================================
Tests.TC2 POST Request                                                        
==============================================================================
Customer Registration                                                 ....201
.{
    "SuccessCode": "OPERATION_SUCCESS",
    "Message": "Operation completed successfully"
}
Customer Registration                                                 | PASS |
------------------------------------------------------------------------------
Tests.TC2 POST Request                                                | PASS |
1 critical test, 1 passed, 0 failed
1 test total, 1 passed, 0 failed
==============================================================================
Tests                                                                 | PASS |
2 critical tests, 2 passed, 0 failed
2 tests total, 2 passed, 0 failed
==============================================================================
Output:  /Users/siddharth/PycharmProjects/RobotWebServices/results/output.xml
Log:     /Users/siddharth/PycharmProjects/RobotWebServices/results/log.html
Report:  /Users/siddharth/PycharmProjects/RobotWebServices/results/report.html

``` 
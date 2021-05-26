# Demo of bugs in Styra

This is a repo used to demonstrate bugs in Styra DAS Git integration

## Create an initial state in your repo

* root
  * rego
    * folder1
      * rules1.rego
    * folder2
      * rules2.rego  

## Create a Styra DAS system

* Delete the files already there (rules.rego and test.rego)
* Set it to read-only, as we do not intend to use the UI to edit rules, but instead let them flow from the source control system
* Set up Git integration. You will need to create a Personal Access Token.

## Test your system

* Follow instructions in the 'install' tab of the settings.
* Send POST to your local OPA to the url http://localhost:8181/data/folder1, you should receive a allow = false of some kind unless you specify the right input.
* See tag "Working-1" in this repo.

## Delete folder1

* Commit, wait, and test the system again.
* Folder1 gets deleted, so this bug is now fixed

## Restructure folder2

Make it look like this:

* root
  * rego
    * folder2
      * subfolder1
        * rules1.rego
      * subfolder2
        * rules2.rego  

* Adjust package names
* Commit, wait, and test the system again.

## :boom: synced, but not looking good.
![image](https://user-images.githubusercontent.com/404432/119728837-31727300-be74-11eb-9f55-e695c18169ed.png)

## Fix

* Delete what looks bad
* ![image](https://user-images.githubusercontent.com/404432/119729714-44397780-be75-11eb-8bf1-9f55904d9fd9.png)
* Do a whitespace change to each file in the subfolder
* Commit, push and wait
* Looks good again:
* ![image](https://user-images.githubusercontent.com/404432/119729937-7d71e780-be75-11eb-8512-151856cb7079.png)






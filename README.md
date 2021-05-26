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

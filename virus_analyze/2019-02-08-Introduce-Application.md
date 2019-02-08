# Instruction Manual

**Run Application**

Please use python version > 3.5

```bash
python3.5 main.py
```

The main window will show like the followed picture.

![](/images/2019-02-08-13-29-25.png)

## Search function

Now you can search by  `ID, Importance, Urgency, Property, Tags, Read, Date`. There is some information about the `Name`, `Property`, and `Tags`.

* Name: The scripts file name in the file system. You can open the script file by `Edit-->Open Script Code`. By the way, you need to choose one of the script files in the table firstly.
* Property: The field was added by the graph analyze tool, it added some information about this scripts. Please look at the information about this feature.[BashGraph](./2019-02-04-BashGraph-API/)
* Tags: You can edit it by yourself, and add some identifier for each script you want to focus.

When you use the search function, you can choose one of them to search. The input data is a string. You can search two keywords together using split symbol `, `. There is an example.

![](/images/2019-02-08-13-40-29.png)

## Menu bar

### File

* New Repository: Build a new repository and import a new dataset.
* Open Repository: Open an existing repository and change the database.
* Save as JSON: Export the search result to a JSON file. In the project root folder, you can find '.cache/output.json' file.

### Edit

* Edit information: Change the script information in the dataset. You can change the `Importance, Urgency, Property, Tags, Read, Date`.
* Show Tags: Get all the tags which you used in this repository.
* Show script Path: Get the script path which you choose in the table.
* Show All commands count: Get all the commands from all scripts in this repository.
* Show All Linux commands count: Get all Linux commands from all scripts in this repository.
* Show Commands Count: Get the commands count for one Bash scripts.
* Open Scripts code: Open the script's code by gedit application.
* Open Scripts Graph: Generate and open the script graph by evince application.
* Scripts Detail: Get the detail information about this scripts information from the virtual total website.

### Tools

* Generate All Commands Graph: This use to generate all the dot files for scripts in this repo.
* Update Script property: Update all the scripts property in this repository.

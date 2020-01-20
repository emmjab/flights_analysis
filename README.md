# Flights tutorial

This is a project for introducing the basic concepts of the Renku platform. 
It contains some basic scripts to analyze flights data from the U.S. Department
of Transportation. For convenience, we have published a 
[subset of this data](https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/WTZS4K)
for use with the tutorial on the Harvard Dataverse. 

## Completing the tutorial

The renku ["First steps" tutorial](https://renku.readthedocs.io/en/latest/user/firststeps.html)
starts a new project from scratch and populates it with the necessary scripts 
and data to run a basic analysis. This project skips ahead and already contains 
the code you will need. 

To continue:

1. Create an account on https://renkulab.io.
2. Fork this project to your own namespace. 
3. Click on `Environments -> New` and start a new JupyterLab session. 

The project is still missing the data. Click on the link to the Dataverse dataset
above, copy paste the URL and do:

```
/work/flights-tutorial$ renku dataset import <paste Dataverse URL>
```

Now you can continue with the tutorial, starting with 
["Build a reproducible workflow"](https://renku.readthedocs.io/en/latest/user/firststeps.html#build-a-reproducible-workflow).


### About contributing
We appreciate suggestions to improve the code and resolve bug fixes, but please be respectful and follow the [code of conduct](CODE_OF_CONDUCT.md).



### How to contribute
1. On your GitHub account, fork the package repository.  



2. Clone your fork of the repository to your local machine using a Command Line Interface tool. 

```
git clone https://github.com/PATH-TO-YOUR-FORKED-REPOSITORY
```
3. Navigate to the directory containing the R package on your machine.

4. Install the dependencies listed in [DESCRIPTION](https://github.com/DSCI-310-2024/predictcultivar/blob/48b9c1a908af3588241afb6f51b18fefc9c00a60/DESCRIPTION). 

```
Rscript -e 'devtools::install_deps()'
```

5. Once your local environment is up-to-date, you can create a new git branch which will contain your contribution (always create a new branch instead of making changes to the main branch):

```
git switch -c <your-branch-name>
```

6. Start contributing! 



### Making a Pull Request
1. Ensure your code runs correctly and is well documented.


2. Create a pull request. 

```
git add <modified-file>` 

git commit -m "Some descriptive message about your change"` 

git push origin <your-branch-name>`
```

3. Someone from our team will review your changes and decide whether to add this to the main code.


### Attribution
These contributing guidelines were adapted from the [altair contributing guidelines](https://github.com/altair-viz/altair/blob/5d9c0a9c4d69b9fbb1b30e91b85939750a464564/CONTRIBUTING.md).

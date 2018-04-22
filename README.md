# hi-node
Lab app to use in azure deploy. we create two release branch v1.0 and v1.1, to test swapping deployment slots(prod and uat).

- v1.0 will display hi azure 1.0 (prod)
- v1.1 will display hi azure 1.1 (uat)

## git change

### [1] create branches

```
- create a branch from master
git checkout -b v1.0
git commit -a -m 'added branch v1.0'

- push local branch to remote
git push -u origin v1.0

- list branches
git branch -a

- merge v1.1 to master
git checkout master
git merge v1.1
```

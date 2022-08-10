# Backend Slime
<br />

### After Cloning the backend repo

``` 
cd backend_slime/smartcontract 
```

* Install hardhat & hardhat-toolbox plugin to provide a local ethereum dev environment:
``` 
npm install --save-dev "hardhat@^2.10.1" "@nomicfoundation/hardhat-toolbox@^1.0.1" 
```
<!-- <br/> -->
  
* Setup config files for development
```
npx hardhat
```

* Test to ensure files were setup correctly
```
npx hardhat test
```
# My Personal Training Catalog Back-End

This back uses Ruby and Sinatra to feed the front-end of the [My Training Catalog](https://github.com/tred237/my-app-frontend) app.

## Setup

1. In Github, fork this repository.

![image](https://user-images.githubusercontent.com/103388556/189546584-8ec5fef7-4d7d-4c47-ae6b-f6e6ae834a69.png)

![image](https://user-images.githubusercontent.com/103388556/189546761-f0f05411-1967-46c7-b081-063bc6951ae0.png)

2. Copy the SSH key from the forked repository.

![image](https://user-images.githubusercontent.com/103388556/189546817-4d32dcbb-e79e-4220-8fc2-c573d21e9cc1.png)
  
3. In your terminal, clone the repository using the SSH key you copied from the fork
```
git clone <pasted-ssh-key>
```
  
4. Navigate to the root of the cloned repository and install dependancies 
```
cd phase-3-sinatra-react-project
bundle install
```

## Usage

In your terminal, navigate to the root of your back-end directory and run the following commands.
```
bundle exec rake db:seed
bundle exec rake db:server
```

This will run your server on port
[http://localhost:9292](http://localhost:9292)

## Routes

Clients
```
http://localhost:9292/clients
```


## Contributing

Contributions are welcome, but please open an issue first to discuss what you would like to change. If you fork the repository, please rememeber that this code is not meant to be monetizable or for commercial use.

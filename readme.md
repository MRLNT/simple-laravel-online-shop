## Requirements 
-   Laravel <=5.8
-   PHP <= 7.1.3
-   Composer Version 2 
## Installation Steps 

How to run Laravel on local computer:
1. Make sure you have PHP and a web server (such as XAMPP or Laragon) installed on your computer.
2. Open the terminal or command prompt and navigate to the Laravel project directory.
3. Run the command composer install / composer update to install the dependencies required by the project.
4. Create database for  your project with the name as <code>laraveldb</code>
5. Copy the .env.example file and rename it to .env. Then configure your database credentials within the .env file.
6. Run the command php artisan key:generate to generate the application key.
7. Run the command php artisan migrate to create the database tables.
8. Run the command php artisan serve to start the built-in Laravel web server.
9. Open your browser and go to the address http://localhost:8000 to view the running Laravel project.

Note: These steps may vary depending on the operating system and settings you are using. If you experience any problems, be sure to read the Laravel documentation and seek help if necessary.

### Dashboard Details
- Admin : http://127.0.0.1:8000/admin-dash
    -   Login Id : admin123@gmail.com
    -   Password : admin123
- User  : http://127.0.0.1:8000/dashboard 

## License

The project developed using laravel framework is open-source software licensed under the [MIT license](https://opensource.org/licenses/MIT).
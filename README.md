## Features:
1. CRUD of 'Inventory_items'.
2. Ability to create warehouses/locations and assign inventory to specific locations, including:
   a) CRUD of 'Warehouses'
   b) CRUD of 'Locations'
   c) Each 'Warehouse' contains many 'Locations' to store items.
3. Simple frontend (views) to test the CRUD functions of the items/warehouses/locations.

## Database design
   ![image](https://user-images.githubusercontent.com/45097607/150269665-4922e951-3bdf-4edd-93b0-a7297c5ec4ec.png)

## Program set-up
I used Ruby on Rails to build the application. Here are the steps that I took to set up the environment. And I used a Windows laptop.

- First: install the package 'Windows 2.3' version from https://web.archive.org/web/20210306035811/http://railsinstaller.org/en
- Download Ruby `3.0.3p157 (2021-11-24 revision 3fb7d2cadc) [x64-mingw32]` from https://rubyinstaller.org/downloads/
- Install Rails `7.0.1` using `gem`

Once you get the above successfully downloaded, you can download my repository to your local computer and cd into its directory. Run `rails server` and the application starts to running! You can then go to `localhost:3000` (by default) to check out the web application. 

The first page you see is the page for showing up all the inventory_items. And you can CRUD new warehouses and locations by going to `locahost:3000/warehouses/new` and `locahost:3000/warehouses/#identifier/locations/new`.

## Future Improvements
1. Due to time constraints, I did not write tests for the application. Since our application contains views (frontend in some senses), I manually tested it functions. But I should defintely write tests in the future for scalability concerns.

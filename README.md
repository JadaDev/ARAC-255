
# ARAC Level 80 to 255 Installation Guide

This guide provides instructions for installing ARAC Level 80 to 255, a custom SQL script that allows players to create characters with all classes and races, as well as fixing any potential database errors. Please note that this installation process involves modifying your database and requires caution. Follow the steps below to install the script successfully:

## Prerequisites

-   A compatible World of Warcraft server setup.
-   Access to the database where your server stores its data.

## Installation Steps

1.  Download the ARAC Level 80 to 255 package.
2.  Locate the "ARAC_80-255-FULL.sql" file within the downloaded package. This file is located inside the DB [SQL] folder.
3.  Run the "ARAC_80-255-FULL.sql" script on your database. This script will make the necessary modifications to enable character creation with all classes and races. Please exercise caution when making changes to your database and ensure you have a backup.

## Backup (Recommended)

To safeguard your database before running the installation script, it is highly recommended to create a backup. You can create a backup by running the "Create_backup.sql" script provided in the ARAC Level 80 to 255 package.

**Note:** The backup process is crucial to ensure that you have a restore point in case of any unexpected issues or data corruption.

## Database Error Fixing

If you encounter any database errors related to the maximum level, you can resolve them by changing the "maxlevel" value in both the database and the corresponding C++ files to 255. This adjustment will align the database and server settings to support the extended level range.

## Credits

JadaDev for creating this custom SQL script that allows ARAC to work on Latest TrinityCore Version Completely properly and with level 80 to 255.
Also Credits goes to whoever started the original script for the Patch-A.MPQ.

## Disclaimer

**Warning:** It is essential to exercise caution and take appropriate measures to protect your database before making any changes. While this installation guide provides instructions for a safe installation process, the author (JadaDev) cannot be held responsible for any damage or data loss that may occur during the installation process. Remember to use the "Create_backup.sql" script to create a backup before proceeding.

## Final Steps

After successfully running the SQL script, players should place the "Patch-A.MPQ" file located in the PATCH folder inside their World of Warcraft client's data folder. This file ensures that the necessary game files are updated to support the extended level range.

Once the installation is complete, players can enjoy the expanded character creation options and the increased maximum level range on their World of Warcraft server.

If you have any questions or encounter any issues during the installation process, please open issue on Github.

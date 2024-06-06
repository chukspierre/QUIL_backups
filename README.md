# QUIL Node Backups

This is a basic backup script that creates a new folder in the `$HOME` directory with the current date as the name, then backs up specific configuration files and directories.

## Files and Directories Backed Up

- `~/ceremonyclient/node/.config/config.yml`
- `~/ceremonyclient/node/.config/keys.yml`
- `~/ceremonyclient/node/.config/store`

## Removal of backups that are older than 21 days

Searchs for directories in the home directory ($HOME) that match the format YYYY-MM-DD (which is the format used for the backup folders created by the script) that are older than 21 days and deletes them to reduce storage utilization.

## Usage

1. **Download the Script**

    ```sh
    wget https://raw.githubusercontent.com/TidalWavesNode/QUIL_backups/main/backing_up.sh
    ```

2. **Make the Script Executable**

    ```sh
    chmod +x backing_up.sh
    ```

3. **Run the Script Manually**

    You can run the script manually to test it:

    ```sh
    ./backing_up.sh
    ```

## Scheduling the Script with Cron

To automate the script to run daily, you can set up a cron job:

1. **Open the Crontab Editor**

    ```sh
    crontab -e
    ```

2. **Add the Cron Job**

    Add the following line to schedule the script to run daily at 2 AM:

    ```sh
    0 2 * * * /bin/bash /path/to/your/backing_up.sh
    ```

    Replace `/path/to/your/backing_up.sh` with the actual path to the `backing_up.sh` file.

   * Note - If downloaded to the root directory (highest (top-most) directory in the filesystem hierarchy) file path will be /root/backing_up/sh

4. **Save and Exit**

    Save the file and exit the editor. This will set up the cron job to run the script daily at 2 AM.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any changes or enhancements.

## Disclaim

## Disclaimer

**Use at your own risk:** This backup script and associated instructions are provided as-is and without warranty. While efforts have been made to ensure its reliability, it's essential to understand the functionality and implications of using the script. By using this script, you agree that the author and contributors shall not be held liable for any damages or issues arising from its use.

**Read the code:** Before using this script, it's strongly recommended to review the code to understand its behavior fully. Ensure that the script aligns with your requirements and that you are comfortable with its operation. Feel free to modify the script to suit your specific needs or consult with a knowledgeable individual if you have any questions or concerns.

## Author

Created by [TidalWavesNode](https://github.com/tidalwavesnode).

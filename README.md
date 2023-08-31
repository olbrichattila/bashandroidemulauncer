# Launch Android Emulator from command line

The `lae.sh` Script will run your android emulator.

1. Install your emulator(s) with Android Studio (or otherwise)
2. Run the script
3. Enter the id of the emulator to run from the list
4. Press enter

Example:

```
./lae.sh
```

```
Select an emulator:
[0] 3.7_WVGA_Nexus_One_API_30
[1] Nexus_10_API_30
[2] Nexus_10_API_34
[3] Pixel_6a_API_30
[4] Pixel_7_API_30
[5] Pixel_C_API_30
[6] Resizable_Experimental_API_34
Enter the index of the emulator to open:
```

## Notes

### You may have to make your file executable:
```
chmod +x ./lae.sh
```

### SDK Path
If it does not work, you may have to change the emulator path in your bash scrpit: (2 occurances)

```
~/Android/Sdk/emulator/emulator
```

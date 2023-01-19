# Project xdroid

### To get started with building xdroid GSI,
you'll need to get familiar with [Git and Repo](https://source.android.com/source/using-repo.html) as well as [How to build a GSI](https://github.com/phhusson/treble_experimentations/wiki/How-to-build-a-GSI%3F).


### Create the directories

As a first step, you'll have to create and enter a folder with the appropriate name.
To do that, run these commands:

```bash
   mkdir xdroid
   cd xdroid
```

### To initialize your local repository, run this command:

```bash
   repo init -u https://github.com/xdroid-oss/xd_manifest -b twelve
```
 

### Clone the Manifest to add necessary dependencies for gsi:
 
    git clone https://github.com/naz664/treble_manifest.git .repo/local_manifests  -b 13
  


### Afterwards, sync the source by running this command:

```bash
repo sync --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$(nproc --all)
```


### After syncing, apply the patches:

Copy the patches folder to rom folder and in rom folder

```
   bash patches/apply-patches.sh .
```

## Generating Rom Makefile

 In rom folder,
 
 ```
    cd device/phh/treble
    bash generate.sh xdroid
 ```

### Turn on caching to speed up build

You can speed up subsequent builds by adding these lines to your ~/.bashrc OR ~/.zshrc file:

```
export USE_CCACHE=1
export CCACHE_COMPRESS=1
export CCACHE_MAXSIZE=50G # 50 GB
``` 

## Compilation 

In rom folder,

 ```
 . build/envsetup.sh
 ccache -M 50G -F 0
 lunch treble_arm64_bgN-userdebug 
 make systemimage -j$(nproc --all)
 ```


## Compress

After compilation,
If you want to compress the build.
In rom folder,

   ```
        cd out/target/product/tdgsi_arm64_ab
        xz -z -k system.img 
   ```


## Troubleshoot
 
If you face any conflicts while applying patches, apply the patch manually.

## Screenshots
![image](https://user-images.githubusercontent.com/79507925/189936465-7be7fb0f-1c05-4bdc-a924-2ddbe5fc5f75.png)
![image](https://user-images.githubusercontent.com/79507925/189936627-640c1f45-ddc2-47cd-af74-0286edeacd10.png)
![image](https://user-images.githubusercontent.com/79507925/189936935-7e940a12-20b7-46f1-b837-1bdd8eaff709.png)
![image](https://user-images.githubusercontent.com/79507925/189937040-7c63f3c6-d2c7-4cd9-9cae-4e6c1460cc9e.png)
![image](https://user-images.githubusercontent.com/79507925/189937080-acffa87b-d841-4e0e-a47c-55332c6ad3cb.png)
![image](https://user-images.githubusercontent.com/79507925/189937175-86bf1cc4-4977-4ba4-8c87-8b760a788a33.png)

## Credits
These people have helped this project in some way or another, so they should be the ones who receive all the credit:
- [xdroid Team](https://github.com/xdroid-oss)
- [Phhusson](https://github.com/phhusson)
- [AndyYan](https://github.com/AndyCGYan)
- [Ponces](https://github.com/ponces)
- [Yilliee](https://github.com/Yilliee)
- [ChonDoit](https://github.com/ChonDoit)

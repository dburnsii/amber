# How to publish amberframework using snapcraft

## install snapcraft

On mac: `brew install snapcraft`

On linux: `sudo snap install snapcraft --classic`

## build the snap

From the root directory of amber:
```bash
snapcraft
```

This will create a file `amberframework_version_amd64.snap`

## publish the snap

To publish the snap, you need to login and have permissions to the amberframework snap store:
```bash
snapcraft login
snapcraft push *.snap --release=[edge, beta, candidate, stable]
```

Currently, the snap is in development mode so you can only push to edge or beta.

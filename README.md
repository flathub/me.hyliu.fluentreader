# Fluent Reader Flatpak

This is the Flatpak version [Fluent Reader](https://hyliu.me/fluent-reader/).

## Building

1. Install [`flatpak-builder`](https://docs.flatpak.org/en/latest/first-build.html#building-your-first-flatpak) and [`pipx`](https://pypa.github.io/pipx/).

2. Be sure to install the required Flatpak Runntimes and SDKs:

    ```bash
    flatpak install org.electronjs.Electron2.BaseApp/x86_64/21.08
    flatpak install org.freedesktop.Sdk.Extension.node14/x86_64/21.08
    ```

3. (If necessary) Update the `generated-sources.json` file with the correct release from Fluent Reader (see [here](https://github.com/yang991178/fluent-reader/releases)). In this case, we will run with `v1.1.3`:

    ```bash
    ./update.sh v1.1.3
    ```

4. Build the Flatpak:

    ```bash
    flatpak-builder build-dir me.hyliu.fluentreader.yml
    ```

5. Install and run the Flatpak:

    ```bash
    flatpak-builder --force-clean --user --install build-dir me.hyliu.fluentreader.yml
    ```

    ```bash
    flatpak run me.hyliu.fluentreader
    ```

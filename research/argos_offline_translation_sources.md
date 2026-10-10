# Argos Translate offline translation notes

- Official repository and README: https://github.com/argosopentech/argos-translate
  - Describes Argos Translate as an open-source offline translation library using installable `.argosmodel` language packages.
  - Documents Python package installation (`pip install argostranslate`) and API usage (`get_available_packages`, `download`, `install_from_path`, and `translate`).
  - Lists supported languages including Chinese, Finnish, French, German, Hindi, Indonesian, Italian, Japanese, Korean, Portuguese, Russian, Spanish, Thai, Turkish, and Vietnamese.
- Official model/package index: https://www.argosopentech.com/argospm/index/
  - Confirms direct English-to-target packages for Simplified Chinese (`zh`), Traditional Chinese (`zt`), Finnish (`fi`), Japanese (`ja`), Korean (`ko`), French (`fr`), German (`de`), Spanish (`es`), Portuguese (`pt`), Russian (`ru`), Arabic (`ar`), Hindi (`hi`), Indonesian (`id`), Thai (`th`), Vietnamese (`vi`), Italian (`it`), and Turkish (`tr`).
  - Packages are downloaded only during build-time; the APK will bundle translated text catalogs, not model binaries, so runtime language switching can work offline.

# PixelLab Plus 定制项目

本仓库保存 PixelLab Plus 的离线界面本地化与定制改动，包括 Smali 基线、辅助源码、构建脚本和 17 种语言目录。它不包含原始 APK，也不是可直接安装的 APK 发布页。

## 目录

- `decoded/smali/`：用于应用定制与 DEX 重组的 Smali 源码。
- `src/`：定制 Java 源码参考。
- `locale_assets/pixellab_locales/`：离线语言目录（简体/繁体中文及其他 15 种语言）。
- `scripts/`：语言目录生成、修复、界面增强和 APK 打包脚本。
- `resources_values.txt`、`string_resources.json`：本地化处理所需的资源文本数据。
- `research/`：Argos Translate 离线翻译模型来源说明。

## 本地构建说明

脚本依赖原始 PixelLab Plus APK、Android SDK Build Tools、Smali 工具和 Python 环境。`generate_locale_catalogs.py` 会从 Argos Translate 软件包索引下载所需语言模型；模型文件不随仓库提交。运行前请检查并按自己的环境调整脚本中的项目路径、原始 APK、SDK 和签名配置。构建出的 APK 应在本地验证后再分发。

仓库不追踪 `.venv/`、`models/*.argosmodel`、`build/`、APK/签名文件、反编译资源素材和旧版 `decoded212/` 副本；这些目录和文件体积很大或属于可再生成的本地构建产物。

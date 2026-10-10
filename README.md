# PixelLab Plus 定制项目

本仓库保存 PixelLab Plus 的离线界面本地化与定制改动，包括 Smali 基线、辅助源码、构建脚本和 17 种语言目录。它不包含原始 APK，也不是可直接安装的 APK 发布页。

## 目录

- `decoded/smali/`：用于应用定制与 DEX 重组的 Smali 源码。
- `src/`：定制 Java 源码参考。
- `locale_assets/pixellab_locales/`：离线语言目录（简体/繁体中文及其他 15 种语言）。
- `scripts/`：语言目录生成、修复、界面增强和 APK 打包脚本。
- `scripts/patch_theme_longpress.py`：全局主题控件补全、对话框主题和画布长按文字删除补丁（可重复运行）。
- `resources_values.txt`、`string_resources.json`：本地化处理所需的资源文本数据。
- `research/`：Argos Translate 离线翻译模型来源说明。

## 本地构建说明

构建脚本依赖 Android SDK Build Tools、Smali 工具、签名密钥，以及 `/workspace/PixelLabPlus_1.9.5_plus_enhanced_language_group_fixed.apk` 作为当前基础 APK。运行 `scripts/package_plus_fixed_apk.sh` 会先应用主题/长按补丁，再组装 DEX、打包 17 种离线语言目录并验证签名与包内资源。新 APK 输出至 `/workspace/PixelLabPlus_1.9.5_plus_enhanced_global_theme_longpress_fixed.apk`。`generate_locale_catalogs.py` 会从 Argos Translate 软件包索引下载所需语言模型；模型文件不随仓库提交。

长按画布文字时仅在手指未明显移动且长按目标仍为当前选中文字的情况下弹出删除/取消操作；删除继续调用原有对象历史记录流程，因此可通过应用撤销。主题覆盖文字、提示文字、按钮/复选组件、进度控件、图标和主要容器，并保留画布文字及大尺寸图片内容本身的颜色。

仓库不追踪 `.venv/`、`models/*.argosmodel`、`build/`、APK/签名文件、反编译资源素材和旧版 `decoded212/` 副本；这些目录和文件体积很大或属于可再生成的本地构建产物。

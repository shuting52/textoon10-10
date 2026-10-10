# PixelLab Plus 定制项目

本仓库保存 PixelLab Plus 的离线界面本地化与定制改动，包括 Smali 基线、辅助源码、构建脚本和 17 种语言目录。当前构建会将 Android applicationId 设置为 `com.PixelLab2026.app`，不包含原始 APK，也不是可直接安装的 APK 发布页。

## 目录

- `decoded/smali/`：用于应用定制与 DEX 重组的 Smali 源码。
- `src/`：定制 Java 源码参考。
- `locale_assets/pixellab_locales/`：离线语言目录（简体/繁体中文及其他 15 种语言）。
- `scripts/`：语言目录生成、修复、界面增强和 APK 打包脚本。
- `scripts/patch_theme_longpress.py`：全局主题控件补全、对话框主题和画布长按文字删除补丁（可重复运行）。
- `resources_values.txt`、`string_resources.json`：本地化处理所需的资源文本数据。
- `research/`：Argos Translate 离线翻译模型来源说明。

## Android 兼容性

- 最低系统版本恢复为 Android 4.1（API 16），与此前工程配置一致，位置在 `decoded/apktool.yml`。
- `targetSdkVersion` 暂保留为 API 23，以避免在未迁移旧版外部存储读写逻辑前启用较新的存储与系统行为限制。APK 声明可面向 Android 4.1 及以上系统安装，但本项目未在每个 Android 版本上进行真机验证；API 23 目标版本也不满足 Google Play 当前新应用/更新的 API 36 目标要求。
- 华为设备需区分系统版本和服务框架：带 Android 应用兼容环境的机型可按 APK 方式测试；该应用含 Google 广告和 Play Billing 组件，在缺少 GMS/Google Play 的设备上相应广告、购买能力可能不可用。HarmonyOS 原生环境/不同版本的 APK 兼容能力未在本项目中验证；完整原生适配需要额外的 HarmonyOS 工程及 HMS 服务实现。

## 本地构建说明

构建依赖 Android SDK Build Tools 37.0.0、Smali 工具、签名密钥，以及 `/workspace/PixelLabPlus_1.9.5_plus_enhanced_global_theme_longpress_fixed.apk` 作为基础 APK。基础 APK 不包含在仓库中。运行 `scripts/package_plus_fixed_apk.sh` 会应用主题/长按补丁、组装 DEX、仅重写基础 APK 二进制 `AndroidManifest.xml`（设置 `com.PixelLab2026.app`、同步 Crashlytics Provider 权限并设置最低/目标 SDK，不重编旧资源表）、打包 17 种离线语言目录并验证包名、SDK 元数据、签名和包内资源。新 APK 输出至 `/workspace/PixelLabPlus_1.9.5_PixelLab2026.apk`。如需指定其他基础 APK，可设置 `PIXELLAB_BASE_APK`。`generate_locale_catalogs.py` 会从 Argos Translate 软件包索引下载所需语言模型；模型文件不随仓库提交。

长按画布文字时仅在手指未明显移动且长按目标仍为当前选中文字的情况下弹出删除/取消操作；删除继续调用原有对象历史记录流程，因此可通过应用撤销。主题覆盖文字、提示文字、按钮/复选组件、进度控件、图标和主要容器，并保留画布文字及大尺寸图片内容本身的颜色。

仓库不追踪 `.venv/`、`models/*.argosmodel`、`build/`、APK/签名文件、反编译资源素材和旧版 `decoded212/` 副本；这些目录和文件体积很大或属于可再生成的本地构建产物。

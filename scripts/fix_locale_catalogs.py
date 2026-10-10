#!/usr/bin/env python3
"""Apply reviewed UI glossary fixes to generated offline locale catalogs."""
import json
from pathlib import Path

ROOT = Path('/workspace/pixellabplus_custom')
SOURCE = json.loads((ROOT / 'string_resources.json').read_text(encoding='utf-8'))
CATALOG_DIR = ROOT / 'locale_assets' / 'pixellab_locales'
LANGS = ['zh-CN', 'zh-TW', 'fi', 'ja', 'ko', 'fr', 'de', 'es', 'pt', 'ru', 'ar', 'hi', 'id', 'th', 'vi', 'it', 'tr']

# List order follows LANGS above. These hand-reviewed action labels correct
# ambiguous short phrases that statistical models frequently mistranslate.
TERMS = {
    'share': ['分享', '分享', 'Jaa', '共有', '공유', 'Partager', 'Teilen', 'Compartir', 'Compartilhar', 'Поделиться', 'مشاركة', 'साझा करें', 'Bagikan', 'แชร์', 'Chia sẻ', 'Condividi', 'Paylaş'],
    'cancel': ['取消', '取消', 'Peruuta', 'キャンセル', '취소', 'Annuler', 'Abbrechen', 'Cancelar', 'Cancelar', 'Отмена', 'إلغاء', 'रद्द करें', 'Batal', 'ยกเลิก', 'Hủy', 'Annulla', 'İptal'],
    'cancel_caps': ['取消', '取消', 'PERUUTA', 'キャンセル', '취소', 'ANNULER', 'ABBRECHEN', 'CANCELAR', 'CANCELAR', 'ОТМЕНА', 'إلغاء', 'रद्द करें', 'BATAL', 'ยกเลิก', 'HỦY', 'ANNULLA', 'İPTAL'],
    'sticker': ['贴纸', '貼圖', 'Tarra', 'ステッカー', '스티커', 'Autocollant', 'Sticker', 'Pegatina', 'Adesivo', 'Наклейка', 'ملصق', 'स्टिकर', 'Stiker', 'สติกเกอร์', 'Nhãn dán', 'Adesivo', 'Çıkartma'],
    'add_quote': ['添加名言', '新增語錄', 'Lisää sitaatti', '名言を追加', '명언 추가', 'Ajouter une citation', 'Zitat hinzufügen', 'Añadir cita', 'Adicionar citação', 'Добавить цитату', 'إضافة اقتباس', 'उद्धरण जोड़ें', 'Tambahkan kutipan', 'เพิ่มคำคม', 'Thêm trích dẫn', 'Aggiungi citazione', 'Alıntı ekle'],
    'browse_quotes': ['浏览名言', '瀏覽語錄', 'Selaa sitaatteja', '名言を見る', '명언 둘러보기', 'Parcourir les citations', 'Zitate durchsuchen', 'Explorar citas', 'Explorar citações', 'Просмотр цитат', 'تصفح الاقتباسات', 'उद्धरण ब्राउज़ करें', 'Telusuri kutipan', 'เรียกดูคำคม', 'Duyệt trích dẫn', 'Sfoglia le citazioni', 'Alıntılara göz at'],
    'quotes': ['名言', '語錄', 'Sitaatit', '名言', '명언', 'Citations', 'Zitate', 'Citas', 'Citações', 'Цитаты', 'اقتباسات', 'उद्धरण', 'Kutipan', 'คำคม', 'Trích dẫn', 'Citazioni', 'Alıntılar'],
    'quotes_label': ['名言：', '語錄：', 'Sitaatit:', '名言：', '명언:', 'Citations :', 'Zitate:', 'Citas:', 'Citações:', 'Цитаты:', 'اقتباسات:', 'उद्धरण:', 'Kutipan:', 'คำคม:', 'Trích dẫn:', 'Citazioni:', 'Alıntılar:'],
    'quotes_browser': ['名言浏览器', '語錄瀏覽器', 'Sitaattiselaus', '名言ブラウザー', '명언 브라우저', 'Navigateur de citations', 'Zitat-Browser', 'Navegador de citas', 'Navegador de citações', 'Браузер цитат', 'متصفح الاقتباسات', 'उद्धरण ब्राउज़र', 'Peramban kutipan', 'เบราว์เซอร์คำคม', 'Trình duyệt trích dẫn', 'Browser di citazioni', 'Alıntı tarayıcısı'],
    'quotes_load_error': ['无法加载名言', '無法載入語錄', 'Sitaatteja ei voi ladata', '名言を読み込めません', '명언을 불러올 수 없습니다', 'Impossible de charger les citations', 'Zitate konnten nicht geladen werden', 'No se pueden cargar las citas', 'Não foi possível carregar as citações', 'Не удалось загрузить цитаты', 'تعذر تحميل الاقتباسات', 'उद्धरण लोड नहीं हो सके', 'Kutipan tidak dapat dimuat', 'โหลดคำคมไม่สำเร็จ', 'Không thể tải trích dẫn', 'Impossibile caricare le citazioni', 'Alıntılar yüklenemedi'],
    'opacity': ['不透明度', '不透明度', 'Peittävyys', '不透明度', '불투명도', 'Opacité', 'Deckkraft', 'Opacidad', 'Opacidade', 'Непрозрачность', 'العتامة', 'अपारदर्शिता', 'Opasitas', 'ความทึบ', 'Độ mờ', 'Opacità', 'Opaklık'],
    'opacity_colon': ['不透明度：', '不透明度：', 'Peittävyys:', '不透明度：', '불투명도:', 'Opacité :', 'Deckkraft:', 'Opacidad:', 'Opacidade:', 'Непрозрачность:', 'العتامة:', 'अपारदर्शिता:', 'Opasitas:', 'ความทึบ:', 'Độ mờ:', 'Opacità:', 'Opaklık:'],
    'saturation_colon': ['饱和度：', '飽和度：', 'Värikylläisyys:', '彩度：', '채도:', 'Saturation :', 'Sättigung:', 'Saturación:', 'Saturação:', 'Насыщенность:', 'التشبع:', 'संतृप्ति:', 'Saturasi:', 'ความอิ่มสี:', 'Độ bão hòa:', 'Saturazione:', 'Doygunluk:'],
    'quality': ['质量', '品質', 'Laatu', '品質', '품질', 'Qualité', 'Qualität', 'Calidad', 'Qualidade', 'Качество', 'الجودة', 'गुणवत्ता', 'Kualitas', 'คุณภาพ', 'Chất lượng', 'Qualità', 'Kalite'],
    'quality_preset': ['质量预设：', '品質預設：', 'Laadun esiasetus:', '品質プリセット：', '품질 프리셋:', 'Préréglage de qualité :', 'Qualitätsvorgabe:', 'Ajuste preestablecido de calidad:', 'Predefinição de qualidade:', 'Предустановка качества:', 'إعداد الجودة:', 'गुणवत्ता प्रीसेट:', 'Prasetel kualitas:', 'ค่าที่ตั้งไว้ล่วงหน้าของคุณภาพ:', 'Cài đặt chất lượng:', 'Preimpostazione qualità:', 'Kalite ön ayarı:'],
    'save_project': ['保存为项目', '另存為專案', 'Tallenna projektina', 'プロジェクトとして保存', '프로젝트로 저장', 'Enregistrer comme projet', 'Als Projekt speichern', 'Guardar como proyecto', 'Salvar como projeto', 'Сохранить как проект', 'حفظ كمشروع', 'प्रोजेक्ट के रूप में सहेजें', 'Simpan sebagai proyek', 'บันทึกเป็นโปรเจกต์', 'Lưu thành dự án', 'Salva come progetto', 'Proje olarak kaydet'],
    'export_image': ['导出图像', '匯出圖片', 'Vie kuva', '画像を書き出す', '이미지 내보내기', 'Exporter l’image', 'Bild exportieren', 'Exportar imagen', 'Exportar imagem', 'Экспортировать изображение', 'تصدير الصورة', 'छवि निर्यात करें', 'Ekspor gambar', 'ส่งออกรูปภาพ', 'Xuất ảnh', 'Esporta immagine', 'Görseli dışa aktar'],
    'save_gallery': ['保存到相册', '儲存至相簿', 'Tallenna galleriaan', 'ギャラリーに保存', '갤러리에 저장', 'Enregistrer dans la galerie', 'In Galerie speichern', 'Guardar en la galería', 'Salvar na galeria', 'Сохранить в галерею', 'حفظ في المعرض', 'गैलरी में सहेजें', 'Simpan ke galeri', 'บันทึกลงแกลเลอรี', 'Lưu vào thư viện', 'Salva nella galleria', 'Galeriye kaydet'],
    'quick_share': ['快速分享', '快速分享', 'Pikajako', 'クイック共有', '빠른 공유', 'Partage rapide', 'Schnell teilen', 'Compartir rápidamente', 'Compartilhar rapidamente', 'Быстрая отправка', 'مشاركة سريعة', 'त्वरित साझा करें', 'Bagikan cepat', 'แชร์ด่วน', 'Chia sẻ nhanh', 'Condivisione rapida', 'Hızlı paylaşım'],
    'image_share': ['分享图片：', '分享圖片：', 'Jaa kuva:', '画像を共有：', '이미지 공유:', 'Partager l’image :', 'Bild teilen:', 'Compartir imagen:', 'Compartilhar imagem:', 'Поделиться изображением:', 'مشاركة الصورة:', 'छवि साझा करें:', 'Bagikan gambar:', 'แชร์รูปภาพ:', 'Chia sẻ ảnh:', 'Condividi immagine:', 'Görseli paylaş:'],
}

RULES = {
    'action_share': 'share', 'share_share': 'share', 'action_cancel': 'cancel', 'feedback_cancel': 'cancel',
    'cancel_caps': 'cancel_caps', 'action_addsticker': 'sticker', 'add_quote_title': 'add_quote',
    'action_quote': 'browse_quotes', 'controls_quotes': 'quotes', 'quotes_quotes_label': 'quotes_label',
    'title_activity_quotes_browser': 'quotes_browser', 'error_quotes_load': 'quotes_load_error',
    'color_alpha_label': 'opacity_colon', 'controls_opacity': 'opacity',
    'color_saturation_label': 'saturation_colon', 'share_quality_title': 'quality',
    'share_quality_label': 'quality_preset', 'action_save_project': 'save_project',
    'action_export_image': 'export_image', 'share_save_to_gallery': 'save_gallery',
    'share_quick': 'quick_share', 'image_share': 'image_share',
}

ZH_CN_OVERRIDES = {
    'about_by': '修改版',
    'about_credit': '版本：1.9.5（24） · 原开发者：hu17 Ahmed Aes Abnderzoar 🇸🇾',
    'action_tutorials': '教程与更新',
    'confirm_removal': '确定要移除：\n',
    'common_google_play_services_unknown_issue': '%1$s 使用 Google Play 服务时遇到问题，请重试。',
    'title_activity_gradient_maker': '渐变生成器',
}

for values in TERMS.values():
    if len(values) != len(LANGS):
        raise RuntimeError('Bad translation table length')

source_by_name = {}
for rid, item in SOURCE.items():
    source_by_name[item['name'].lower()] = (str(int(rid, 16)), item['text'])

for index, locale in enumerate(LANGS):
    path = CATALOG_DIR / (locale + '.json')
    data = json.loads(path.read_text(encoding='utf-8'))
    patched = 0
    for name, concept in RULES.items():
        record = source_by_name.get(name)
        if not record:
            continue
        rid, source = record
        value = TERMS[concept][index]
        data['resources'][rid] = value
        data['texts'][source] = value
        patched += 1
    if locale == 'zh-CN':
        for name, value in ZH_CN_OVERRIDES.items():
            record = source_by_name.get(name)
            if not record:
                raise RuntimeError('Missing source resource for ' + name)
            rid, source = record
            data['resources'][rid] = value
            data['texts'][source] = value
            patched += 1
    # Keep ad publisher identifiers byte-for-byte unchanged in all catalogs.
    for rid, item in SOURCE.items():
        if 'ca-app-pub-' in item['text'].lower():
            key = str(int(rid, 16))
            data['resources'][key] = item['text']
            data['texts'][item['text']] = item['text']
    for key, value in list(data['texts'].items()):
        if 'ca-app-pub-' in key.lower():
            data['texts'][key] = key
    # Keep string arrays consistent with reviewed text mappings.
    for array_id, values in data.get('arrays', {}).items():
        data['arrays'][array_id] = [data['texts'].get(value, value) for value in values]
    temp = path.with_suffix('.json.tmp')
    temp.write_text(json.dumps(data, ensure_ascii=False, separators=(',', ':')), encoding='utf-8')
    temp.replace(path)
    print(locale, 'reviewed resource overrides:', patched, flush=True)
print('Glossary fixes applied to', len(LANGS), 'offline catalogs.')

-- Sample data: ~100 English-Vietnamese words

INSERT OR IGNORE INTO words (word, phonetic, word_type, lang_from, lang_to) VALUES
-- A
('abandon',     '/əˈbæn.dən/',     'verb',      'en', 'vi'),
('ability',     '/əˈbɪl.ɪ.ti/',    'noun',      'en', 'vi'),
('absent',      '/ˈæb.sənt/',      'adjective', 'en', 'vi'),
('accept',      '/əkˈsept/',       'verb',      'en', 'vi'),
('accurate',    '/ˈæk.jʊ.rət/',    'adjective', 'en', 'vi'),
('achieve',     '/əˈtʃiːv/',       'verb',      'en', 'vi'),
('adventure',   '/ədˈven.tʃər/',   'noun',      'en', 'vi'),
('afraid',      '/əˈfreɪd/',       'adjective', 'en', 'vi'),
('agree',       '/əˈɡriː/',        'verb',      'en', 'vi'),
('ancient',     '/ˈeɪn.ʃənt/',     'adjective', 'en', 'vi'),
-- B
('beautiful',   '/ˈbjuː.tɪ.fəl/',  'adjective', 'en', 'vi'),
('believe',     '/bɪˈliːv/',       'verb',      'en', 'vi'),
('benefit',     '/ˈben.ɪ.fɪt/',    'noun',      'en', 'vi'),
('brave',       '/breɪv/',         'adjective', 'en', 'vi'),
('bright',      '/braɪt/',         'adjective', 'en', 'vi'),
('busy',        '/ˈbɪz.i/',        'adjective', 'en', 'vi'),
-- C
('calm',        '/kɑːm/',          'adjective', 'en', 'vi'),
('careful',     '/ˈkeə.fəl/',      'adjective', 'en', 'vi'),
('celebrate',   '/ˈsel.ɪ.breɪt/',  'verb',      'en', 'vi'),
('challenge',   '/ˈtʃæl.ɪndʒ/',   'noun',      'en', 'vi'),
('chance',      '/tʃɑːns/',        'noun',      'en', 'vi'),
('change',      '/tʃeɪndʒ/',       'verb',      'en', 'vi'),
('choose',      '/tʃuːz/',         'verb',      'en', 'vi'),
('clever',      '/ˈklev.ər/',      'adjective', 'en', 'vi'),
('communicate', '/kəˈmjuː.nɪ.keɪt/', 'verb',   'en', 'vi'),
('compare',     '/kəmˈpeər/',      'verb',      'en', 'vi'),
('complete',    '/kəmˈpliːt/',     'adjective', 'en', 'vi'),
('confident',   '/ˈkɒn.fɪ.dənt/',  'adjective', 'en', 'vi'),
('curious',     '/ˈkjʊə.ri.əs/',   'adjective', 'en', 'vi'),
-- D
('dangerous',   '/ˈdeɪn.dʒər.əs/', 'adjective', 'en', 'vi'),
('decide',      '/dɪˈsaɪd/',       'verb',      'en', 'vi'),
('delicious',   '/dɪˈlɪʃ.əs/',     'adjective', 'en', 'vi'),
('describe',    '/dɪˈskraɪb/',     'verb',      'en', 'vi'),
('develop',     '/dɪˈvel.əp/',     'verb',      'en', 'vi'),
('difficult',   '/ˈdɪf.ɪ.kəlt/',   'adjective', 'en', 'vi'),
('discover',    '/dɪˈskʌv.ər/',    'verb',      'en', 'vi'),
('dream',       '/driːm/',         'noun',      'en', 'vi'),
-- E
('eager',       '/ˈiː.ɡər/',       'adjective', 'en', 'vi'),
('educate',     '/ˈed.jʊ.keɪt/',   'verb',      'en', 'vi'),
('enjoy',       '/ɪnˈdʒɔɪ/',       'verb',      'en', 'vi'),
('enormous',    '/ɪˈnɔː.məs/',     'adjective', 'en', 'vi'),
('enough',      '/ɪˈnʌf/',         'adjective', 'en', 'vi'),
('environment', '/ɪnˈvaɪ.rən.mənt/', 'noun',   'en', 'vi'),
('excellent',   '/ˈek.sə.lənt/',   'adjective', 'en', 'vi'),
('explain',     '/ɪkˈspleɪn/',     'verb',      'en', 'vi'),
-- F
('fail',        '/feɪl/',          'verb',      'en', 'vi'),
('familiar',    '/fəˈmɪl.i.ər/',   'adjective', 'en', 'vi'),
('famous',      '/ˈfeɪ.məs/',      'adjective', 'en', 'vi'),
('flexible',    '/ˈflek.sɪ.bəl/',  'adjective', 'en', 'vi'),
('focus',       '/ˈfəʊ.kəs/',      'verb',      'en', 'vi'),
('fortunate',   '/ˈfɔː.tʃən.ət/',  'adjective', 'en', 'vi'),
('freedom',     '/ˈfriː.dəm/',     'noun',      'en', 'vi'),
('friendly',    '/ˈfrend.li/',     'adjective', 'en', 'vi'),
-- G
('generous',    '/ˈdʒen.ər.əs/',   'adjective', 'en', 'vi'),
('gentle',      '/ˈdʒen.tl̩/',     'adjective', 'en', 'vi'),
('grateful',    '/ˈɡreɪt.fəl/',    'adjective', 'en', 'vi'),
('grow',        '/ɡrəʊ/',          'verb',      'en', 'vi'),
-- H
('happy',       '/ˈhæp.i/',        'adjective', 'en', 'vi'),
('hard',        '/hɑːd/',          'adjective', 'en', 'vi'),
('helpful',     '/ˈhelp.fəl/',     'adjective', 'en', 'vi'),
('honest',      '/ˈɒn.ɪst/',       'adjective', 'en', 'vi'),
('hope',        '/həʊp/',          'noun',      'en', 'vi'),
('humble',      '/ˈhʌm.bəl/',      'adjective', 'en', 'vi'),
-- I
('imagine',     '/ɪˈmædʒ.ɪn/',    'verb',      'en', 'vi'),
('improve',     '/ɪmˈpruːv/',      'verb',      'en', 'vi'),
('independent', '/ˌɪn.dɪˈpen.dənt/', 'adjective','en','vi'),
('intelligent', '/ɪnˈtel.ɪ.dʒənt/', 'adjective','en', 'vi'),
-- K
('kind',        '/kaɪnd/',         'adjective', 'en', 'vi'),
('knowledge',   '/ˈnɒl.ɪdʒ/',     'noun',      'en', 'vi'),
-- L
('lazy',        '/ˈleɪ.zi/',       'adjective', 'en', 'vi'),
('leader',      '/ˈliː.dər/',      'noun',      'en', 'vi'),
('learn',       '/lɜːn/',          'verb',      'en', 'vi'),
('lonely',      '/ˈləʊn.li/',      'adjective', 'en', 'vi'),
('love',        '/lʌv/',           'noun',      'en', 'vi'),
-- M
('manage',      '/ˈmæn.ɪdʒ/',      'verb',      'en', 'vi'),
('memory',      '/ˈmem.ər.i/',     'noun',      'en', 'vi'),
('mistake',     '/mɪˈsteɪk/',      'noun',      'en', 'vi'),
('modern',      '/ˈmɒd.ən/',       'adjective', 'en', 'vi'),
-- N
('nervous',     '/ˈnɜː.vəs/',      'adjective', 'en', 'vi'),
-- O
('opportunity', '/ˌɒp.əˈtjuː.nɪ.ti/', 'noun', 'en', 'vi'),
('optimistic',  '/ˌɒp.tɪˈmɪs.tɪk/', 'adjective','en','vi'),
-- P
('patient',     '/ˈpeɪ.ʃənt/',     'adjective', 'en', 'vi'),
('peaceful',    '/ˈpiːs.fəl/',     'adjective', 'en', 'vi'),
('persistent',  '/pəˈsɪs.tənt/',   'adjective', 'en', 'vi'),
('polite',      '/pəˈlaɪt/',       'adjective', 'en', 'vi'),
('powerful',    '/ˈpaʊ.ə.fəl/',    'adjective', 'en', 'vi'),
('prepare',     '/prɪˈpeər/',      'verb',      'en', 'vi'),
('prevent',     '/prɪˈvent/',      'verb',      'en', 'vi'),
-- R
('respect',     '/rɪˈspekt/',      'noun',      'en', 'vi'),
('responsible', '/rɪˈspɒn.sɪ.bəl/', 'adjective','en','vi'),
-- S
('serious',     '/ˈsɪə.ri.əs/',    'adjective', 'en', 'vi'),
('simple',      '/ˈsɪm.pəl/',      'adjective', 'en', 'vi'),
('smart',       '/smɑːt/',         'adjective', 'en', 'vi'),
('solve',       '/sɒlv/',          'verb',      'en', 'vi'),
('success',     '/səkˈses/',       'noun',      'en', 'vi'),
-- T
('talent',      '/ˈtæl.ənt/',      'noun',      'en', 'vi'),
('trust',       '/trʌst/',         'noun',      'en', 'vi'),
-- U
('understand',  '/ˌʌn.dəˈstænd/',  'verb',      'en', 'vi'),
('unique',      '/juːˈniːk/',      'adjective', 'en', 'vi'),
-- W
('wise',        '/waɪz/',          'adjective', 'en', 'vi'),
('wonder',      '/ˈwʌn.dər/',      'verb',      'en', 'vi');

-- MP3 phát âm: assets/sounds/<word>.mp3 (ứng dụng nối với thư mục project khi path không tuyệt đối)
UPDATE words SET audio_path = 'assets/sounds/' || word || '.mp3';

-- ── Definitions (Vietnamese meanings + example sentences) ──────────

-- abandon
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Từ bỏ, rời bỏ (ai đó hoặc điều gì đó)', 'He abandoned his car on the highway. (Anh ấy bỏ lại xe trên đường cao tốc.)', 0 FROM words WHERE word='abandon';

-- ability
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Khả năng, năng lực', 'She has the ability to learn quickly. (Cô ấy có khả năng học nhanh.)', 0 FROM words WHERE word='ability';

-- absent
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Vắng mặt, không có mặt', 'He was absent from school today. (Hôm nay anh ấy vắng mặt ở trường.)', 0 FROM words WHERE word='absent';

-- accept
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Chấp nhận, đồng ý nhận', 'She accepted the job offer. (Cô ấy chấp nhận lời mời làm việc.)', 0 FROM words WHERE word='accept';

-- accurate
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Chính xác, đúng đắn', 'The forecast was accurate. (Dự báo thời tiết rất chính xác.)', 0 FROM words WHERE word='accurate';

-- achieve
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Đạt được, hoàn thành (mục tiêu)', 'He achieved his dream of becoming a doctor. (Anh ấy đạt được ước mơ trở thành bác sĩ.)', 0 FROM words WHERE word='achieve';

-- adventure
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Cuộc phiêu lưu, trải nghiệm mạo hiểm', 'They went on an adventure in the jungle. (Họ đã có một chuyến phiêu lưu trong rừng rậm.)', 0 FROM words WHERE word='adventure';

-- afraid
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Sợ hãi, lo lắng', 'The child was afraid of the dark. (Đứa trẻ sợ bóng tối.)', 0 FROM words WHERE word='afraid';

-- agree
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Đồng ý, tán thành', 'I agree with your opinion. (Tôi đồng ý với ý kiến của bạn.)', 0 FROM words WHERE word='agree';

-- ancient
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Cổ đại, xa xưa', 'They visited an ancient temple. (Họ đã thăm một ngôi đền cổ đại.)', 0 FROM words WHERE word='ancient';

-- beautiful
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Đẹp, xinh đẹp', 'The sunset was beautiful. (Hoàng hôn thật đẹp.)', 0 FROM words WHERE word='beautiful';

-- believe
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Tin tưởng, tin rằng', 'I believe you can do it. (Tôi tin bạn có thể làm được.)', 0 FROM words WHERE word='believe';

-- benefit
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Lợi ích, điều có lợi', 'Exercise has many health benefits. (Tập thể dục có nhiều lợi ích cho sức khỏe.)', 0 FROM words WHERE word='benefit';

-- brave
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Dũng cảm, can đảm', 'The brave soldier saved his friends. (Người lính dũng cảm đã cứu bạn bè.)', 0 FROM words WHERE word='brave';

-- bright
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Sáng, thông minh', 'She is a bright student. (Cô ấy là một học sinh thông minh.)', 0 FROM words WHERE word='bright';

-- busy
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Bận rộn', 'I am very busy this week. (Tuần này tôi rất bận.)', 0 FROM words WHERE word='busy';

-- calm
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Bình tĩnh, yên tĩnh', 'Stay calm during an emergency. (Hãy giữ bình tĩnh trong trường hợp khẩn cấp.)', 0 FROM words WHERE word='calm';

-- careful
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Cẩn thận, thận trọng', 'Be careful when crossing the road. (Hãy cẩn thận khi qua đường.)', 0 FROM words WHERE word='careful';

-- celebrate
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Kỷ niệm, tổ chức (lễ)', 'We celebrate New Year every year. (Chúng tôi tổ chức năm mới mỗi năm.)', 0 FROM words WHERE word='celebrate';

-- challenge
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Thách thức, khó khăn cần vượt qua', 'Learning a new language is a challenge. (Học một ngôn ngữ mới là một thách thức.)', 0 FROM words WHERE word='challenge';

-- chance
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Cơ hội, khả năng xảy ra', 'Give me a chance to explain. (Hãy cho tôi cơ hội giải thích.)', 0 FROM words WHERE word='chance';

-- change
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Thay đổi, biến đổi', 'The weather can change quickly. (Thời tiết có thể thay đổi nhanh chóng.)', 0 FROM words WHERE word='change';

-- choose
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Lựa chọn, chọn lựa', 'You can choose any color you like. (Bạn có thể chọn bất kỳ màu nào bạn thích.)', 0 FROM words WHERE word='choose';

-- clever
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Thông minh, lanh lợi', 'That was a clever solution. (Đó là một giải pháp thông minh.)', 0 FROM words WHERE word='clever';

-- communicate
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Giao tiếp, truyền đạt thông tin', 'It is important to communicate clearly. (Điều quan trọng là giao tiếp rõ ràng.)', 0 FROM words WHERE word='communicate';

-- compare
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'So sánh', 'Compare the two prices before buying. (Hãy so sánh hai mức giá trước khi mua.)', 0 FROM words WHERE word='compare';

-- complete
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Hoàn chỉnh, hoàn thành', 'Please complete the form. (Vui lòng điền hoàn chỉnh biểu mẫu.)', 0 FROM words WHERE word='complete';

-- confident
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Tự tin', 'She felt confident before the interview. (Cô ấy cảm thấy tự tin trước buổi phỏng vấn.)', 0 FROM words WHERE word='confident';

-- curious
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Tò mò, hiếu kỳ', 'Children are naturally curious. (Trẻ em vốn tự nhiên rất tò mò.)', 0 FROM words WHERE word='curious';

-- dangerous
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Nguy hiểm', 'Driving fast is dangerous. (Lái xe nhanh rất nguy hiểm.)', 0 FROM words WHERE word='dangerous';

-- decide
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Quyết định', 'He decided to study abroad. (Anh ấy quyết định du học nước ngoài.)', 0 FROM words WHERE word='decide';

-- delicious
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Ngon, thơm ngon', 'The food was absolutely delicious. (Món ăn thật sự rất ngon.)', 0 FROM words WHERE word='delicious';

-- describe
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Mô tả, miêu tả', 'Describe what you saw. (Hãy mô tả những gì bạn nhìn thấy.)', 0 FROM words WHERE word='describe';

-- develop
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Phát triển, mở rộng', 'She wants to develop her skills. (Cô ấy muốn phát triển kỹ năng của mình.)', 0 FROM words WHERE word='develop';

-- difficult
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Khó, gian nan', 'The exam was very difficult. (Bài kiểm tra rất khó.)', 0 FROM words WHERE word='difficult';

-- discover
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Khám phá, phát hiện ra', 'Scientists discovered a new planet. (Các nhà khoa học đã phát hiện ra một hành tinh mới.)', 0 FROM words WHERE word='discover';

-- dream
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Giấc mơ, ước mơ', 'Never give up on your dream. (Đừng bao giờ từ bỏ ước mơ của bạn.)', 0 FROM words WHERE word='dream';

-- eager
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Háo hức, nhiệt tình', 'She was eager to start the new job. (Cô ấy háo hức bắt đầu công việc mới.)', 0 FROM words WHERE word='eager';

-- educate
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Giáo dục, dạy dỗ', 'It is important to educate children well. (Điều quan trọng là giáo dục trẻ em tốt.)', 0 FROM words WHERE word='educate';

-- enjoy
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Tận hưởng, thích thú', 'I enjoy listening to music. (Tôi thích nghe nhạc.)', 0 FROM words WHERE word='enjoy';

-- enormous
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Khổng lồ, rất lớn', 'The building was enormous. (Tòa nhà thật khổng lồ.)', 0 FROM words WHERE word='enormous';

-- enough
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Đủ, đủ rồi', 'Do we have enough food? (Chúng ta có đủ thức ăn không?)', 0 FROM words WHERE word='enough';

-- environment
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Môi trường', 'We must protect the environment. (Chúng ta phải bảo vệ môi trường.)', 0 FROM words WHERE word='environment';

-- excellent
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Xuất sắc, tuyệt vời', 'She did an excellent job. (Cô ấy đã làm xuất sắc.)', 0 FROM words WHERE word='excellent';

-- explain
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Giải thích, giảng giải', 'Can you explain this problem? (Bạn có thể giải thích vấn đề này không?)', 0 FROM words WHERE word='explain';

-- fail
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Thất bại, không đạt', 'He failed the exam but tried again. (Anh ấy trượt kỳ thi nhưng đã thử lại.)', 0 FROM words WHERE word='fail';

-- familiar
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Quen thuộc, quen biết', 'Are you familiar with this software? (Bạn có quen với phần mềm này không?)', 0 FROM words WHERE word='familiar';

-- famous
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Nổi tiếng', 'She is a famous singer. (Cô ấy là một ca sĩ nổi tiếng.)', 0 FROM words WHERE word='famous';

-- flexible
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Linh hoạt, dễ thích nghi', 'A flexible schedule helps a lot. (Lịch trình linh hoạt rất có ích.)', 0 FROM words WHERE word='flexible';

-- focus
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Tập trung (vào)', 'Please focus on the task. (Hãy tập trung vào nhiệm vụ.)', 0 FROM words WHERE word='focus';

-- fortunate
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'May mắn, có phúc', 'I feel fortunate to have good friends. (Tôi cảm thấy may mắn khi có những người bạn tốt.)', 0 FROM words WHERE word='fortunate';

-- freedom
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Tự do', 'Freedom is a basic human right. (Tự do là quyền cơ bản của con người.)', 0 FROM words WHERE word='freedom';

-- friendly
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Thân thiện, dễ mến', 'The staff here are very friendly. (Nhân viên ở đây rất thân thiện.)', 0 FROM words WHERE word='friendly';

-- generous
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Rộng lượng, hào phóng', 'She is generous with her time. (Cô ấy rất hào phóng với thời gian của mình.)', 0 FROM words WHERE word='generous';

-- gentle
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Nhẹ nhàng, hiền lành', 'He spoke in a gentle voice. (Anh ấy nói bằng giọng nhẹ nhàng.)', 0 FROM words WHERE word='gentle';

-- grateful
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Biết ơn, cảm ơn', 'I am grateful for your help. (Tôi biết ơn sự giúp đỡ của bạn.)', 0 FROM words WHERE word='grateful';

-- grow
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Lớn lên, phát triển, trưởng thành', 'Plants grow toward the light. (Cây cối lớn về phía ánh sáng.)', 0 FROM words WHERE word='grow';

-- happy
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Vui vẻ, hạnh phúc', 'She looked very happy today. (Hôm nay cô ấy trông rất vui vẻ.)', 0 FROM words WHERE word='happy';

-- hard
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Khó, chăm chỉ, cứng', 'He works hard every day. (Anh ấy làm việc chăm chỉ mỗi ngày.)', 0 FROM words WHERE word='hard';

-- helpful
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Hữu ích, hay giúp đỡ người khác', 'Your advice was very helpful. (Lời khuyên của bạn rất hữu ích.)', 0 FROM words WHERE word='helpful';

-- honest
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Trung thực, thành thật', 'Always be honest with people. (Hãy luôn trung thực với mọi người.)', 0 FROM words WHERE word='honest';

-- hope
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Hy vọng, niềm tin vào tương lai', 'We should never lose hope. (Chúng ta không bao giờ nên mất hy vọng.)', 0 FROM words WHERE word='hope';

-- humble
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Khiêm tốn, không kiêu ngạo', 'He remained humble despite his success. (Anh ấy vẫn khiêm tốn dù đã thành công.)', 0 FROM words WHERE word='humble';

-- imagine
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Tưởng tượng', 'Imagine a world without war. (Hãy tưởng tượng một thế giới không có chiến tranh.)', 0 FROM words WHERE word='imagine';

-- improve
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Cải thiện, tiến bộ', 'Practice daily to improve your English. (Luyện tập mỗi ngày để cải thiện tiếng Anh.)', 0 FROM words WHERE word='improve';

-- independent
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Độc lập, tự chủ', 'She is very independent and self-reliant. (Cô ấy rất độc lập và tự lực.)', 0 FROM words WHERE word='independent';

-- intelligent
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Thông minh, có trí tuệ', 'He is one of the most intelligent students. (Anh ấy là một trong những học sinh thông minh nhất.)', 0 FROM words WHERE word='intelligent';

-- kind
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Tốt bụng, nhân hậu', 'It is kind of you to help me. (Bạn thật tốt bụng khi giúp tôi.)', 0 FROM words WHERE word='kind';

-- knowledge
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Kiến thức, hiểu biết', 'Knowledge is power. (Kiến thức là sức mạnh.)', 0 FROM words WHERE word='knowledge';

-- lazy
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Lười biếng', 'Don''t be lazy; do your homework. (Đừng lười biếng; hãy làm bài tập về nhà.)', 0 FROM words WHERE word='lazy';

-- leader
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Người lãnh đạo, thủ lĩnh', 'A good leader listens to others. (Một người lãnh đạo tốt biết lắng nghe người khác.)', 0 FROM words WHERE word='leader';

-- learn
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Học, học hỏi', 'We learn something new every day. (Chúng ta học được điều mới mỗi ngày.)', 0 FROM words WHERE word='learn';

-- lonely
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Cô đơn, lẻ loi', 'She felt lonely in the new city. (Cô ấy cảm thấy cô đơn ở thành phố mới.)', 0 FROM words WHERE word='lonely';

-- love
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Tình yêu, sự yêu thương', 'Love is the most powerful emotion. (Tình yêu là cảm xúc mạnh mẽ nhất.)', 0 FROM words WHERE word='love';

-- manage
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Quản lý, điều hành', 'She manages a team of ten people. (Cô ấy quản lý một nhóm mười người.)', 0 FROM words WHERE word='manage';

-- memory
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Ký ức, trí nhớ', 'She has a sharp memory. (Cô ấy có trí nhớ tốt.)', 0 FROM words WHERE word='memory';

-- mistake
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Lỗi lầm, sai lầm', 'Everyone makes mistakes sometimes. (Ai cũng mắc lỗi đôi khi.)', 0 FROM words WHERE word='mistake';

-- modern
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Hiện đại, tân thời', 'The city has many modern buildings. (Thành phố có nhiều tòa nhà hiện đại.)', 0 FROM words WHERE word='modern';

-- nervous
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Lo lắng, hồi hộp', 'I was nervous before the presentation. (Tôi đã hồi hộp trước buổi thuyết trình.)', 0 FROM words WHERE word='nervous';

-- opportunity
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Cơ hội (thuận lợi)', 'This job is a great opportunity. (Công việc này là một cơ hội tuyệt vời.)', 0 FROM words WHERE word='opportunity';

-- optimistic
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Lạc quan, tin vào điều tốt đẹp', 'Try to be optimistic about the future. (Hãy cố gắng lạc quan về tương lai.)', 0 FROM words WHERE word='optimistic';

-- patient
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Kiên nhẫn', 'Be patient; good things take time. (Hãy kiên nhẫn; những điều tốt cần có thời gian.)', 0 FROM words WHERE word='patient';

-- peaceful
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Yên bình, hòa bình', 'The village was quiet and peaceful. (Ngôi làng yên tĩnh và bình yên.)', 0 FROM words WHERE word='peaceful';

-- persistent
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Kiên trì, bền bỉ', 'Success comes to those who are persistent. (Thành công đến với những người kiên trì.)', 0 FROM words WHERE word='persistent';

-- polite
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Lịch sự, nhã nhặn', 'Always be polite to your elders. (Hãy luôn lịch sự với người lớn tuổi.)', 0 FROM words WHERE word='polite';

-- powerful
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Mạnh mẽ, quyền năng', 'Words can be very powerful. (Lời nói có thể rất mạnh mẽ.)', 0 FROM words WHERE word='powerful';

-- prepare
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Chuẩn bị', 'Prepare for the exam in advance. (Hãy chuẩn bị cho kỳ thi trước.)', 0 FROM words WHERE word='prepare';

-- prevent
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Ngăn chặn, phòng ngừa', 'Wash your hands to prevent illness. (Rửa tay để phòng bệnh.)', 0 FROM words WHERE word='prevent';

-- respect
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Tôn trọng, kính trọng', 'We must respect each other. (Chúng ta phải tôn trọng lẫn nhau.)', 0 FROM words WHERE word='respect';

-- responsible
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Có trách nhiệm', 'Be responsible for your actions. (Hãy có trách nhiệm với hành động của bạn.)', 0 FROM words WHERE word='responsible';

-- serious
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Nghiêm túc, trầm trọng', 'This is a serious problem. (Đây là một vấn đề nghiêm trọng.)', 0 FROM words WHERE word='serious';

-- simple
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Đơn giản, dễ hiểu', 'The instructions are simple. (Các hướng dẫn rất đơn giản.)', 0 FROM words WHERE word='simple';

-- smart
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Thông minh, lanh trí', 'That was a smart decision. (Đó là một quyết định thông minh.)', 0 FROM words WHERE word='smart';

-- solve
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Giải quyết, tìm ra lời giải', 'We need to solve this problem together. (Chúng ta cần giải quyết vấn đề này cùng nhau.)', 0 FROM words WHERE word='solve';

-- success
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Sự thành công', 'Hard work leads to success. (Làm việc chăm chỉ dẫn đến thành công.)', 0 FROM words WHERE word='success';

-- talent
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Tài năng, năng khiếu', 'She has a natural talent for music. (Cô ấy có năng khiếu âm nhạc bẩm sinh.)', 0 FROM words WHERE word='talent';

-- trust
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Tin tưởng, sự tín nhiệm', 'Trust is the foundation of friendship. (Tin tưởng là nền tảng của tình bạn.)', 0 FROM words WHERE word='trust';

-- understand
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Hiểu, thấu hiểu', 'Do you understand the question? (Bạn có hiểu câu hỏi không?)', 0 FROM words WHERE word='understand';

-- unique
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Độc đáo, duy nhất', 'Everyone is unique in their own way. (Mỗi người đều độc đáo theo cách riêng của mình.)', 0 FROM words WHERE word='unique';

-- wise
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Khôn ngoan, sáng suốt', 'It is wise to save money. (Tiết kiệm tiền là một điều khôn ngoan.)', 0 FROM words WHERE word='wise';

-- wonder
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Tự hỏi, ngạc nhiên, kỳ diệu', 'I wonder what will happen next. (Tôi tự hỏi điều gì sẽ xảy ra tiếp theo.)', 0 FROM words WHERE word='wonder';

-- ── Additional 100 words (no dedicated audio required) ──────────
INSERT OR IGNORE INTO words (word, phonetic, word_type, lang_from, lang_to) VALUES
('adapt', '/əˈdæpt/', 'verb', 'en', 'vi'),
('admire', '/ədˈmaɪər/', 'verb', 'en', 'vi'),
('adopt', '/əˈdɒpt/', 'verb', 'en', 'vi'),
('advance', '/ədˈvɑːns/', 'verb', 'en', 'vi'),
('advice', '/ədˈvaɪs/', 'noun', 'en', 'vi'),
('afford', '/əˈfɔːd/', 'verb', 'en', 'vi'),
('ambition', '/æmˈbɪʃ.ən/', 'noun', 'en', 'vi'),
('analyze', '/ˈæn.əl.aɪz/', 'verb', 'en', 'vi'),
('announce', '/əˈnaʊns/', 'verb', 'en', 'vi'),
('anxiety', '/æŋˈzaɪ.ə.ti/', 'noun', 'en', 'vi'),
('balance', '/ˈbæl.əns/', 'noun', 'en', 'vi'),
('barrier', '/ˈbær.i.ər/', 'noun', 'en', 'vi'),
('behave', '/bɪˈheɪv/', 'verb', 'en', 'vi'),
('biology', '/baɪˈɒl.ə.dʒi/', 'noun', 'en', 'vi'),
('borrow', '/ˈbɒr.əʊ/', 'verb', 'en', 'vi'),
('boundary', '/ˈbaʊn.dri/', 'noun', 'en', 'vi'),
('brief', '/briːf/', 'adjective', 'en', 'vi'),
('broadcast', '/ˈbrɔːd.kɑːst/', 'verb', 'en', 'vi'),
('budget', '/ˈbʌdʒ.ɪt/', 'noun', 'en', 'vi'),
('burden', '/ˈbɜː.dən/', 'noun', 'en', 'vi'),
('capture', '/ˈkæp.tʃər/', 'verb', 'en', 'vi'),
('career', '/kəˈrɪər/', 'noun', 'en', 'vi'),
('category', '/ˈkæt.ə.ɡər.i/', 'noun', 'en', 'vi'),
('climate', '/ˈklaɪ.mət/', 'noun', 'en', 'vi'),
('collapse', '/kəˈlæps/', 'verb', 'en', 'vi'),
('combine', '/kəmˈbaɪn/', 'verb', 'en', 'vi'),
('comfort', '/ˈkʌm.fət/', 'noun', 'en', 'vi'),
('commercial', '/kəˈmɜː.ʃəl/', 'adjective', 'en', 'vi'),
('commit', '/kəˈmɪt/', 'verb', 'en', 'vi'),
('complex', '/ˈkɒm.pleks/', 'adjective', 'en', 'vi'),
('concern', '/kənˈsɜːn/', 'noun', 'en', 'vi'),
('conclude', '/kənˈkluːd/', 'verb', 'en', 'vi'),
('conduct', '/kənˈdʌkt/', 'verb', 'en', 'vi'),
('confirm', '/kənˈfɜːm/', 'verb', 'en', 'vi'),
('connect', '/kəˈnekt/', 'verb', 'en', 'vi'),
('consider', '/kənˈsɪd.ər/', 'verb', 'en', 'vi'),
('constant', '/ˈkɒn.stənt/', 'adjective', 'en', 'vi'),
('construct', '/kənˈstrʌkt/', 'verb', 'en', 'vi'),
('consume', '/kənˈsjuːm/', 'verb', 'en', 'vi'),
('context', '/ˈkɒn.tekst/', 'noun', 'en', 'vi'),
('contrast', '/ˈkɒn.trɑːst/', 'noun', 'en', 'vi'),
('contribute', '/kənˈtrɪb.juːt/', 'verb', 'en', 'vi'),
('convert', '/kənˈvɜːt/', 'verb', 'en', 'vi'),
('convince', '/kənˈvɪns/', 'verb', 'en', 'vi'),
('courage', '/ˈkʌr.ɪdʒ/', 'noun', 'en', 'vi'),
('culture', '/ˈkʌl.tʃər/', 'noun', 'en', 'vi'),
('debate', '/dɪˈbeɪt/', 'noun', 'en', 'vi'),
('decline', '/dɪˈklaɪn/', 'verb', 'en', 'vi'),
('define', '/dɪˈfaɪn/', 'verb', 'en', 'vi'),
('delay', '/dɪˈleɪ/', 'verb', 'en', 'vi'),
('demand', '/dɪˈmɑːnd/', 'noun', 'en', 'vi'),
('demonstrate', '/ˈdem.ən.streɪt/', 'verb', 'en', 'vi'),
('deny', '/dɪˈnaɪ/', 'verb', 'en', 'vi'),
('depend', '/dɪˈpend/', 'verb', 'en', 'vi'),
('design', '/dɪˈzaɪn/', 'verb', 'en', 'vi'),
('detail', '/ˈdiː.teɪl/', 'noun', 'en', 'vi'),
('determine', '/dɪˈtɜː.mɪn/', 'verb', 'en', 'vi'),
('device', '/dɪˈvaɪs/', 'noun', 'en', 'vi'),
('efficient', '/ɪˈfɪʃ.ənt/', 'adjective', 'en', 'vi'),
('emerge', '/ɪˈmɜːdʒ/', 'verb', 'en', 'vi'),
('emotion', '/ɪˈməʊ.ʃən/', 'noun', 'en', 'vi'),
('emphasize', '/ˈem.fə.saɪz/', 'verb', 'en', 'vi'),
('enable', '/ɪˈneɪ.bəl/', 'verb', 'en', 'vi'),
('encounter', '/ɪnˈkaʊn.tər/', 'verb', 'en', 'vi'),
('encourage', '/ɪnˈkʌr.ɪdʒ/', 'verb', 'en', 'vi'),
('energy', '/ˈen.ə.dʒi/', 'noun', 'en', 'vi'),
('engage', '/ɪnˈɡeɪdʒ/', 'verb', 'en', 'vi'),
('enhance', '/ɪnˈhɑːns/', 'verb', 'en', 'vi'),
('ensure', '/ɪnˈʃɔːr/', 'verb', 'en', 'vi'),
('establish', '/ɪˈstæb.lɪʃ/', 'verb', 'en', 'vi'),
('estimate', '/ˈes.tɪ.meɪt/', 'verb', 'en', 'vi'),
('evaluate', '/ɪˈvæl.ju.eɪt/', 'verb', 'en', 'vi'),
('evolve', '/ɪˈvɒlv/', 'verb', 'en', 'vi'),
('expand', '/ɪkˈspænd/', 'verb', 'en', 'vi'),
('expert', '/ˈek.spɜːt/', 'noun', 'en', 'vi'),
('explore', '/ɪkˈsplɔːr/', 'verb', 'en', 'vi'),
('express', '/ɪkˈspres/', 'verb', 'en', 'vi'),
('extend', '/ɪkˈstend/', 'verb', 'en', 'vi'),
('feature', '/ˈfiː.tʃər/', 'noun', 'en', 'vi'),
('finance', '/ˈfaɪ.næns/', 'noun', 'en', 'vi'),
('formula', '/ˈfɔː.mjə.lə/', 'noun', 'en', 'vi'),
('framework', '/ˈfreɪm.wɜːk/', 'noun', 'en', 'vi'),
('function', '/ˈfʌŋk.ʃən/', 'noun', 'en', 'vi'),
('generate', '/ˈdʒen.ə.reɪt/', 'verb', 'en', 'vi'),
('goal', '/ɡəʊl/', 'noun', 'en', 'vi'),
('govern', '/ˈɡʌv.ən/', 'verb', 'en', 'vi'),
('graduate', '/ˈɡrædʒ.u.eɪt/', 'verb', 'en', 'vi'),
('habit', '/ˈhæb.ɪt/', 'noun', 'en', 'vi'),
('highlight', '/ˈhaɪ.laɪt/', 'verb', 'en', 'vi'),
('identify', '/aɪˈden.tɪ.faɪ/', 'verb', 'en', 'vi'),
('impact', '/ˈɪm.pækt/', 'noun', 'en', 'vi'),
('implement', '/ˈɪm.plɪ.ment/', 'verb', 'en', 'vi'),
('indicate', '/ˈɪn.dɪ.keɪt/', 'verb', 'en', 'vi'),
('influence', '/ˈɪn.flu.əns/', 'noun', 'en', 'vi'),
('inspect', '/ɪnˈspekt/', 'verb', 'en', 'vi'),
('inspire', '/ɪnˈspaɪər/', 'verb', 'en', 'vi'),
('instance', '/ˈɪn.stəns/', 'noun', 'en', 'vi'),
('integrate', '/ˈɪn.tɪ.ɡreɪt/', 'verb', 'en', 'vi'),
('invest', '/ɪnˈvest/', 'verb', 'en', 'vi'),
('involve', '/ɪnˈvɒlv/', 'verb', 'en', 'vi');

-- adapt
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Thích nghi, điều chỉnh để phù hợp', 'Children usually adapt quickly to a new school. (Trẻ em thường thích nghi nhanh với trường mới.)', 0 FROM words WHERE word='adapt';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Ngưỡng mộ, khâm phục', 'I admire her dedication to teaching. (Tôi ngưỡng mộ sự tận tâm của cô ấy với việc dạy học.)', 0 FROM words WHERE word='admire';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Nhận làm con nuôi; chấp nhận', 'They decided to adopt a child. (Họ quyết định nhận nuôi một đứa trẻ.)', 0 FROM words WHERE word='adopt';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Tiến bộ; thúc đẩy tiến lên', 'Technology continues to advance rapidly. (Công nghệ tiếp tục tiến bộ nhanh chóng.)', 0 FROM words WHERE word='advance';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Lời khuyên', 'My father gave me useful advice. (Bố tôi đã cho tôi lời khuyên hữu ích.)', 0 FROM words WHERE word='advice';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Có đủ khả năng chi trả', 'We cannot afford a bigger house now. (Hiện tại chúng tôi không đủ khả năng mua nhà lớn hơn.)', 0 FROM words WHERE word='afford';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Tham vọng, khát vọng lớn', 'Her ambition is to become a scientist. (Tham vọng của cô ấy là trở thành nhà khoa học.)', 0 FROM words WHERE word='ambition';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Phân tích', 'Researchers analyze the data carefully. (Các nhà nghiên cứu phân tích dữ liệu cẩn thận.)', 0 FROM words WHERE word='analyze';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Thông báo, công bố', 'The company announced a new policy. (Công ty đã công bố một chính sách mới.)', 0 FROM words WHERE word='announce';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Sự lo âu, nỗi lo lắng', 'Exam anxiety affects many students. (Sự lo âu trước kỳ thi ảnh hưởng đến nhiều học sinh.)', 0 FROM words WHERE word='anxiety';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Sự cân bằng', 'A healthy diet keeps your body in balance. (Chế độ ăn lành mạnh giúp cơ thể cân bằng.)', 0 FROM words WHERE word='balance';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Rào cản, trở ngại', 'Language can be a barrier to communication. (Ngôn ngữ có thể là rào cản trong giao tiếp.)', 0 FROM words WHERE word='barrier';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Cư xử, hành xử', 'Please behave politely in public. (Hãy cư xử lịch sự nơi công cộng.)', 0 FROM words WHERE word='behave';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Sinh học', 'Biology is her favorite subject. (Sinh học là môn học yêu thích của cô ấy.)', 0 FROM words WHERE word='biology';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Mượn', 'Can I borrow your pen? (Tôi có thể mượn bút của bạn không?)', 0 FROM words WHERE word='borrow';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Ranh giới, giới hạn', 'The river forms the boundary between two towns. (Con sông tạo thành ranh giới giữa hai thị trấn.)', 0 FROM words WHERE word='boundary';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Ngắn gọn', 'He gave a brief explanation. (Anh ấy đã đưa ra lời giải thích ngắn gọn.)', 0 FROM words WHERE word='brief';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Phát sóng, truyền phát', 'The station will broadcast the match live. (Đài sẽ phát sóng trực tiếp trận đấu.)', 0 FROM words WHERE word='broadcast';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Ngân sách', 'We need a clear budget for this project. (Chúng ta cần ngân sách rõ ràng cho dự án này.)', 0 FROM words WHERE word='budget';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Gánh nặng', 'Debt became a heavy burden for the family. (Nợ nần trở thành gánh nặng lớn cho gia đình.)', 0 FROM words WHERE word='burden';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Bắt giữ; ghi lại', 'The camera captured a rare moment. (Máy ảnh đã ghi lại một khoảnh khắc hiếm.)', 0 FROM words WHERE word='capture';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Sự nghiệp', 'She wants to build a career in medicine. (Cô ấy muốn xây dựng sự nghiệp trong ngành y.)', 0 FROM words WHERE word='career';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Danh mục, loại', 'Books are arranged by category. (Sách được sắp xếp theo danh mục.)', 0 FROM words WHERE word='category';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Khí hậu', 'The region has a tropical climate. (Khu vực này có khí hậu nhiệt đới.)', 0 FROM words WHERE word='climate';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Sụp đổ; đổ sập', 'The old bridge collapsed after the storm. (Cây cầu cũ đã sụp sau cơn bão.)', 0 FROM words WHERE word='collapse';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Kết hợp', 'We can combine these two ideas. (Chúng ta có thể kết hợp hai ý tưởng này.)', 0 FROM words WHERE word='combine';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Sự thoải mái; an ủi', 'This chair gives excellent comfort. (Chiếc ghế này mang lại sự thoải mái tuyệt vời.)', 0 FROM words WHERE word='comfort';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Thuộc thương mại; quảng cáo', 'The channel is full of commercial messages. (Kênh này đầy các thông điệp thương mại.)', 0 FROM words WHERE word='commercial';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Cam kết; phạm (lỗi)', 'They committed to reducing waste. (Họ cam kết giảm rác thải.)', 0 FROM words WHERE word='commit';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Phức tạp', 'It is a complex legal issue. (Đó là một vấn đề pháp lý phức tạp.)', 0 FROM words WHERE word='complex';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Mối quan tâm; lo ngại', 'Safety is our main concern. (An toàn là mối quan tâm chính của chúng tôi.)', 0 FROM words WHERE word='concern';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Kết luận', 'The report concluded that training is needed. (Báo cáo kết luận rằng cần đào tạo.)', 0 FROM words WHERE word='conclude';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Tiến hành; chỉ huy', 'The team will conduct a survey. (Nhóm sẽ tiến hành một cuộc khảo sát.)', 0 FROM words WHERE word='conduct';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Xác nhận', 'Please confirm your email address. (Vui lòng xác nhận địa chỉ email của bạn.)', 0 FROM words WHERE word='confirm';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Kết nối, liên kết', 'This road connects two cities. (Con đường này kết nối hai thành phố.)', 0 FROM words WHERE word='connect';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Cân nhắc, xem xét', 'We must consider all options. (Chúng ta phải cân nhắc mọi lựa chọn.)', 0 FROM words WHERE word='consider';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Không đổi, liên tục', 'The temperature stayed constant all day. (Nhiệt độ giữ ổn định cả ngày.)', 0 FROM words WHERE word='constant';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Xây dựng, kiến tạo', 'Workers construct the building in stages. (Công nhân xây dựng tòa nhà theo từng giai đoạn.)', 0 FROM words WHERE word='construct';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Tiêu thụ, dùng hết', 'Cars consume a lot of fuel. (Ô tô tiêu thụ nhiều nhiên liệu.)', 0 FROM words WHERE word='consume';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Ngữ cảnh, bối cảnh', 'The meaning depends on context. (Nghĩa phụ thuộc vào ngữ cảnh.)', 0 FROM words WHERE word='context';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Sự tương phản, đối lập', 'There is a strong contrast between the two photos. (Có sự tương phản rõ rệt giữa hai bức ảnh.)', 0 FROM words WHERE word='contrast';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Đóng góp', 'Everyone can contribute to the community. (Mọi người đều có thể đóng góp cho cộng đồng.)', 0 FROM words WHERE word='contribute';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Chuyển đổi', 'They converted the office into a studio. (Họ đã chuyển văn phòng thành phòng thu.)', 0 FROM words WHERE word='convert';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Thuyết phục', 'She convinced me to join the club. (Cô ấy đã thuyết phục tôi tham gia câu lạc bộ.)', 0 FROM words WHERE word='convince';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Lòng can đảm', 'It takes courage to speak the truth. (Cần can đảm để nói sự thật.)', 0 FROM words WHERE word='courage';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Văn hóa', 'Food reflects local culture. (Ẩm thực phản ánh văn hóa địa phương.)', 0 FROM words WHERE word='culture';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Cuộc tranh luận', 'The class had a debate on climate policy. (Lớp đã có cuộc tranh luận về chính sách khí hậu.)', 0 FROM words WHERE word='debate';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Giảm sút; từ chối', 'Sales declined last month. (Doanh số đã giảm tháng trước.)', 0 FROM words WHERE word='decline';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Định nghĩa; xác định', 'Can you define this term? (Bạn có thể định nghĩa thuật ngữ này không?)', 0 FROM words WHERE word='define';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Trì hoãn, làm chậm', 'Bad weather delayed the flight. (Thời tiết xấu làm chuyến bay bị trì hoãn.)', 0 FROM words WHERE word='delay';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Nhu cầu, yêu cầu', 'There is high demand for clean energy. (Nhu cầu năng lượng sạch rất cao.)', 0 FROM words WHERE word='demand';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Trình bày; chứng minh', 'The teacher demonstrated the experiment. (Giáo viên đã trình bày thí nghiệm.)', 0 FROM words WHERE word='demonstrate';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Phủ nhận', 'He denied breaking the rule. (Anh ấy phủ nhận việc vi phạm quy định.)', 0 FROM words WHERE word='deny';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Phụ thuộc vào', 'Children depend on adults for care. (Trẻ em phụ thuộc vào người lớn để được chăm sóc.)', 0 FROM words WHERE word='depend';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Thiết kế', 'They designed a modern website. (Họ đã thiết kế một trang web hiện đại.)', 0 FROM words WHERE word='design';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Chi tiết', 'Please pay attention to detail. (Hãy chú ý đến từng chi tiết.)', 0 FROM words WHERE word='detail';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Xác định; quyết định', 'We must determine the cause first. (Chúng ta phải xác định nguyên nhân trước.)', 0 FROM words WHERE word='determine';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Thiết bị, dụng cụ', 'This device can measure temperature. (Thiết bị này có thể đo nhiệt độ.)', 0 FROM words WHERE word='device';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Hiệu quả, năng suất', 'An efficient system saves time. (Một hệ thống hiệu quả giúp tiết kiệm thời gian.)', 0 FROM words WHERE word='efficient';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Xuất hiện', 'New problems emerged during testing. (Những vấn đề mới xuất hiện trong quá trình kiểm thử.)', 0 FROM words WHERE word='emerge';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Cảm xúc', 'Music can express deep emotion. (Âm nhạc có thể thể hiện cảm xúc sâu sắc.)', 0 FROM words WHERE word='emotion';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Nhấn mạnh', 'The speaker emphasized safety rules. (Diễn giả đã nhấn mạnh các quy tắc an toàn.)', 0 FROM words WHERE word='emphasize';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Cho phép, tạo điều kiện', 'Technology enables remote learning. (Công nghệ tạo điều kiện cho học từ xa.)', 0 FROM words WHERE word='enable';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Gặp phải, chạm trán', 'We encountered heavy traffic this morning. (Sáng nay chúng tôi gặp phải giao thông đông đúc.)', 0 FROM words WHERE word='encounter';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Khuyến khích', 'Teachers should encourage creativity. (Giáo viên nên khuyến khích sự sáng tạo.)', 0 FROM words WHERE word='encourage';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Năng lượng', 'Solar energy is becoming more common. (Năng lượng mặt trời đang trở nên phổ biến hơn.)', 0 FROM words WHERE word='energy';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Tham gia, gắn kết', 'Students engage in group discussions. (Học sinh tham gia thảo luận nhóm.)', 0 FROM words WHERE word='engage';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Nâng cao, tăng cường', 'The update enhances security. (Bản cập nhật nâng cao bảo mật.)', 0 FROM words WHERE word='enhance';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Đảm bảo', 'Please ensure the door is locked. (Hãy đảm bảo cửa đã được khóa.)', 0 FROM words WHERE word='ensure';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Thiết lập, thành lập', 'They established a new research center. (Họ đã thành lập một trung tâm nghiên cứu mới.)', 0 FROM words WHERE word='establish';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Ước tính', 'Can you estimate the total cost? (Bạn có thể ước tính tổng chi phí không?)', 0 FROM words WHERE word='estimate';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Đánh giá', 'The team will evaluate the results. (Nhóm sẽ đánh giá kết quả.)', 0 FROM words WHERE word='evaluate';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Tiến hóa; phát triển dần', 'Languages evolve over time. (Ngôn ngữ tiến hóa theo thời gian.)', 0 FROM words WHERE word='evolve';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Mở rộng', 'The company plans to expand overseas. (Công ty dự định mở rộng ra nước ngoài.)', 0 FROM words WHERE word='expand';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Chuyên gia', 'Ask an expert for technical advice. (Hãy hỏi chuyên gia để được tư vấn kỹ thuật.)', 0 FROM words WHERE word='expert';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Khám phá', 'They explored the ancient ruins. (Họ đã khám phá tàn tích cổ.)', 0 FROM words WHERE word='explore';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Bày tỏ, thể hiện', 'He expressed his opinion clearly. (Anh ấy bày tỏ quan điểm rõ ràng.)', 0 FROM words WHERE word='express';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Mở rộng; kéo dài', 'They extended the deadline by two days. (Họ đã gia hạn thời hạn thêm hai ngày.)', 0 FROM words WHERE word='extend';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Đặc điểm, tính năng', 'This phone has a useful security feature. (Điện thoại này có một tính năng bảo mật hữu ích.)', 0 FROM words WHERE word='feature';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Tài chính', 'She studies finance at university. (Cô ấy học tài chính ở đại học.)', 0 FROM words WHERE word='finance';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Công thức', 'Use this formula to calculate the area. (Dùng công thức này để tính diện tích.)', 0 FROM words WHERE word='formula';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Khung, khuôn khổ', 'The report uses a clear analytical framework. (Báo cáo sử dụng một khuôn khổ phân tích rõ ràng.)', 0 FROM words WHERE word='framework';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Chức năng', 'The app includes a search function. (Ứng dụng có chức năng tìm kiếm.)', 0 FROM words WHERE word='function';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Tạo ra, sinh ra', 'Wind turbines generate electricity. (Tuabin gió tạo ra điện.)', 0 FROM words WHERE word='generate';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Mục tiêu', 'Our goal is to improve quality. (Mục tiêu của chúng tôi là nâng cao chất lượng.)', 0 FROM words WHERE word='goal';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Cai quản, quản trị', 'Laws help govern social behavior. (Luật pháp giúp quản trị hành vi xã hội.)', 0 FROM words WHERE word='govern';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Tốt nghiệp', 'She will graduate next summer. (Cô ấy sẽ tốt nghiệp vào mùa hè tới.)', 0 FROM words WHERE word='graduate';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Thói quen', 'Reading before bed is a good habit. (Đọc sách trước khi ngủ là một thói quen tốt.)', 0 FROM words WHERE word='habit';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Làm nổi bật, nhấn mạnh', 'The report highlights key findings. (Báo cáo làm nổi bật các phát hiện chính.)', 0 FROM words WHERE word='highlight';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Nhận diện, xác định', 'Police identified the suspect quickly. (Cảnh sát đã nhanh chóng xác định nghi phạm.)', 0 FROM words WHERE word='identify';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Tác động, ảnh hưởng', 'The policy had a positive impact. (Chính sách đã có tác động tích cực.)', 0 FROM words WHERE word='impact';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Triển khai, thực hiện', 'We plan to implement the new system in July. (Chúng tôi dự định triển khai hệ thống mới vào tháng Bảy.)', 0 FROM words WHERE word='implement';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Chỉ ra, cho thấy', 'The data indicate a rising trend. (Dữ liệu cho thấy xu hướng tăng.)', 0 FROM words WHERE word='indicate';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Ảnh hưởng', 'Parents have a strong influence on children. (Cha mẹ có ảnh hưởng lớn đến con cái.)', 0 FROM words WHERE word='influence';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Kiểm tra, thanh tra', 'Engineers inspect the bridge every year. (Kỹ sư kiểm tra cây cầu mỗi năm.)', 0 FROM words WHERE word='inspect';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Truyền cảm hứng', 'Her story inspired many young people. (Câu chuyện của cô ấy đã truyền cảm hứng cho nhiều bạn trẻ.)', 0 FROM words WHERE word='inspire';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Ví dụ, trường hợp', 'For instance, we can start with a pilot project. (Ví dụ, chúng ta có thể bắt đầu bằng một dự án thí điểm.)', 0 FROM words WHERE word='instance';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Tích hợp, hòa nhập', 'The platform integrates multiple tools. (Nền tảng này tích hợp nhiều công cụ.)', 0 FROM words WHERE word='integrate';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Đầu tư', 'Many companies invest in renewable energy. (Nhiều công ty đầu tư vào năng lượng tái tạo.)', 0 FROM words WHERE word='invest';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Liên quan đến, bao gồm', 'The job involves working with data. (Công việc này bao gồm làm việc với dữ liệu.)', 0 FROM words WHERE word='involve';

-- ── Add words that already have audio files in assets/sounds ─────
INSERT OR IGNORE INTO words (word, phonetic, word_type, lang_from, lang_to) VALUES
('aardvark', '/ˈɑːd.vɑːk/', 'noun', 'en', 'vi'),
('abbacy', '/ˈæb.ə.si/', 'noun', 'en', 'vi'),
('abbatial', '/əˈbeɪ.ʃəl/', 'adjective', 'en', 'vi'),
('abbess', '/ˈæb.es/', 'noun', 'en', 'vi'),
('abbot', '/ˈæb.ət/', 'noun', 'en', 'vi'),
('abbreviation', '/əˌbriː.viˈeɪ.ʃən/', 'noun', 'en', 'vi'),
('abdicate', '/ˈæb.dɪ.keɪt/', 'verb', 'en', 'vi'),
('abdication', '/ˌæb.dɪˈkeɪ.ʃən/', 'noun', 'en', 'vi'),
('abdomen', '/ˈæb.də.mən/', 'noun', 'en', 'vi'),
('abduct', '/æbˈdʌkt/', 'verb', 'en', 'vi'),
('abduction', '/æbˈdʌk.ʃən/', 'noun', 'en', 'vi');

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Thú lợn đất châu Phi (aardvark)', 'The aardvark uses its long tongue to eat ants. (Lợn đất dùng chiếc lưỡi dài để ăn kiến.)', 0 FROM words WHERE word='aardvark';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Chức vị viện phụ; quyền viện phụ', 'The abbacy was granted by the king. (Chức vị viện phụ được nhà vua ban cấp.)', 0 FROM words WHERE word='abbacy';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Thuộc viện phụ hoặc tu viện', 'The abbatial church stood at the center of the monastery. (Nhà thờ thuộc viện phụ nằm ở trung tâm tu viện.)', 0 FROM words WHERE word='abbatial';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Nữ viện trưởng (tu viện nữ)', 'The abbess welcomed visitors to the convent. (Nữ viện trưởng chào đón khách đến tu viện.)', 0 FROM words WHERE word='abbess';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Nam viện trưởng (tu viện)', 'The abbot led the morning prayer. (Nam viện trưởng chủ trì buổi cầu nguyện sáng.)', 0 FROM words WHERE word='abbot';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Từ viết tắt', '"Dr." is an abbreviation of "Doctor." ("Dr." là từ viết tắt của "Doctor".)', 0 FROM words WHERE word='abbreviation';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Thoái vị; từ bỏ quyền lực/chức vụ', 'The king decided to abdicate in favor of his son. (Nhà vua quyết định thoái vị nhường ngôi cho con trai.)', 0 FROM words WHERE word='abdicate';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Sự thoái vị; sự từ bỏ quyền lực/chức vụ', 'His sudden abdication shocked the nation. (Việc ông đột ngột thoái vị khiến cả nước sửng sốt.)', 0 FROM words WHERE word='abdication';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Vùng bụng (ổ bụng)', 'He felt pain in the lower abdomen. (Anh ấy cảm thấy đau ở vùng bụng dưới.)', 0 FROM words WHERE word='abdomen';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Bắt cóc, cưỡng đoạt người', 'The police rescued the child after she was abducted. (Cảnh sát đã giải cứu đứa trẻ sau khi em bị bắt cóc.)', 0 FROM words WHERE word='abduct';

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Vụ bắt cóc; hành vi bắt cóc', 'The abduction case received national attention. (Vụ bắt cóc đã thu hút sự chú ý toàn quốc.)', 0 FROM words WHERE word='abduction';

-- ── Extend seed to 300 words (additional 88) ───────────────────
INSERT OR IGNORE INTO words (word, phonetic, word_type, lang_from, lang_to) VALUES
('justify', '/ˈdʒʌs.tɪ.faɪ/', 'verb', 'en', 'vi'),
('label', '/ˈleɪ.bəl/', 'noun', 'en', 'vi'),
('launch', '/lɔːntʃ/', 'verb', 'en', 'vi'),
('legal', '/ˈliː.ɡəl/', 'adjective', 'en', 'vi'),
('legislate', '/ˈledʒ.ɪ.sleɪt/', 'verb', 'en', 'vi'),
('maintain', '/meɪnˈteɪn/', 'verb', 'en', 'vi'),
('major', '/ˈmeɪ.dʒər/', 'adjective', 'en', 'vi'),
('navigate', '/ˈnæv.ɪ.ɡeɪt/', 'verb', 'en', 'vi'),
('manual', '/ˈmæn.ju.əl/', 'noun', 'en', 'vi'),
('margin', '/ˈmɑː.dʒɪn/', 'noun', 'en', 'vi'),
('maximum', '/ˈmæk.sɪ.məm/', 'noun', 'en', 'vi'),
('measure', '/ˈmeʒ.ər/', 'verb', 'en', 'vi'),
('mechanism', '/ˈmek.ə.nɪ.zəm/', 'noun', 'en', 'vi'),
('mediate', '/ˈmiː.di.eɪt/', 'verb', 'en', 'vi'),
('mental', '/ˈmen.təl/', 'adjective', 'en', 'vi'),
('method', '/ˈmeθ.əd/', 'noun', 'en', 'vi'),
('minimum', '/ˈmɪn.ɪ.məm/', 'noun', 'en', 'vi'),
('monitor', '/ˈmɒn.ɪ.tər/', 'verb', 'en', 'vi'),
('motivate', '/ˈməʊ.tɪ.veɪt/', 'verb', 'en', 'vi'),
('mutual', '/ˈmjuː.tʃu.əl/', 'adjective', 'en', 'vi'),
('network', '/ˈnet.wɜːk/', 'noun', 'en', 'vi'),
('neutral', '/ˈnjuː.trəl/', 'adjective', 'en', 'vi'),
('notion', '/ˈnəʊ.ʃən/', 'noun', 'en', 'vi'),
('objective', '/əbˈdʒek.tɪv/', 'noun', 'en', 'vi'),
('observe', '/əbˈzɜːv/', 'verb', 'en', 'vi'),
('obtain', '/əbˈteɪn/', 'verb', 'en', 'vi'),
('occupy', '/ˈɒk.jʊ.paɪ/', 'verb', 'en', 'vi'),
('occur', '/əˈkɜːr/', 'verb', 'en', 'vi'),
('operate', '/ˈɒp.ər.eɪt/', 'verb', 'en', 'vi'),
('option', '/ˈɒp.ʃən/', 'noun', 'en', 'vi'),
('organize', '/ˈɔː.ɡə.naɪz/', 'verb', 'en', 'vi'),
('outcome', '/ˈaʊt.kʌm/', 'noun', 'en', 'vi'),
('output', '/ˈaʊt.pʊt/', 'noun', 'en', 'vi'),
('overall', '/ˌəʊ.vərˈɔːl/', 'adjective', 'en', 'vi'),
('overcome', '/ˌəʊ.vəˈkʌm/', 'verb', 'en', 'vi'),
('participate', '/pɑːˈtɪs.ɪ.peɪt/', 'verb', 'en', 'vi'),
('partner', '/ˈpɑːt.nər/', 'noun', 'en', 'vi'),
('perceive', '/pəˈsiːv/', 'verb', 'en', 'vi'),
('perform', '/pəˈfɔːm/', 'verb', 'en', 'vi'),
('permit', '/pəˈmɪt/', 'verb', 'en', 'vi'),
('perspective', '/pəˈspek.tɪv/', 'noun', 'en', 'vi'),
('phase', '/feɪz/', 'noun', 'en', 'vi'),
('phenomenon', '/fəˈnɒm.ɪ.nən/', 'noun', 'en', 'vi'),
('policy', '/ˈpɒl.ə.si/', 'noun', 'en', 'vi'),
('portion', '/ˈpɔː.ʃən/', 'noun', 'en', 'vi'),
('potential', '/pəˈten.ʃəl/', 'noun', 'en', 'vi'),
('practical', '/ˈpræk.tɪ.kəl/', 'adjective', 'en', 'vi'),
('predict', '/prɪˈdɪkt/', 'verb', 'en', 'vi'),
('prefer', '/prɪˈfɜːr/', 'verb', 'en', 'vi'),
('preserve', '/prɪˈzɜːv/', 'verb', 'en', 'vi'),
('negotiate', '/nɪˈɡəʊ.ʃi.eɪt/', 'verb', 'en', 'vi'),
('previous', '/ˈpriː.vi.əs/', 'adjective', 'en', 'vi'),
('primary', '/ˈpraɪ.mər.i/', 'adjective', 'en', 'vi'),
('prior', '/ˈpraɪ.ər/', 'adjective', 'en', 'vi'),
('proceed', '/prəˈsiːd/', 'verb', 'en', 'vi'),
('process', '/ˈprəʊ.ses/', 'noun', 'en', 'vi'),
('produce', '/prəˈdjuːs/', 'verb', 'en', 'vi'),
('profile', '/ˈprəʊ.faɪl/', 'noun', 'en', 'vi'),
('project', '/ˈprɒdʒ.ekt/', 'noun', 'en', 'vi'),
('promote', '/prəˈməʊt/', 'verb', 'en', 'vi'),
('propose', '/prəˈpəʊz/', 'verb', 'en', 'vi'),
('protect', '/prəˈtekt/', 'verb', 'en', 'vi'),
('prove', '/pruːv/', 'verb', 'en', 'vi'),
('provide', '/prəˈvaɪd/', 'verb', 'en', 'vi'),
('publish', '/ˈpʌb.lɪʃ/', 'verb', 'en', 'vi'),
('purchase', '/ˈpɜː.tʃəs/', 'verb', 'en', 'vi'),
('pursue', '/pəˈsjuː/', 'verb', 'en', 'vi'),
('qualify', '/ˈkwɒl.ɪ.faɪ/', 'verb', 'en', 'vi'),
('react', '/riˈækt/', 'verb', 'en', 'vi'),
('recover', '/rɪˈkʌv.ər/', 'verb', 'en', 'vi'),
('reduce', '/rɪˈdjuːs/', 'verb', 'en', 'vi'),
('refer', '/rɪˈfɜːr/', 'verb', 'en', 'vi'),
('reflect', '/rɪˈflekt/', 'verb', 'en', 'vi'),
('reform', '/rɪˈfɔːm/', 'verb', 'en', 'vi'),
('regard', '/rɪˈɡɑːd/', 'verb', 'en', 'vi'),
('region', '/ˈriː.dʒən/', 'noun', 'en', 'vi'),
('register', '/ˈredʒ.ɪ.stər/', 'verb', 'en', 'vi'),
('regulate', '/ˈreɡ.jʊ.leɪt/', 'verb', 'en', 'vi'),
('reinforce', '/ˌriː.ɪnˈfɔːs/', 'verb', 'en', 'vi'),
('reject', '/rɪˈdʒekt/', 'verb', 'en', 'vi'),
('relate', '/rɪˈleɪt/', 'verb', 'en', 'vi'),
('release', '/rɪˈliːs/', 'verb', 'en', 'vi'),
('relevant', '/ˈrel.ə.vənt/', 'adjective', 'en', 'vi'),
('rely', '/rɪˈlaɪ/', 'verb', 'en', 'vi'),
('remove', '/rɪˈmuːv/', 'verb', 'en', 'vi'),
('require', '/rɪˈkwaɪər/', 'verb', 'en', 'vi'),
('research', '/rɪˈsɜːtʃ/', 'noun', 'en', 'vi');

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Biện minh, chứng minh là đúng', 'Can you justify this decision? (Bạn có thể biện minh cho quyết định này không?)', 0 FROM words WHERE word='justify';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Nhãn, nhãn dán', 'Read the label before using the product. (Hãy đọc nhãn trước khi sử dụng sản phẩm.)', 0 FROM words WHERE word='label';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Phóng, khởi động, ra mắt', 'The company will launch a new app next month. (Công ty sẽ ra mắt ứng dụng mới vào tháng tới.)', 0 FROM words WHERE word='launch';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Thuộc pháp luật, hợp pháp', 'You should seek legal advice first. (Bạn nên tìm tư vấn pháp lý trước.)', 0 FROM words WHERE word='legal';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Ban hành luật', 'Parliament can legislate on this matter. (Quốc hội có thể ban hành luật về vấn đề này.)', 0 FROM words WHERE word='legislate';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Duy trì, bảo trì', 'Regular updates help maintain system stability. (Cập nhật thường xuyên giúp duy trì độ ổn định hệ thống.)', 0 FROM words WHERE word='maintain';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Chính, lớn, quan trọng', 'Air pollution is a major problem in big cities. (Ô nhiễm không khí là vấn đề lớn ở các thành phố lớn.)', 0 FROM words WHERE word='major';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Điều hướng; định hướng đường đi', 'Pilots use instruments to navigate safely. (Phi công dùng thiết bị để điều hướng an toàn.)', 0 FROM words WHERE word='navigate';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Sổ tay hướng dẫn', 'Please check the user manual for details. (Vui lòng xem sổ tay hướng dẫn để biết chi tiết.)', 0 FROM words WHERE word='manual';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Lề; biên độ', 'The company works with a low profit margin. (Công ty hoạt động với biên lợi nhuận thấp.)', 0 FROM words WHERE word='margin';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Mức tối đa', 'The room has a maximum capacity of 50 people. (Phòng có sức chứa tối đa 50 người.)', 0 FROM words WHERE word='maximum';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Đo lường', 'Scientists measure air quality every day. (Các nhà khoa học đo chất lượng không khí mỗi ngày.)', 0 FROM words WHERE word='measure';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Cơ chế', 'We need to understand the mechanism of disease spread. (Chúng ta cần hiểu cơ chế lây lan bệnh.)', 0 FROM words WHERE word='mechanism';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Làm trung gian, hòa giải', 'The UN tried to mediate between the two sides. (Liên Hợp Quốc đã cố gắng hòa giải giữa hai bên.)', 0 FROM words WHERE word='mediate';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Thuộc tinh thần, tâm lý', 'Exercise is good for both physical and mental health. (Tập thể dục tốt cho cả sức khỏe thể chất và tinh thần.)', 0 FROM words WHERE word='mental';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Phương pháp', 'This method is simple and effective. (Phương pháp này đơn giản và hiệu quả.)', 0 FROM words WHERE word='method';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Mức tối thiểu', 'The minimum age is 18. (Độ tuổi tối thiểu là 18.)', 0 FROM words WHERE word='minimum';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Theo dõi, giám sát', 'Doctors monitor the patient closely. (Các bác sĩ theo dõi bệnh nhân sát sao.)', 0 FROM words WHERE word='monitor';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Tạo động lực', 'Teachers should motivate students to read more. (Giáo viên nên tạo động lực cho học sinh đọc nhiều hơn.)', 0 FROM words WHERE word='motivate';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Lẫn nhau, chung', 'The two companies reached a mutual agreement. (Hai công ty đã đạt được thỏa thuận chung.)', 0 FROM words WHERE word='mutual';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Mạng lưới', 'She built a strong professional network. (Cô ấy xây dựng một mạng lưới nghề nghiệp vững mạnh.)', 0 FROM words WHERE word='network';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Trung lập', 'A judge must remain neutral. (Một thẩm phán phải giữ trung lập.)', 0 FROM words WHERE word='neutral';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Khái niệm, ý niệm', 'I disagree with that notion. (Tôi không đồng ý với khái niệm đó.)', 0 FROM words WHERE word='notion';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Mục tiêu', 'Our main objective is customer satisfaction. (Mục tiêu chính của chúng tôi là sự hài lòng của khách hàng.)', 0 FROM words WHERE word='objective';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Quan sát', 'Astronomers observe the sky at night. (Các nhà thiên văn quan sát bầu trời vào ban đêm.)', 0 FROM words WHERE word='observe';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Đạt được, thu được', 'You can obtain the form online. (Bạn có thể lấy mẫu đơn trực tuyến.)', 0 FROM words WHERE word='obtain';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Chiếm đóng; chiếm dụng', 'The files occupy too much disk space. (Các tệp chiếm quá nhiều dung lượng đĩa.)', 0 FROM words WHERE word='occupy';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Xảy ra', 'The error occurred during installation. (Lỗi xảy ra trong quá trình cài đặt.)', 0 FROM words WHERE word='occur';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Vận hành; hoạt động', 'The machine operates automatically. (Máy vận hành tự động.)', 0 FROM words WHERE word='operate';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Lựa chọn', 'You have the option to cancel. (Bạn có lựa chọn hủy.)', 0 FROM words WHERE word='option';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Tổ chức, sắp xếp', 'We need to organize the event carefully. (Chúng ta cần tổ chức sự kiện cẩn thận.)', 0 FROM words WHERE word='organize';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Kết quả, đầu ra cuối cùng', 'The outcome exceeded our expectations. (Kết quả vượt quá kỳ vọng của chúng tôi.)', 0 FROM words WHERE word='outcome';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Sản lượng, đầu ra', 'Factory output increased this year. (Sản lượng nhà máy tăng trong năm nay.)', 0 FROM words WHERE word='output';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Tổng thể, toàn diện', 'Overall performance has improved. (Hiệu suất tổng thể đã được cải thiện.)', 0 FROM words WHERE word='overall';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Vượt qua, khắc phục', 'She overcame many difficulties. (Cô ấy đã vượt qua nhiều khó khăn.)', 0 FROM words WHERE word='overcome';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Tham gia', 'Many students participate in sports clubs. (Nhiều học sinh tham gia câu lạc bộ thể thao.)', 0 FROM words WHERE word='participate';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Đối tác, cộng sự', 'He is my business partner. (Anh ấy là đối tác kinh doanh của tôi.)', 0 FROM words WHERE word='partner';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Nhận thức, cảm nhận', 'Children perceive risk differently from adults. (Trẻ em nhận thức rủi ro khác với người lớn.)', 0 FROM words WHERE word='perceive';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Thực hiện, biểu diễn', 'The team performed well under pressure. (Đội đã thể hiện tốt dưới áp lực.)', 0 FROM words WHERE word='perform';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Cho phép', 'Smoking is not permitted here. (Hút thuốc không được phép ở đây.)', 0 FROM words WHERE word='permit';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Góc nhìn, quan điểm', 'Try to see it from another perspective. (Hãy thử nhìn từ một góc độ khác.)', 0 FROM words WHERE word='perspective';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Giai đoạn', 'The project is entering a new phase. (Dự án đang bước vào một giai đoạn mới.)', 0 FROM words WHERE word='phase';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Hiện tượng', 'Gravity is a natural phenomenon. (Trọng lực là một hiện tượng tự nhiên.)', 0 FROM words WHERE word='phenomenon';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Chính sách', 'The school introduced a new policy. (Nhà trường đã đưa ra một chính sách mới.)', 0 FROM words WHERE word='policy';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Phần, khẩu phần', 'Only a small portion was eaten. (Chỉ một phần nhỏ được ăn.)', 0 FROM words WHERE word='portion';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Tiềm năng', 'The region has great tourism potential. (Khu vực này có tiềm năng du lịch lớn.)', 0 FROM words WHERE word='potential';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Thực tế, thiết thực', 'We need a practical solution. (Chúng ta cần một giải pháp thiết thực.)', 0 FROM words WHERE word='practical';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Dự đoán', 'Experts predict heavy rain tomorrow. (Các chuyên gia dự đoán ngày mai sẽ mưa lớn.)', 0 FROM words WHERE word='predict';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Thích hơn', 'I prefer tea to coffee. (Tôi thích trà hơn cà phê.)', 0 FROM words WHERE word='prefer';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Bảo tồn, gìn giữ', 'We must preserve historic buildings. (Chúng ta phải bảo tồn các tòa nhà lịch sử.)', 0 FROM words WHERE word='preserve';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Đàm phán, thương lượng', 'They negotiated a fair agreement. (Họ đã đàm phán được một thỏa thuận công bằng.)', 0 FROM words WHERE word='negotiate';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Trước đó, trước đây', 'In a previous job, she worked in banking. (Ở công việc trước, cô ấy làm trong ngành ngân hàng.)', 0 FROM words WHERE word='previous';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Chủ yếu, chính', 'Primary education is compulsory. (Giáo dục tiểu học là bắt buộc.)', 0 FROM words WHERE word='primary';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Trước, ưu tiên hơn', 'Safety is our prior concern. (An toàn là mối quan tâm ưu tiên của chúng tôi.)', 0 FROM words WHERE word='prior';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Tiến hành, tiếp tục', 'We can proceed with the plan. (Chúng ta có thể tiến hành kế hoạch.)', 0 FROM words WHERE word='proceed';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Quy trình, quá trình', 'Learning is a gradual process. (Học tập là một quá trình dần dần.)', 0 FROM words WHERE word='process';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Sản xuất, tạo ra', 'Farmers produce fresh vegetables. (Nông dân sản xuất rau tươi.)', 0 FROM words WHERE word='produce';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Hồ sơ, tiểu sử tóm tắt', 'Please update your profile picture. (Vui lòng cập nhật ảnh hồ sơ của bạn.)', 0 FROM words WHERE word='profile';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Dự án', 'The team started a new project. (Nhóm đã bắt đầu một dự án mới.)', 0 FROM words WHERE word='project';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Thúc đẩy, quảng bá', 'The campaign promotes healthy eating. (Chiến dịch thúc đẩy việc ăn uống lành mạnh.)', 0 FROM words WHERE word='promote';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Đề xuất', 'They proposed a better solution. (Họ đã đề xuất một giải pháp tốt hơn.)', 0 FROM words WHERE word='propose';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Bảo vệ', 'Sunscreen helps protect your skin. (Kem chống nắng giúp bảo vệ da của bạn.)', 0 FROM words WHERE word='protect';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Chứng minh', 'Can you prove your claim? (Bạn có thể chứng minh tuyên bố của mình không?)', 0 FROM words WHERE word='prove';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Cung cấp', 'The hotel provides free Wi-Fi. (Khách sạn cung cấp Wi-Fi miễn phí.)', 0 FROM words WHERE word='provide';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Xuất bản, công bố', 'The journal will publish the paper next week. (Tạp chí sẽ công bố bài báo vào tuần tới.)', 0 FROM words WHERE word='publish';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Mua, mua sắm', 'We purchased new office chairs. (Chúng tôi đã mua ghế văn phòng mới.)', 0 FROM words WHERE word='purchase';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Theo đuổi', 'She wants to pursue a career in law. (Cô ấy muốn theo đuổi sự nghiệp ngành luật.)', 0 FROM words WHERE word='pursue';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Đủ điều kiện', 'You must qualify for the scholarship. (Bạn phải đủ điều kiện nhận học bổng.)', 0 FROM words WHERE word='qualify';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Phản ứng', 'How did he react to the news? (Anh ấy phản ứng thế nào với tin đó?)', 0 FROM words WHERE word='react';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Phục hồi, hồi phục', 'She recovered quickly after surgery. (Cô ấy hồi phục nhanh sau phẫu thuật.)', 0 FROM words WHERE word='recover';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Giảm bớt, cắt giảm', 'We need to reduce waste. (Chúng ta cần giảm rác thải.)', 0 FROM words WHERE word='reduce';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Đề cập, tham chiếu', 'Please refer to page 10. (Vui lòng tham chiếu trang 10.)', 0 FROM words WHERE word='refer';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Phản chiếu; phản ánh', 'The mirror reflects light. (Gương phản chiếu ánh sáng.)', 0 FROM words WHERE word='reflect';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Cải cách', 'The government plans to reform the tax system. (Chính phủ dự định cải cách hệ thống thuế.)', 0 FROM words WHERE word='reform';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Coi như; liên quan đến', 'I regard him as a close friend. (Tôi coi anh ấy như một người bạn thân.)', 0 FROM words WHERE word='regard';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Vùng, khu vực', 'This region is famous for coffee. (Khu vực này nổi tiếng về cà phê.)', 0 FROM words WHERE word='region';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Đăng ký', 'Please register before the deadline. (Vui lòng đăng ký trước hạn chót.)', 0 FROM words WHERE word='register';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Điều chỉnh, quy định', 'The agency regulates food safety. (Cơ quan này quản lý an toàn thực phẩm.)', 0 FROM words WHERE word='regulate';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Củng cố, tăng cường', 'Positive feedback can reinforce good habits. (Phản hồi tích cực có thể củng cố thói quen tốt.)', 0 FROM words WHERE word='reinforce';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Từ chối, bác bỏ', 'The editor rejected the article. (Biên tập viên đã từ chối bài viết.)', 0 FROM words WHERE word='reject';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Liên hệ, liên quan', 'Can you relate this theory to real life? (Bạn có thể liên hệ lý thuyết này với đời sống không?)', 0 FROM words WHERE word='relate';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Phát hành; thả ra', 'The studio released a new movie. (Hãng phim đã phát hành một bộ phim mới.)', 0 FROM words WHERE word='release';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Liên quan, thích hợp', 'Your experience is highly relevant to this role. (Kinh nghiệm của bạn rất phù hợp với vị trí này.)', 0 FROM words WHERE word='relevant';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Dựa vào, tin cậy vào', 'You can rely on me. (Bạn có thể tin cậy vào tôi.)', 0 FROM words WHERE word='rely';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Loại bỏ, di chuyển khỏi', 'Please remove your shoes before entering. (Vui lòng cởi giày trước khi vào.)', 0 FROM words WHERE word='remove';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Yêu cầu, đòi hỏi', 'This job requires strong communication skills. (Công việc này đòi hỏi kỹ năng giao tiếp tốt.)', 0 FROM words WHERE word='require';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Nghiên cứu', 'The team published important research findings. (Nhóm đã công bố các kết quả nghiên cứu quan trọng.)', 0 FROM words WHERE word='research';

-- ── Extend seed toward 400 words (additional 101) ───────────────
INSERT OR IGNORE INTO words (word, phonetic, word_type, lang_from, lang_to) VALUES
('respond', '/rɪˈspɒnd/', 'verb', 'en', 'vi'),
('restore', '/rɪˈstɔːr/', 'verb', 'en', 'vi'),
('restrict', '/rɪˈstrɪkt/', 'verb', 'en', 'vi'),
('retain', '/rɪˈteɪn/', 'verb', 'en', 'vi'),
('reveal', '/rɪˈviːl/', 'verb', 'en', 'vi'),
('revise', '/rɪˈvaɪz/', 'verb', 'en', 'vi'),
('reward', '/rɪˈwɔːd/', 'noun', 'en', 'vi'),
('robust', '/rəʊˈbʌst/', 'adjective', 'en', 'vi'),
('routine', '/ruːˈtiːn/', 'noun', 'en', 'vi'),
('schedule', '/ˈʃed.juːl/', 'noun', 'en', 'vi'),
('scope', '/skəʊp/', 'noun', 'en', 'vi'),
('sector', '/ˈsek.tər/', 'noun', 'en', 'vi'),
('secure', '/sɪˈkjʊər/', 'verb', 'en', 'vi'),
('select', '/sɪˈlekt/', 'verb', 'en', 'vi'),
('senior', '/ˈsiː.njər/', 'adjective', 'en', 'vi'),
('sequence', '/ˈsiː.kwəns/', 'noun', 'en', 'vi'),
('shift', '/ʃɪft/', 'verb', 'en', 'vi'),
('significant', '/sɪɡˈnɪf.ɪ.kənt/', 'adjective', 'en', 'vi'),
('similar', '/ˈsɪm.ɪ.lər/', 'adjective', 'en', 'vi'),
('simplify', '/ˈsɪm.plɪ.faɪ/', 'verb', 'en', 'vi'),
('source', '/sɔːs/', 'noun', 'en', 'vi'),
('specific', '/spəˈsɪf.ɪk/', 'adjective', 'en', 'vi'),
('stable', '/ˈsteɪ.bəl/', 'adjective', 'en', 'vi'),
('standard', '/ˈstæn.dəd/', 'noun', 'en', 'vi'),
('strategy', '/ˈstræt.ə.dʒi/', 'noun', 'en', 'vi'),
('structure', '/ˈstrʌk.tʃər/', 'noun', 'en', 'vi'),
('submit', '/səbˈmɪt/', 'verb', 'en', 'vi'),
('sufficient', '/səˈfɪʃ.ənt/', 'adjective', 'en', 'vi'),
('summary', '/ˈsʌm.ər.i/', 'noun', 'en', 'vi'),
('support', '/səˈpɔːt/', 'verb', 'en', 'vi'),
('survive', '/səˈvaɪv/', 'verb', 'en', 'vi'),
('sustain', '/səˈsteɪn/', 'verb', 'en', 'vi'),
('target', '/ˈtɑː.ɡɪt/', 'noun', 'en', 'vi'),
('task', '/tɑːsk/', 'noun', 'en', 'vi'),
('technique', '/tekˈniːk/', 'noun', 'en', 'vi'),
('temporary', '/ˈtem.pər.ər.i/', 'adjective', 'en', 'vi'),
('theory', '/ˈθɪə.ri/', 'noun', 'en', 'vi'),
('threaten', '/ˈθret.ən/', 'verb', 'en', 'vi'),
('tolerate', '/ˈtɒl.ər.eɪt/', 'verb', 'en', 'vi'),
('topic', '/ˈtɒp.ɪk/', 'noun', 'en', 'vi'),
('transform', '/trænsˈfɔːm/', 'verb', 'en', 'vi'),
('transition', '/trænˈzɪʃ.ən/', 'noun', 'en', 'vi'),
('transmit', '/trænzˈmɪt/', 'verb', 'en', 'vi'),
('transport', '/ˈtræn.spɔːt/', 'noun', 'en', 'vi'),
('treat', '/triːt/', 'verb', 'en', 'vi'),
('trend', '/trend/', 'noun', 'en', 'vi'),
('trigger', '/ˈtrɪɡ.ər/', 'verb', 'en', 'vi'),
('typical', '/ˈtɪp.ɪ.kəl/', 'adjective', 'en', 'vi'),
('ultimate', '/ˈʌl.tɪ.mət/', 'adjective', 'en', 'vi'),
('unify', '/ˈjuː.nɪ.faɪ/', 'verb', 'en', 'vi'),
('noteworthy', '/ˈnəʊtˌwɜː.ði/', 'adjective', 'en', 'vi'),
('update', '/ʌpˈdeɪt/', 'verb', 'en', 'vi'),
('upgrade', '/ʌpˈɡreɪd/', 'verb', 'en', 'vi'),
('urban', '/ˈɜː.bən/', 'adjective', 'en', 'vi'),
('urge', '/ɜːdʒ/', 'verb', 'en', 'vi'),
('valid', '/ˈvæl.ɪd/', 'adjective', 'en', 'vi'),
('vary', '/ˈveə.ri/', 'verb', 'en', 'vi'),
('vehicle', '/ˈviː.ɪ.kəl/', 'noun', 'en', 'vi'),
('version', '/ˈvɜː.ʃən/', 'noun', 'en', 'vi'),
('visible', '/ˈvɪz.ə.bəl/', 'adjective', 'en', 'vi'),
('vision', '/ˈvɪʒ.ən/', 'noun', 'en', 'vi'),
('volume', '/ˈvɒl.juːm/', 'noun', 'en', 'vi'),
('welfare', '/ˈwel.feər/', 'noun', 'en', 'vi'),
('whereas', '/weərˈæz/', 'conjunction', 'en', 'vi'),
('widespread', '/ˈwaɪd.spred/', 'adjective', 'en', 'vi'),
('withdraw', '/wɪðˈdrɔː/', 'verb', 'en', 'vi'),
('witness', '/ˈwɪt.nəs/', 'noun', 'en', 'vi'),
('workshop', '/ˈwɜːk.ʃɒp/', 'noun', 'en', 'vi'),
('yearly', '/ˈjɪə.li/', 'adjective', 'en', 'vi'),
('youth', '/juːθ/', 'noun', 'en', 'vi'),
('abstract', '/ˈæb.strækt/', 'adjective', 'en', 'vi'),
('access', '/ˈæk.ses/', 'noun', 'en', 'vi'),
('accompany', '/əˈkʌm.pə.ni/', 'verb', 'en', 'vi'),
('account', '/əˈkaʊnt/', 'noun', 'en', 'vi'),
('novel', '/ˈnɒv.əl/', 'adjective', 'en', 'vi'),
('acquire', '/əˈkwaɪər/', 'verb', 'en', 'vi'),
('activate', '/ˈæk.tɪ.veɪt/', 'verb', 'en', 'vi'),
('adequate', '/ˈæd.ɪ.kwət/', 'adjective', 'en', 'vi'),
('adjust', '/əˈdʒʌst/', 'verb', 'en', 'vi'),
('advocate', '/ˈæd.və.keɪt/', 'verb', 'en', 'vi'),
('allocate', '/ˈæl.ə.keɪt/', 'verb', 'en', 'vi'),
('alter', '/ˈɔːl.tər/', 'verb', 'en', 'vi'),
('annual', '/ˈæn.ju.əl/', 'adjective', 'en', 'vi'),
('apparent', '/əˈpær.ənt/', 'adjective', 'en', 'vi'),
('approach', '/əˈprəʊtʃ/', 'verb', 'en', 'vi'),
('approve', '/əˈpruːv/', 'verb', 'en', 'vi'),
('aspect', '/ˈæs.pekt/', 'noun', 'en', 'vi'),
('assist', '/əˈsɪst/', 'verb', 'en', 'vi'),
('assume', '/əˈsjuːm/', 'verb', 'en', 'vi'),
('attach', '/əˈtætʃ/', 'verb', 'en', 'vi'),
('attend', '/əˈtend/', 'verb', 'en', 'vi'),
('attract', '/əˈtrækt/', 'verb', 'en', 'vi'),
('average', '/ˈæv.ər.ɪdʒ/', 'adjective', 'en', 'vi'),
('aware', '/əˈweər/', 'adjective', 'en', 'vi'),
('capable', '/ˈkeɪ.pə.bəl/', 'adjective', 'en', 'vi'),
('capacity', '/kəˈpæs.ə.ti/', 'noun', 'en', 'vi'),
('channel', '/ˈtʃæn.əl/', 'noun', 'en', 'vi'),
('clarify', '/ˈklær.ɪ.faɪ/', 'verb', 'en', 'vi'),
('client', '/ˈklaɪ.ənt/', 'noun', 'en', 'vi'),
('collect', '/kəˈlekt/', 'verb', 'en', 'vi'),
('yield', '/jiːld/', 'verb', 'en', 'vi');

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Phản hồi, đáp lại', 'Please respond to this email by Friday. (Vui lòng phản hồi email này trước thứ Sáu.)', 0 FROM words WHERE word='respond';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Khôi phục', 'The team restored the old building. (Nhóm đã khôi phục tòa nhà cũ.)', 0 FROM words WHERE word='restore';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Hạn chế', 'The policy restricts access to sensitive data. (Chính sách hạn chế quyền truy cập dữ liệu nhạy cảm.)', 0 FROM words WHERE word='restrict';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Giữ lại, duy trì', 'It is hard to retain skilled workers. (Rất khó để giữ lại lao động có tay nghề.)', 0 FROM words WHERE word='retain';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Tiết lộ, bộc lộ', 'The report revealed serious problems. (Báo cáo đã tiết lộ những vấn đề nghiêm trọng.)', 0 FROM words WHERE word='reveal';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Ôn tập; sửa đổi', 'I need to revise for the exam. (Tôi cần ôn tập cho kỳ thi.)', 0 FROM words WHERE word='revise';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Phần thưởng', 'Hard work often brings reward. (Làm việc chăm chỉ thường mang lại phần thưởng.)', 0 FROM words WHERE word='reward';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Mạnh mẽ, bền vững', 'We need a robust security system. (Chúng ta cần một hệ thống bảo mật mạnh mẽ.)', 0 FROM words WHERE word='robust';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Thói quen thường ngày', 'Exercise is part of my daily routine. (Tập thể dục là một phần trong thói quen hằng ngày của tôi.)', 0 FROM words WHERE word='routine';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Lịch trình', 'The train schedule has changed. (Lịch trình tàu đã thay đổi.)', 0 FROM words WHERE word='schedule';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Phạm vi', 'This job is beyond my scope. (Công việc này vượt quá phạm vi của tôi.)', 0 FROM words WHERE word='scope';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Lĩnh vực, khu vực', 'The private sector is growing fast. (Khu vực tư nhân đang tăng trưởng nhanh.)', 0 FROM words WHERE word='sector';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Bảo đảm; bảo vệ an toàn', 'We must secure the building at night. (Chúng ta phải bảo đảm an toàn tòa nhà vào ban đêm.)', 0 FROM words WHERE word='secure';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Lựa chọn', 'Please select one option. (Vui lòng chọn một lựa chọn.)', 0 FROM words WHERE word='select';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Cấp cao; lớn tuổi hơn', 'She is a senior manager. (Cô ấy là một quản lý cấp cao.)', 0 FROM words WHERE word='senior';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Chuỗi, trình tự', 'The DNA sequence was analyzed. (Trình tự DNA đã được phân tích.)', 0 FROM words WHERE word='sequence';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Di chuyển; thay đổi', 'Public opinion began to shift. (Dư luận bắt đầu thay đổi.)', 0 FROM words WHERE word='shift';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Quan trọng, đáng kể', 'There was a significant improvement. (Đã có một sự cải thiện đáng kể.)', 0 FROM words WHERE word='significant';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Tương tự', 'The two solutions are similar. (Hai giải pháp này tương tự nhau.)', 0 FROM words WHERE word='similar';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Đơn giản hóa', 'We should simplify this process. (Chúng ta nên đơn giản hóa quy trình này.)', 0 FROM words WHERE word='simplify';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Nguồn, xuất xứ', 'What is your source of information? (Nguồn thông tin của bạn là gì?)', 0 FROM words WHERE word='source';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Cụ thể', 'Please give specific examples. (Vui lòng đưa ra ví dụ cụ thể.)', 0 FROM words WHERE word='specific';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Ổn định', 'The market is now more stable. (Thị trường hiện ổn định hơn.)', 0 FROM words WHERE word='stable';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Tiêu chuẩn', 'Quality standards are strict here. (Tiêu chuẩn chất lượng ở đây rất nghiêm ngặt.)', 0 FROM words WHERE word='standard';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Chiến lược', 'They developed a new marketing strategy. (Họ đã phát triển một chiến lược tiếp thị mới.)', 0 FROM words WHERE word='strategy';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Cấu trúc', 'The essay has a clear structure. (Bài luận có cấu trúc rõ ràng.)', 0 FROM words WHERE word='structure';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Nộp, đệ trình', 'Please submit your report today. (Vui lòng nộp báo cáo hôm nay.)', 0 FROM words WHERE word='submit';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Đủ, đầy đủ', 'The evidence is sufficient. (Bằng chứng là đủ.)', 0 FROM words WHERE word='sufficient';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Bản tóm tắt', 'Here is a summary of the meeting. (Đây là bản tóm tắt cuộc họp.)', 0 FROM words WHERE word='summary';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Hỗ trợ', 'Parents should support their children. (Cha mẹ nên hỗ trợ con cái.)', 0 FROM words WHERE word='support';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Sống sót', 'Few plants survive in this desert. (Rất ít cây sống sót ở sa mạc này.)', 0 FROM words WHERE word='survive';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Duy trì, kéo dài', 'The region needs policies to sustain growth. (Khu vực này cần chính sách để duy trì tăng trưởng.)', 0 FROM words WHERE word='sustain';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Mục tiêu', 'Our target is to reduce costs by 10%. (Mục tiêu của chúng tôi là giảm chi phí 10%.)', 0 FROM words WHERE word='target';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Nhiệm vụ', 'I finished the task early. (Tôi đã hoàn thành nhiệm vụ sớm.)', 0 FROM words WHERE word='task';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Kỹ thuật', 'This painting technique is difficult. (Kỹ thuật vẽ này khá khó.)', 0 FROM words WHERE word='technique';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Tạm thời', 'She got a temporary job. (Cô ấy có một công việc tạm thời.)', 0 FROM words WHERE word='temporary';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Lý thuyết', 'The theory needs more evidence. (Lý thuyết này cần thêm bằng chứng.)', 0 FROM words WHERE word='theory';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Đe dọa', 'Dark clouds threaten rain. (Mây đen báo hiệu mưa.)', 0 FROM words WHERE word='threaten';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Chịu đựng, dung thứ', 'I cannot tolerate noise at night. (Tôi không thể chịu được tiếng ồn vào ban đêm.)', 0 FROM words WHERE word='tolerate';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Chủ đề', 'Today''s topic is climate change. (Chủ đề hôm nay là biến đổi khí hậu.)', 0 FROM words WHERE word='topic';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Biến đổi, chuyển hóa', 'Education can transform lives. (Giáo dục có thể thay đổi cuộc đời.)', 0 FROM words WHERE word='transform';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Sự chuyển đổi', 'The transition to online learning was fast. (Sự chuyển đổi sang học trực tuyến diễn ra nhanh.)', 0 FROM words WHERE word='transition';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Truyền tải', 'Satellites transmit signals globally. (Vệ tinh truyền tín hiệu toàn cầu.)', 0 FROM words WHERE word='transmit';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Vận tải, giao thông', 'Public transport is convenient here. (Giao thông công cộng ở đây rất thuận tiện.)', 0 FROM words WHERE word='transport';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Đối xử; điều trị', 'Doctors treat patients with care. (Bác sĩ điều trị bệnh nhân cẩn thận.)', 0 FROM words WHERE word='treat';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Xu hướng', 'This trend may continue next year. (Xu hướng này có thể tiếp tục vào năm tới.)', 0 FROM words WHERE word='trend';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Kích hoạt, gây ra', 'The news triggered public debate. (Tin tức đã gây ra cuộc tranh luận công khai.)', 0 FROM words WHERE word='trigger';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Điển hình', 'This is a typical example. (Đây là một ví dụ điển hình.)', 0 FROM words WHERE word='typical';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Cuối cùng, tối hậu', 'Our ultimate goal is peace. (Mục tiêu cuối cùng của chúng tôi là hòa bình.)', 0 FROM words WHERE word='ultimate';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Thống nhất', 'The reforms helped unify the system. (Các cải cách đã giúp thống nhất hệ thống.)', 0 FROM words WHERE word='unify';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Đáng chú ý, đáng lưu ý', 'Her contribution was particularly noteworthy. (Đóng góp của cô ấy đặc biệt đáng chú ý.)', 0 FROM words WHERE word='noteworthy';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Cập nhật', 'Please update the software. (Vui lòng cập nhật phần mềm.)', 0 FROM words WHERE word='update';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Nâng cấp', 'We upgraded the server last week. (Chúng tôi đã nâng cấp máy chủ tuần trước.)', 0 FROM words WHERE word='upgrade';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Thuộc đô thị', 'Urban areas face heavy traffic. (Khu vực đô thị đối mặt với giao thông đông đúc.)', 0 FROM words WHERE word='urban';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Thúc giục', 'I urge you to be careful. (Tôi thúc giục bạn hãy cẩn thận.)', 0 FROM words WHERE word='urge';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Hợp lệ', 'Your argument is valid. (Lập luận của bạn là hợp lệ.)', 0 FROM words WHERE word='valid';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Thay đổi, biến đổi', 'Prices vary by season. (Giá cả thay đổi theo mùa.)', 0 FROM words WHERE word='vary';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Phương tiện', 'Electric vehicles are becoming common. (Xe điện đang trở nên phổ biến.)', 0 FROM words WHERE word='vehicle';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Phiên bản', 'I installed the latest version. (Tôi đã cài phiên bản mới nhất.)', 0 FROM words WHERE word='version';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Có thể nhìn thấy', 'The mountain is visible today. (Ngọn núi hôm nay có thể nhìn thấy.)', 0 FROM words WHERE word='visible';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Tầm nhìn; thị lực', 'She has a clear vision for the company. (Cô ấy có tầm nhìn rõ ràng cho công ty.)', 0 FROM words WHERE word='vision';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Âm lượng; thể tích', 'Please lower the volume. (Vui lòng giảm âm lượng.)', 0 FROM words WHERE word='volume';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Phúc lợi', 'The program improves child welfare. (Chương trình cải thiện phúc lợi trẻ em.)', 0 FROM words WHERE word='welfare';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Trong khi, xét rằng', 'He likes tea, whereas I prefer coffee. (Anh ấy thích trà, trong khi tôi thích cà phê.)', 0 FROM words WHERE word='whereas';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Phổ biến rộng rãi', 'The disease is widespread in winter. (Căn bệnh này phổ biến rộng rãi vào mùa đông.)', 0 FROM words WHERE word='widespread';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Rút lui; rút tiền', 'He decided to withdraw from the race. (Anh ấy quyết định rút khỏi cuộc đua.)', 0 FROM words WHERE word='withdraw';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Nhân chứng; chứng kiến', 'She was a witness to the accident. (Cô ấy là nhân chứng của vụ tai nạn.)', 0 FROM words WHERE word='witness';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Hội thảo chuyên đề', 'I attended a writing workshop. (Tôi đã tham dự một buổi hội thảo viết.)', 0 FROM words WHERE word='workshop';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Hằng năm', 'The event is held yearly. (Sự kiện này được tổ chức hằng năm.)', 0 FROM words WHERE word='yearly';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Tuổi trẻ, thanh niên', 'Youth unemployment remains high. (Tỷ lệ thất nghiệp của thanh niên vẫn cao.)', 0 FROM words WHERE word='youth';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Trừu tượng', 'The concept is too abstract for beginners. (Khái niệm này quá trừu tượng với người mới bắt đầu.)', 0 FROM words WHERE word='abstract';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Quyền truy cập; lối vào', 'Only staff have access to this room. (Chỉ nhân viên mới có quyền truy cập phòng này.)', 0 FROM words WHERE word='access';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Đi cùng, tháp tùng', 'A nurse accompanied the patient. (Một y tá đã đi cùng bệnh nhân.)', 0 FROM words WHERE word='accompany';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Tài khoản; bản tường thuật', 'Please create an online account. (Vui lòng tạo một tài khoản trực tuyến.)', 0 FROM words WHERE word='account';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Mới lạ, mang tính mới', 'The scientist proposed a novel approach. (Nhà khoa học đã đề xuất một cách tiếp cận mới lạ.)', 0 FROM words WHERE word='novel';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Đạt được, thu nhận', 'She acquired new skills at work. (Cô ấy đã học được kỹ năng mới ở nơi làm việc.)', 0 FROM words WHERE word='acquire';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Kích hoạt', 'Click here to activate your account. (Nhấp vào đây để kích hoạt tài khoản của bạn.)', 0 FROM words WHERE word='activate';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Đầy đủ, thỏa đáng', 'The room has adequate lighting. (Căn phòng có ánh sáng đầy đủ.)', 0 FROM words WHERE word='adequate';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Điều chỉnh', 'You can adjust the settings later. (Bạn có thể điều chỉnh cài đặt sau.)', 0 FROM words WHERE word='adjust';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Ủng hộ, biện hộ cho', 'Many doctors advocate regular exercise. (Nhiều bác sĩ ủng hộ việc tập thể dục đều đặn.)', 0 FROM words WHERE word='advocate';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Phân bổ', 'The budget was allocated fairly. (Ngân sách đã được phân bổ công bằng.)', 0 FROM words WHERE word='allocate';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Thay đổi', 'We need to alter the design slightly. (Chúng ta cần thay đổi thiết kế một chút.)', 0 FROM words WHERE word='alter';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Hằng năm', 'The company publishes an annual report. (Công ty công bố báo cáo thường niên.)', 0 FROM words WHERE word='annual';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Rõ ràng, hiển nhiên', 'It became apparent that we were late. (Rõ ràng là chúng tôi đã muộn.)', 0 FROM words WHERE word='apparent';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Tiếp cận', 'A stranger approached me for help. (Một người lạ đã tiếp cận tôi để nhờ giúp đỡ.)', 0 FROM words WHERE word='approach';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Phê duyệt, chấp thuận', 'The manager approved the request. (Quản lý đã phê duyệt yêu cầu.)', 0 FROM words WHERE word='approve';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Khía cạnh', 'We discussed every aspect of the plan. (Chúng tôi đã thảo luận mọi khía cạnh của kế hoạch.)', 0 FROM words WHERE word='aspect';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Hỗ trợ, trợ giúp', 'Can you assist me with this task? (Bạn có thể hỗ trợ tôi với nhiệm vụ này không?)', 0 FROM words WHERE word='assist';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Giả định', 'Do not assume everyone agrees. (Đừng giả định rằng mọi người đều đồng ý.)', 0 FROM words WHERE word='assume';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Đính kèm, gắn vào', 'Please attach the file to your email. (Vui lòng đính kèm tệp vào email.)', 0 FROM words WHERE word='attach';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Tham dự', 'I will attend the conference tomorrow. (Tôi sẽ tham dự hội nghị vào ngày mai.)', 0 FROM words WHERE word='attend';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Thu hút', 'The museum attracts many tourists. (Bảo tàng thu hút nhiều khách du lịch.)', 0 FROM words WHERE word='attract';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Trung bình', 'The average score was 7.5. (Điểm trung bình là 7,5.)', 0 FROM words WHERE word='average';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Nhận thức được', 'I am aware of the risks. (Tôi nhận thức được những rủi ro.)', 0 FROM words WHERE word='aware';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Có khả năng', 'She is capable of leading the team. (Cô ấy có khả năng dẫn dắt nhóm.)', 0 FROM words WHERE word='capable';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Sức chứa, năng lực', 'The stadium has a capacity of 40,000. (Sân vận động có sức chứa 40.000 người.)', 0 FROM words WHERE word='capacity';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Kênh; kênh truyền thông', 'We used several channels to advertise. (Chúng tôi dùng nhiều kênh để quảng bá.)', 0 FROM words WHERE word='channel';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Làm rõ', 'Could you clarify this point? (Bạn có thể làm rõ điểm này không?)', 0 FROM words WHERE word='clarify';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Khách hàng', 'The client approved the final design. (Khách hàng đã duyệt thiết kế cuối cùng.)', 0 FROM words WHERE word='client';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Thu thập', 'Researchers collect data from surveys. (Các nhà nghiên cứu thu thập dữ liệu từ khảo sát.)', 0 FROM words WHERE word='collect';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Mang lại; nhường đường', 'Trees can yield fruit for many years. (Cây có thể cho quả trong nhiều năm.)', 0 FROM words WHERE word='yield';

-- ── Extend seed to 500 words (additional 100 unique words) ─────
INSERT OR IGNORE INTO words (word, phonetic, word_type, lang_from, lang_to) VALUES
('abolish', '/əˈbɒl.ɪʃ/', 'verb', 'en', 'vi'),
('abrupt', '/əˈbrʌpt/', 'adjective', 'en', 'vi'),
('absorb', '/əbˈzɔːb/', 'verb', 'en', 'vi'),
('abundant', '/əˈbʌn.dənt/', 'adjective', 'en', 'vi'),
('accelerate', '/əkˈsel.ə.reɪt/', 'verb', 'en', 'vi'),
('accessible', '/əkˈses.ə.bəl/', 'adjective', 'en', 'vi'),
('accomplish', '/əˈkʌm.plɪʃ/', 'verb', 'en', 'vi'),
('accumulate', '/əˈkjuː.mjə.leɪt/', 'verb', 'en', 'vi'),
('acknowledge', '/əkˈnɒl.ɪdʒ/', 'verb', 'en', 'vi'),
('adaptable', '/əˈdæp.tə.bəl/', 'adjective', 'en', 'vi'),
('adjacent', '/əˈdʒeɪ.sənt/', 'adjective', 'en', 'vi'),
('administer', '/ədˈmɪn.ɪ.stər/', 'verb', 'en', 'vi'),
('admission', '/ədˈmɪʃ.ən/', 'noun', 'en', 'vi'),
('adolescent', '/ˌæd.əˈles.ənt/', 'noun', 'en', 'vi'),
('adverse', '/ˈæd.vɜːs/', 'adjective', 'en', 'vi'),
('aesthetic', '/iːsˈθet.ɪk/', 'adjective', 'en', 'vi'),
('aggressive', '/əˈɡres.ɪv/', 'adjective', 'en', 'vi'),
('aid', '/eɪd/', 'noun', 'en', 'vi'),
('alignment', '/əˈlaɪn.mənt/', 'noun', 'en', 'vi'),
('allege', '/əˈledʒ/', 'verb', 'en', 'vi'),
('alliance', '/əˈlaɪ.əns/', 'noun', 'en', 'vi'),
('allowance', '/əˈlaʊ.əns/', 'noun', 'en', 'vi'),
('alongside', '/əˌlɒŋˈsaɪd/', 'preposition', 'en', 'vi'),
('amend', '/əˈmend/', 'verb', 'en', 'vi'),
('amid', '/əˈmɪd/', 'preposition', 'en', 'vi'),
('analogy', '/əˈnæl.ə.dʒi/', 'noun', 'en', 'vi'),
('ancestor', '/ˈæn.ses.tər/', 'noun', 'en', 'vi'),
('anticipate', '/ænˈtɪs.ɪ.peɪt/', 'verb', 'en', 'vi'),
('apology', '/əˈpɒl.ə.dʒi/', 'noun', 'en', 'vi'),
('appetite', '/ˈæp.ə.taɪt/', 'noun', 'en', 'vi'),
('arbitrary', '/ˈɑː.bɪ.trər.i/', 'adjective', 'en', 'vi'),
('architect', '/ˈɑː.kɪ.tekt/', 'noun', 'en', 'vi'),
('arena', '/əˈriː.nə/', 'noun', 'en', 'vi'),
('arise', '/əˈraɪz/', 'verb', 'en', 'vi'),
('array', '/əˈreɪ/', 'noun', 'en', 'vi'),
('artifact', '/ˈɑː.tɪ.fækt/', 'noun', 'en', 'vi'),
('assign', '/əˈsaɪn/', 'verb', 'en', 'vi'),
('astonish', '/əˈstɒn.ɪʃ/', 'verb', 'en', 'vi'),
('athlete', '/ˈæθ.liːt/', 'noun', 'en', 'vi'),
('attitude', '/ˈæt.ɪ.tjuːd/', 'noun', 'en', 'vi'),
('authorize', '/ˈɔː.θər.aɪz/', 'verb', 'en', 'vi'),
('await', '/əˈweɪt/', 'verb', 'en', 'vi'),
('awkward', '/ˈɔː.kwəd/', 'adjective', 'en', 'vi'),
('bargain', '/ˈbɑː.ɡɪn/', 'noun', 'en', 'vi'),
('behalf', '/bɪˈhɑːf/', 'noun', 'en', 'vi'),
('bias', '/ˈbaɪ.əs/', 'noun', 'en', 'vi'),
('blessing', '/ˈbles.ɪŋ/', 'noun', 'en', 'vi'),
('boost', '/buːst/', 'verb', 'en', 'vi'),
('breakthrough', '/ˈbreɪk.θruː/', 'noun', 'en', 'vi'),
('briefly', '/ˈbriːf.li/', 'adverb', 'en', 'vi'),
('cease', '/siːs/', 'verb', 'en', 'vi'),
('circulate', '/ˈsɜː.kjə.leɪt/', 'verb', 'en', 'vi'),
('civil', '/ˈsɪv.əl/', 'adjective', 'en', 'vi'),
('coherent', '/kəʊˈhɪə.rənt/', 'adjective', 'en', 'vi'),
('collaborate', '/kəˈlæb.ə.reɪt/', 'verb', 'en', 'vi'),
('companion', '/kəmˈpæn.jən/', 'noun', 'en', 'vi'),
('compel', '/kəmˈpel/', 'verb', 'en', 'vi'),
('compensate', '/ˈkɒm.pən.seɪt/', 'verb', 'en', 'vi'),
('compile', '/kəmˈpaɪl/', 'verb', 'en', 'vi'),
('comply', '/kəmˈplaɪ/', 'verb', 'en', 'vi'),
('comprehensive', '/ˌkɒm.prɪˈhen.sɪv/', 'adjective', 'en', 'vi'),
('conceive', '/kənˈsiːv/', 'verb', 'en', 'vi'),
('concrete', '/ˈkɒŋ.kriːt/', 'adjective', 'en', 'vi'),
('confer', '/kənˈfɜːr/', 'verb', 'en', 'vi'),
('conflict', '/ˈkɒn.flɪkt/', 'noun', 'en', 'vi'),
('consequent', '/ˈkɒn.sɪ.kwənt/', 'adjective', 'en', 'vi'),
('conservative', '/kənˈsɜː.və.tɪv/', 'adjective', 'en', 'vi'),
('consist', '/kənˈsɪst/', 'verb', 'en', 'vi'),
('constrain', '/kənˈstreɪn/', 'verb', 'en', 'vi'),
('consult', '/kənˈsʌlt/', 'verb', 'en', 'vi'),
('contemporary', '/kənˈtem.pər.ər.i/', 'adjective', 'en', 'vi'),
('contest', '/ˈkɒn.test/', 'noun', 'en', 'vi'),
('coordinate', '/kəʊˈɔː.dɪ.neɪt/', 'verb', 'en', 'vi'),
('correspond', '/ˌkɒr.ɪˈspɒnd/', 'verb', 'en', 'vi'),
('crucial', '/ˈkruː.ʃəl/', 'adjective', 'en', 'vi'),
('dedicate', '/ˈded.ɪ.keɪt/', 'verb', 'en', 'vi'),
('defect', '/ˈdiː.fekt/', 'noun', 'en', 'vi'),
('defensive', '/dɪˈfen.sɪv/', 'adjective', 'en', 'vi'),
('deliberate', '/dɪˈlɪb.ər.ət/', 'adjective', 'en', 'vi'),
('depict', '/dɪˈpɪkt/', 'verb', 'en', 'vi'),
('derive', '/dɪˈraɪv/', 'verb', 'en', 'vi'),
('devote', '/dɪˈvəʊt/', 'verb', 'en', 'vi'),
('diminish', '/dɪˈmɪn.ɪʃ/', 'verb', 'en', 'vi'),
('dispute', '/dɪˈspjuːt/', 'noun', 'en', 'vi'),
('disrupt', '/dɪsˈrʌpt/', 'verb', 'en', 'vi'),
('distant', '/ˈdɪs.tənt/', 'adjective', 'en', 'vi'),
('distort', '/dɪˈstɔːt/', 'verb', 'en', 'vi'),
('domestic', '/dəˈmes.tɪk/', 'adjective', 'en', 'vi'),
('durable', '/ˈdjʊə.rə.bəl/', 'adjective', 'en', 'vi'),
('dynamic', '/daɪˈnæm.ɪk/', 'adjective', 'en', 'vi'),
('eliminate', '/ɪˈlɪm.ɪ.neɪt/', 'verb', 'en', 'vi'),
('embody', '/ɪmˈbɒd.i/', 'verb', 'en', 'vi'),
('empirical', '/ɪmˈpɪr.ɪ.kəl/', 'adjective', 'en', 'vi'),
('entitle', '/ɪnˈtaɪ.təl/', 'verb', 'en', 'vi'),
('equivalent', '/ɪˈkwɪv.əl.ənt/', 'adjective', 'en', 'vi'),
('erosion', '/ɪˈrəʊ.ʒən/', 'noun', 'en', 'vi'),
('ethic', '/ˈeθ.ɪk/', 'noun', 'en', 'vi'),
('exceed', '/ɪkˈsiːd/', 'verb', 'en', 'vi'),
('exclude', '/ɪkˈskluːd/', 'verb', 'en', 'vi'),
('exhibit', '/ɪɡˈzɪb.ɪt/', 'verb', 'en', 'vi'),
('explicit', '/ɪkˈsplɪs.ɪt/', 'adjective', 'en', 'vi');

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Bãi bỏ, hủy bỏ', 'The government decided to abolish the outdated law. (Chính phủ quyết định bãi bỏ luật lỗi thời.)', 0 FROM words WHERE word='abolish';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Đột ngột, bất ngờ', 'There was an abrupt change in the weather. (Thời tiết đã thay đổi đột ngột.)', 0 FROM words WHERE word='abrupt';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Hấp thụ; tiếp thu', 'Plants absorb water through their roots. (Cây hấp thụ nước qua rễ.)', 0 FROM words WHERE word='absorb';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Phong phú, dồi dào', 'The region has abundant natural resources. (Khu vực này có nguồn tài nguyên thiên nhiên dồi dào.)', 0 FROM words WHERE word='abundant';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Tăng tốc', 'The car accelerated quickly on the highway. (Chiếc xe tăng tốc nhanh trên đường cao tốc.)', 0 FROM words WHERE word='accelerate';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Có thể tiếp cận', 'The website is accessible to all users. (Trang web có thể truy cập bởi mọi người dùng.)', 0 FROM words WHERE word='accessible';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Hoàn thành, đạt được', 'She accomplished all her goals this year. (Cô ấy đã hoàn thành mọi mục tiêu năm nay.)', 0 FROM words WHERE word='accomplish';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Tích lũy', 'Dust can accumulate over time. (Bụi có thể tích lũy theo thời gian.)', 0 FROM words WHERE word='accumulate';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Thừa nhận, công nhận', 'He acknowledged his mistake. (Anh ấy thừa nhận lỗi của mình.)', 0 FROM words WHERE word='acknowledge';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Dễ thích nghi', 'Young children are often adaptable. (Trẻ nhỏ thường dễ thích nghi.)', 0 FROM words WHERE word='adaptable';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Liền kề, kế bên', 'Our office is adjacent to the station. (Văn phòng của chúng tôi nằm liền kề nhà ga.)', 0 FROM words WHERE word='adjacent';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Quản trị; thực hiện', 'Nurses administer medicine to patients. (Y tá cấp thuốc cho bệnh nhân.)', 0 FROM words WHERE word='administer';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Sự thừa nhận; vé vào cửa', 'Admission to the museum is free on Sundays. (Vào cửa bảo tàng miễn phí vào Chủ nhật.)', 0 FROM words WHERE word='admission';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Thanh thiếu niên', 'The program supports adolescent mental health. (Chương trình hỗ trợ sức khỏe tinh thần của thanh thiếu niên.)', 0 FROM words WHERE word='adolescent';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Bất lợi, tiêu cực', 'The project was affected by adverse weather. (Dự án bị ảnh hưởng bởi thời tiết bất lợi.)', 0 FROM words WHERE word='adverse';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Thuộc thẩm mỹ', 'The building has strong aesthetic value. (Tòa nhà có giá trị thẩm mỹ cao.)', 0 FROM words WHERE word='aesthetic';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Hung hăng; quyết liệt', 'The team adopted an aggressive strategy. (Đội đã áp dụng chiến lược quyết liệt.)', 0 FROM words WHERE word='aggressive';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Sự hỗ trợ, viện trợ', 'International aid arrived after the flood. (Viện trợ quốc tế đã đến sau trận lũ.)', 0 FROM words WHERE word='aid';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Sự căn chỉnh; sự liên kết', 'Proper alignment improves performance. (Căn chỉnh đúng giúp nâng cao hiệu suất.)', 0 FROM words WHERE word='alignment';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Cáo buộc', 'They alleged that the report was biased. (Họ cáo buộc rằng báo cáo bị thiên lệch.)', 0 FROM words WHERE word='allege';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Liên minh', 'The two countries formed an alliance. (Hai quốc gia đã lập một liên minh.)', 0 FROM words WHERE word='alliance';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Khoản trợ cấp', 'Children receive a monthly allowance. (Trẻ em nhận một khoản trợ cấp hàng tháng.)', 0 FROM words WHERE word='allowance';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Sửa đổi, bổ sung', 'They amended the contract yesterday. (Họ đã sửa đổi hợp đồng hôm qua.)', 0 FROM words WHERE word='amend';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Phép loại suy, sự tương đồng', 'The teacher used an analogy to explain the idea. (Giáo viên dùng phép so sánh tương đồng để giải thích ý tưởng.)', 0 FROM words WHERE word='analogy';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Tổ tiên', 'He studied the history of his ancestors. (Anh ấy nghiên cứu lịch sử của tổ tiên mình.)', 0 FROM words WHERE word='ancestor';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Dự đoán trước, lường trước', 'We anticipate higher demand this year. (Chúng tôi dự đoán nhu cầu cao hơn trong năm nay.)', 0 FROM words WHERE word='anticipate';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Lời xin lỗi', 'She offered an apology for being late. (Cô ấy đưa ra lời xin lỗi vì đến muộn.)', 0 FROM words WHERE word='apology';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Sự thèm ăn, khẩu vị', 'He has a good appetite after exercise. (Anh ấy ăn ngon miệng sau khi tập luyện.)', 0 FROM words WHERE word='appetite';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Tùy ý, độc đoán', 'The decision seemed arbitrary. (Quyết định đó có vẻ tùy tiện.)', 0 FROM words WHERE word='arbitrary';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Kiến trúc sư', 'The architect designed a sustainable house. (Kiến trúc sư đã thiết kế một ngôi nhà bền vững.)', 0 FROM words WHERE word='architect';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Đấu trường; lĩnh vực hoạt động', 'The policy has changed the political arena. (Chính sách đã thay đổi đấu trường chính trị.)', 0 FROM words WHERE word='arena';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Phát sinh, nảy sinh', 'New opportunities may arise soon. (Những cơ hội mới có thể nảy sinh sớm.)', 0 FROM words WHERE word='arise';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Một loạt, dãy', 'The store offers an array of products. (Cửa hàng cung cấp một loạt sản phẩm.)', 0 FROM words WHERE word='array';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Hiện vật (khảo cổ/văn hóa)', 'The museum displayed ancient artifacts. (Bảo tàng trưng bày các hiện vật cổ.)', 0 FROM words WHERE word='artifact';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Phân công, giao', 'The teacher assigned homework to the class. (Giáo viên giao bài tập về nhà cho lớp.)', 0 FROM words WHERE word='assign';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Làm kinh ngạc', 'His performance astonished the audience. (Màn trình diễn của anh ấy khiến khán giả kinh ngạc.)', 0 FROM words WHERE word='astonish';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Vận động viên', 'The athlete trained every morning. (Vận động viên tập luyện mỗi sáng.)', 0 FROM words WHERE word='athlete';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Thái độ', 'A positive attitude helps at work. (Thái độ tích cực giúp ích trong công việc.)', 0 FROM words WHERE word='attitude';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Cho phép, ủy quyền', 'Only managers can authorize refunds. (Chỉ quản lý mới có thể phê duyệt hoàn tiền.)', 0 FROM words WHERE word='authorize';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Chờ đợi', 'Important changes await us. (Những thay đổi quan trọng đang chờ chúng ta.)', 0 FROM words WHERE word='await';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Lúng túng; vụng về', 'There was an awkward silence in the room. (Có một sự im lặng ngượng ngùng trong phòng.)', 0 FROM words WHERE word='awkward';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Món hời; mặc cả', 'I found a great bargain at the market. (Tôi tìm được một món hời ở chợ.)', 0 FROM words WHERE word='bargain';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Thay mặt, vì lợi ích của', 'She spoke on behalf of the team. (Cô ấy phát biểu thay mặt nhóm.)', 0 FROM words WHERE word='behalf';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Thiên kiến, thành kiến', 'We must reduce bias in hiring. (Chúng ta phải giảm thiên kiến trong tuyển dụng.)', 0 FROM words WHERE word='bias';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Phúc lành; điều may mắn', 'Good health is a blessing. (Sức khỏe tốt là một điều may mắn.)', 0 FROM words WHERE word='blessing';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Thúc đẩy, tăng cường', 'Exercise can boost your mood. (Tập thể dục có thể cải thiện tâm trạng của bạn.)', 0 FROM words WHERE word='boost';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Bước đột phá', 'The vaccine was a medical breakthrough. (Loại vắc-xin đó là một bước đột phá y học.)', 0 FROM words WHERE word='breakthrough';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Trong thời gian ngắn, ngắn gọn', 'Let me explain briefly. (Để tôi giải thích ngắn gọn.)', 0 FROM words WHERE word='briefly';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Chấm dứt, ngừng', 'Hostilities finally ceased. (Các hành động thù địch cuối cùng đã chấm dứt.)', 0 FROM words WHERE word='cease';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Lưu thông, tuần hoàn', 'Fresh air should circulate in the room. (Không khí trong lành nên lưu thông trong phòng.)', 0 FROM words WHERE word='circulate';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Thuộc dân sự; lịch sự', 'They reached a civil agreement. (Họ đạt được một thỏa thuận dân sự.)', 0 FROM words WHERE word='civil';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Mạch lạc, logic', 'Her argument was coherent and clear. (Lập luận của cô ấy mạch lạc và rõ ràng.)', 0 FROM words WHERE word='coherent';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Hợp tác', 'Researchers from both universities collaborated. (Các nhà nghiên cứu từ hai trường đại học đã hợp tác.)', 0 FROM words WHERE word='collaborate';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Bạn đồng hành', 'The dog was his loyal companion. (Con chó là người bạn đồng hành trung thành của anh ấy.)', 0 FROM words WHERE word='companion';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Buộc, ép', 'The evidence compelled him to confess. (Bằng chứng buộc anh ấy phải thú nhận.)', 0 FROM words WHERE word='compel';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Bồi thường; đền bù', 'The company compensated workers for the delay. (Công ty đã bồi thường cho công nhân vì sự chậm trễ.)', 0 FROM words WHERE word='compensate';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Biên soạn, tổng hợp', 'She compiled the report from several sources. (Cô ấy đã tổng hợp báo cáo từ nhiều nguồn.)', 0 FROM words WHERE word='compile';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Tuân thủ', 'All staff must comply with safety rules. (Tất cả nhân viên phải tuân thủ quy tắc an toàn.)', 0 FROM words WHERE word='comply';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Toàn diện', 'The guide provides comprehensive information. (Hướng dẫn cung cấp thông tin toàn diện.)', 0 FROM words WHERE word='comprehensive';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Hình dung; nghĩ ra', 'It is hard to conceive such a future. (Thật khó để hình dung một tương lai như vậy.)', 0 FROM words WHERE word='conceive';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Cụ thể, hữu hình', 'We need concrete evidence. (Chúng ta cần bằng chứng cụ thể.)', 0 FROM words WHERE word='concrete';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Trao đổi; bàn bạc', 'The committee will confer tomorrow. (Ủy ban sẽ họp bàn vào ngày mai.)', 0 FROM words WHERE word='confer';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Xung đột', 'The conflict lasted for years. (Cuộc xung đột đã kéo dài nhiều năm.)', 0 FROM words WHERE word='conflict';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Hệ quả, kéo theo', 'There were consequent delays in delivery. (Có những trì hoãn kéo theo trong việc giao hàng.)', 0 FROM words WHERE word='consequent';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Bảo thủ', 'He has conservative views on education. (Anh ấy có quan điểm bảo thủ về giáo dục.)', 0 FROM words WHERE word='conservative';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Bao gồm, gồm có', 'The team consists of five members. (Nhóm gồm năm thành viên.)', 0 FROM words WHERE word='consist';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Hạn chế, ràng buộc', 'Budget limits constrain our options. (Giới hạn ngân sách ràng buộc các lựa chọn của chúng ta.)', 0 FROM words WHERE word='constrain';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Tham khảo; tư vấn', 'You should consult a doctor. (Bạn nên tham khảo ý kiến bác sĩ.)', 0 FROM words WHERE word='consult';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Đương đại, cùng thời', 'The gallery shows contemporary art. (Phòng trưng bày giới thiệu nghệ thuật đương đại.)', 0 FROM words WHERE word='contemporary';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Cuộc thi', 'She won the writing contest. (Cô ấy đã thắng cuộc thi viết.)', 0 FROM words WHERE word='contest';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Phối hợp', 'We need to coordinate with other teams. (Chúng ta cần phối hợp với các nhóm khác.)', 0 FROM words WHERE word='coordinate';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Tương ứng; trao đổi thư từ', 'The two sets of data correspond closely. (Hai bộ dữ liệu tương ứng chặt chẽ.)', 0 FROM words WHERE word='correspond';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Then chốt, cực kỳ quan trọng', 'Trust is crucial in any partnership. (Niềm tin là yếu tố then chốt trong mọi quan hệ hợp tác.)', 0 FROM words WHERE word='crucial';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Cống hiến, dành cho', 'She dedicated her life to teaching. (Cô ấy đã cống hiến cuộc đời cho việc giảng dạy.)', 0 FROM words WHERE word='dedicate';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Khiếm khuyết, lỗi', 'The product has a minor defect. (Sản phẩm có một lỗi nhỏ.)', 0 FROM words WHERE word='defect';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Phòng thủ', 'He took a defensive position in the debate. (Anh ấy giữ lập trường phòng thủ trong cuộc tranh luận.)', 0 FROM words WHERE word='defensive';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Có chủ ý, cân nhắc kỹ', 'It was a deliberate choice. (Đó là một lựa chọn có chủ ý.)', 0 FROM words WHERE word='deliberate';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Mô tả, khắc họa', 'The book depicts life in the village. (Cuốn sách khắc họa cuộc sống ở làng quê.)', 0 FROM words WHERE word='depict';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Suy ra, bắt nguồn từ', 'Many words derive from Latin. (Nhiều từ bắt nguồn từ tiếng Latin.)', 0 FROM words WHERE word='derive';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Dành, cống hiến', 'He devoted more time to research. (Anh ấy dành nhiều thời gian hơn cho nghiên cứu.)', 0 FROM words WHERE word='devote';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Làm giảm', 'The medication can diminish pain. (Thuốc có thể làm giảm cơn đau.)', 0 FROM words WHERE word='diminish';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Tranh chấp, tranh luận', 'The two firms are in a legal dispute. (Hai công ty đang trong tranh chấp pháp lý.)', 0 FROM words WHERE word='dispute';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Làm gián đoạn', 'The storm disrupted flights. (Cơn bão đã làm gián đoạn các chuyến bay.)', 0 FROM words WHERE word='disrupt';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Xa xôi, xa cách', 'They moved to a distant village. (Họ chuyển đến một ngôi làng xa xôi.)', 0 FROM words WHERE word='distant';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Làm méo mó, bóp méo', 'The lens can distort the image. (Thấu kính có thể làm méo hình ảnh.)', 0 FROM words WHERE word='distort';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Trong nước; nội địa', 'Domestic demand increased this quarter. (Nhu cầu trong nước tăng trong quý này.)', 0 FROM words WHERE word='domestic';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Bền, lâu bền', 'This material is durable and light. (Vật liệu này bền và nhẹ.)', 0 FROM words WHERE word='durable';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Năng động; động', 'We need a more dynamic approach. (Chúng ta cần cách tiếp cận năng động hơn.)', 0 FROM words WHERE word='dynamic';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Loại bỏ', 'We should eliminate unnecessary steps. (Chúng ta nên loại bỏ các bước không cần thiết.)', 0 FROM words WHERE word='eliminate';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Thể hiện, tiêu biểu cho', 'The statue embodies national pride. (Bức tượng thể hiện niềm tự hào dân tộc.)', 0 FROM words WHERE word='embody';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Thực nghiệm, dựa trên quan sát', 'The study is based on empirical data. (Nghiên cứu dựa trên dữ liệu thực nghiệm.)', 0 FROM words WHERE word='empirical';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Trao quyền; đặt tên', 'This ticket entitles you to free entry. (Vé này cho phép bạn vào cửa miễn phí.)', 0 FROM words WHERE word='entitle';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Tương đương', 'One euro is roughly equivalent to this amount. (Một euro xấp xỉ tương đương số tiền này.)', 0 FROM words WHERE word='equivalent';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Sự xói mòn', 'Coastal erosion threatens nearby homes. (Xói mòn bờ biển đe dọa các ngôi nhà gần đó.)', 0 FROM words WHERE word='erosion';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Đạo đức nghề nghiệp', 'Professional ethic is important in medicine. (Đạo đức nghề nghiệp rất quan trọng trong ngành y.)', 0 FROM words WHERE word='ethic';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Vượt quá', 'The cost exceeded our budget. (Chi phí đã vượt quá ngân sách của chúng tôi.)', 0 FROM words WHERE word='exceed';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Loại trừ', 'The price excludes tax. (Mức giá chưa bao gồm thuế.)', 0 FROM words WHERE word='exclude';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Trưng bày; thể hiện', 'The museum exhibits modern paintings. (Bảo tàng trưng bày tranh hiện đại.)', 0 FROM words WHERE word='exhibit';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Rõ ràng, minh bạch', 'Please provide explicit instructions. (Vui lòng cung cấp hướng dẫn rõ ràng.)', 0 FROM words WHERE word='explicit';

INSERT OR IGNORE INTO words (word, phonetic, word_type, lang_from, lang_to)
VALUES ('feasible', '/ˈfiː.zə.bəl/', 'adjective', 'en', 'vi');

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order)
SELECT id, 'Khả thi, có thể thực hiện được', 'The plan is feasible within our budget. (Kế hoạch này khả thi trong phạm vi ngân sách của chúng tôi.)', 0
FROM words WHERE word='feasible';

-- ── Extend seed from 500 to 600 words (additional 100) ─────────
INSERT OR IGNORE INTO words (word, phonetic, word_type, lang_from, lang_to) VALUES
('facilitate', '/fəˈsɪl.ɪ.teɪt/', 'verb', 'en', 'vi'),
('faction', '/ˈfæk.ʃən/', 'noun', 'en', 'vi'),
('faculty', '/ˈfæk.əl.ti/', 'noun', 'en', 'vi'),
('fade', '/feɪd/', 'verb', 'en', 'vi'),
('faint', '/feɪnt/', 'adjective', 'en', 'vi'),
('faithful', '/ˈfeɪθ.fəl/', 'adjective', 'en', 'vi'),
('famine', '/ˈfæm.ɪn/', 'noun', 'en', 'vi'),
('fascinate', '/ˈfæs.ɪ.neɪt/', 'verb', 'en', 'vi'),
('fatal', '/ˈfeɪ.təl/', 'adjective', 'en', 'vi'),
('fatigue', '/fəˈtiːɡ/', 'noun', 'en', 'vi'),
('favorable', '/ˈfeɪ.vər.ə.bəl/', 'adjective', 'en', 'vi'),
('fertile', '/ˈfɜː.taɪl/', 'adjective', 'en', 'vi'),
('fiction', '/ˈfɪk.ʃən/', 'noun', 'en', 'vi'),
('filter', '/ˈfɪl.tər/', 'verb', 'en', 'vi'),
('finalize', '/ˈfaɪ.nəl.aɪz/', 'verb', 'en', 'vi'),
('flourish', '/ˈflʌr.ɪʃ/', 'verb', 'en', 'vi'),
('fluctuate', '/ˈflʌk.tʃu.eɪt/', 'verb', 'en', 'vi'),
('forbid', '/fəˈbɪd/', 'verb', 'en', 'vi'),
('forecast', '/ˈfɔː.kɑːst/', 'noun', 'en', 'vi'),
('forge', '/fɔːdʒ/', 'verb', 'en', 'vi'),
('formal', '/ˈfɔː.məl/', 'adjective', 'en', 'vi'),
('foster', '/ˈfɒs.tər/', 'verb', 'en', 'vi'),
('fraction', '/ˈfræk.ʃən/', 'noun', 'en', 'vi'),
('fragile', '/ˈfrædʒ.aɪl/', 'adjective', 'en', 'vi'),
('friction', '/ˈfrɪk.ʃən/', 'noun', 'en', 'vi'),
('frontier', '/ˈfrʌn.tɪər/', 'noun', 'en', 'vi'),
('frustrate', '/frʌˈstreɪt/', 'verb', 'en', 'vi'),
('fulfill', '/fʊlˈfɪl/', 'verb', 'en', 'vi'),
('furnish', '/ˈfɜː.nɪʃ/', 'verb', 'en', 'vi'),
('gather', '/ˈɡæð.ər/', 'verb', 'en', 'vi'),
('gender', '/ˈdʒen.dər/', 'noun', 'en', 'vi'),
('genuine', '/ˈdʒen.ju.ɪn/', 'adjective', 'en', 'vi'),
('gesture', '/ˈdʒes.tʃər/', 'noun', 'en', 'vi'),
('glimpse', '/ɡlɪmps/', 'noun', 'en', 'vi'),
('glorious', '/ˈɡlɔː.ri.əs/', 'adjective', 'en', 'vi'),
('graceful', '/ˈɡreɪs.fəl/', 'adjective', 'en', 'vi'),
('grant', '/ɡrɑːnt/', 'verb', 'en', 'vi'),
('grounded', '/ˈɡraʊn.dɪd/', 'adjective', 'en', 'vi'),
('guarantee', '/ˌɡær.ənˈtiː/', 'noun', 'en', 'vi'),
('guideline', '/ˈɡaɪd.laɪn/', 'noun', 'en', 'vi'),
('halt', '/hɔːlt/', 'verb', 'en', 'vi'),
('handle', '/ˈhæn.dəl/', 'verb', 'en', 'vi'),
('harmony', '/ˈhɑː.mə.ni/', 'noun', 'en', 'vi'),
('harsh', '/hɑːʃ/', 'adjective', 'en', 'vi'),
('heritage', '/ˈher.ɪ.tɪdʒ/', 'noun', 'en', 'vi'),
('hesitate', '/ˈhez.ɪ.teɪt/', 'verb', 'en', 'vi'),
('hinder', '/ˈhɪn.dər/', 'verb', 'en', 'vi'),
('hearty', '/ˈhɑː.ti/', 'adjective', 'en', 'vi'),
('horizon', '/həˈraɪ.zən/', 'noun', 'en', 'vi'),
('hostile', '/ˈhɒs.taɪl/', 'adjective', 'en', 'vi'),
('holistic', '/həˈlɪs.tɪk/', 'adjective', 'en', 'vi'),
('identical', '/aɪˈden.tɪ.kəl/', 'adjective', 'en', 'vi'),
('idle', '/ˈaɪ.dəl/', 'adjective', 'en', 'vi'),
('ignite', '/ɪɡˈnaɪt/', 'verb', 'en', 'vi'),
('illusion', '/ɪˈluː.ʒən/', 'noun', 'en', 'vi'),
('immune', '/ɪˈmjuːn/', 'adjective', 'en', 'vi'),
('impose', '/ɪmˈpəʊz/', 'verb', 'en', 'vi'),
('impressive', '/ɪmˈpres.ɪv/', 'adjective', 'en', 'vi'),
('incentive', '/ɪnˈsen.tɪv/', 'noun', 'en', 'vi'),
('incident', '/ˈɪn.sɪ.dənt/', 'noun', 'en', 'vi'),
('incline', '/ɪnˈklaɪn/', 'verb', 'en', 'vi'),
('incorporate', '/ɪnˈkɔː.pər.eɪt/', 'verb', 'en', 'vi'),
('inevitable', '/ɪnˈev.ɪ.tə.bəl/', 'adjective', 'en', 'vi'),
('infer', '/ɪnˈfɜːr/', 'verb', 'en', 'vi'),
('inject', '/ɪnˈdʒekt/', 'verb', 'en', 'vi'),
('innovative', '/ˈɪn.ə.və.tɪv/', 'adjective', 'en', 'vi'),
('inquire', '/ɪnˈkwaɪər/', 'verb', 'en', 'vi'),
('insight', '/ˈɪn.saɪt/', 'noun', 'en', 'vi'),
('instruct', '/ɪnˈstrʌkt/', 'verb', 'en', 'vi'),
('intact', '/ɪnˈtækt/', 'adjective', 'en', 'vi'),
('intense', '/ɪnˈtens/', 'adjective', 'en', 'vi'),
('interfere', '/ˌɪn.təˈfɪər/', 'verb', 'en', 'vi'),
('internal', '/ɪnˈtɜː.nəl/', 'adjective', 'en', 'vi'),
('interpret', '/ɪnˈtɜː.prət/', 'verb', 'en', 'vi'),
('interrupt', '/ˌɪn.təˈrʌpt/', 'verb', 'en', 'vi'),
('interval', '/ˈɪn.tə.vəl/', 'noun', 'en', 'vi'),
('invade', '/ɪnˈveɪd/', 'verb', 'en', 'vi'),
('isolate', '/ˈaɪ.sə.leɪt/', 'verb', 'en', 'vi'),
('joint', '/dʒɔɪnt/', 'adjective', 'en', 'vi'),
('judicial', '/dʒuːˈdɪʃ.əl/', 'adjective', 'en', 'vi'),
('junior', '/ˈdʒuː.ni.ər/', 'adjective', 'en', 'vi'),
('justice', '/ˈdʒʌs.tɪs/', 'noun', 'en', 'vi'),
('keen', '/kiːn/', 'adjective', 'en', 'vi'),
('kingdom', '/ˈkɪŋ.dəm/', 'noun', 'en', 'vi'),
('landmark', '/ˈlænd.mɑːk/', 'noun', 'en', 'vi'),
('latter', '/ˈlæt.ər/', 'adjective', 'en', 'vi'),
('layer', '/ˈleɪ.ər/', 'noun', 'en', 'vi'),
('leak', '/liːk/', 'verb', 'en', 'vi'),
('leap', '/liːp/', 'verb', 'en', 'vi'),
('legacy', '/ˈleɡ.ə.si/', 'noun', 'en', 'vi'),
('leisure', '/ˈleʒ.ər/', 'noun', 'en', 'vi'),
('liable', '/ˈlaɪ.ə.bəl/', 'adjective', 'en', 'vi'),
('likewise', '/ˈlaɪk.waɪz/', 'adverb', 'en', 'vi'),
('literal', '/ˈlɪt.ər.əl/', 'adjective', 'en', 'vi'),
('lively', '/ˈlaɪv.li/', 'adjective', 'en', 'vi'),
('lodge', '/lɒdʒ/', 'verb', 'en', 'vi'),
('loyal', '/ˈlɔɪ.əl/', 'adjective', 'en', 'vi'),
('luxury', '/ˈlʌk.ʃər.i/', 'noun', 'en', 'vi'),
('massive', '/ˈmæs.ɪv/', 'adjective', 'en', 'vi'),
('mature', '/məˈtjʊər/', 'adjective', 'en', 'vi');

INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Tạo điều kiện, làm cho dễ hơn', 'Technology can facilitate remote collaboration. (Công nghệ có thể tạo điều kiện cho cộng tác từ xa.)', 0 FROM words WHERE word='facilitate';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Phe phái', 'A faction within the party opposed the proposal. (Một phe trong đảng phản đối đề xuất.)', 0 FROM words WHERE word='faction';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Khoa (trường đại học); năng lực', 'She is a member of the law faculty. (Cô ấy là thành viên khoa luật.)', 0 FROM words WHERE word='faculty';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Phai dần, mờ đi', 'The colors fade in direct sunlight. (Màu sắc phai dần dưới ánh nắng trực tiếp.)', 0 FROM words WHERE word='fade';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Yếu ớt, mờ nhạt', 'We heard a faint sound outside. (Chúng tôi nghe thấy một âm thanh rất nhỏ bên ngoài.)', 0 FROM words WHERE word='faint';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Trung thành', 'He remained faithful to his principles. (Anh ấy vẫn trung thành với các nguyên tắc của mình.)', 0 FROM words WHERE word='faithful';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Nạn đói', 'The region suffered a severe famine. (Khu vực này đã chịu một nạn đói nghiêm trọng.)', 0 FROM words WHERE word='famine';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Làm say mê, cuốn hút', 'Ancient history fascinates many students. (Lịch sử cổ đại cuốn hút nhiều học sinh.)', 0 FROM words WHERE word='fascinate';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Chí mạng, gây tử vong', 'The accident proved fatal for one passenger. (Vụ tai nạn đã gây tử vong cho một hành khách.)', 0 FROM words WHERE word='fatal';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Sự mệt mỏi', 'Driver fatigue can cause accidents. (Sự mệt mỏi của tài xế có thể gây tai nạn.)', 0 FROM words WHERE word='fatigue';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Thuận lợi', 'The weather is favorable for farming. (Thời tiết thuận lợi cho nông nghiệp.)', 0 FROM words WHERE word='favorable';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Màu mỡ, phì nhiêu', 'The valley has fertile soil. (Thung lũng có đất màu mỡ.)', 0 FROM words WHERE word='fertile';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Văn học hư cấu', 'She prefers fiction to non-fiction. (Cô ấy thích tiểu thuyết hơn sách phi hư cấu.)', 0 FROM words WHERE word='fiction';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Lọc', 'Use this app to filter unwanted emails. (Hãy dùng ứng dụng này để lọc email không mong muốn.)', 0 FROM words WHERE word='filter';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Hoàn tất, chốt lại', 'We need to finalize the report today. (Chúng ta cần hoàn tất báo cáo hôm nay.)', 0 FROM words WHERE word='finalize';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Phát triển mạnh, hưng thịnh', 'Small businesses can flourish online. (Doanh nghiệp nhỏ có thể phát triển mạnh trên mạng.)', 0 FROM words WHERE word='flourish';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Dao động', 'Prices fluctuate during the holiday season. (Giá cả dao động trong mùa lễ.)', 0 FROM words WHERE word='fluctuate';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Cấm', 'The law forbids smoking in hospitals. (Luật cấm hút thuốc trong bệnh viện.)', 0 FROM words WHERE word='forbid';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Dự báo', 'The forecast predicts heavy rain tomorrow. (Bản dự báo dự đoán mưa lớn ngày mai.)', 0 FROM words WHERE word='forecast';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Rèn, tạo ra', 'Hard experiences can forge strong character. (Những trải nghiệm khó khăn có thể tôi luyện tính cách mạnh mẽ.)', 0 FROM words WHERE word='forge';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Trang trọng, chính thức', 'He wore a formal suit to the ceremony. (Anh ấy mặc bộ vest trang trọng đến buổi lễ.)', 0 FROM words WHERE word='formal';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Nuôi dưỡng, thúc đẩy', 'Schools should foster creativity. (Trường học nên nuôi dưỡng sự sáng tạo.)', 0 FROM words WHERE word='foster';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Phần nhỏ, phân số', 'Only a fraction of applicants were accepted. (Chỉ một phần nhỏ ứng viên được chấp nhận.)', 0 FROM words WHERE word='fraction';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Mỏng manh, dễ vỡ', 'Please handle this fragile item carefully. (Vui lòng xử lý món hàng dễ vỡ này cẩn thận.)', 0 FROM words WHERE word='fragile';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Ma sát; xung đột', 'Friction between teams slowed progress. (Xung đột giữa các nhóm làm chậm tiến độ.)', 0 FROM words WHERE word='friction';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Biên giới; lĩnh vực tiên phong', 'AI is the new frontier of technology. (AI là lĩnh vực tiên phong mới của công nghệ.)', 0 FROM words WHERE word='frontier';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Làm nản lòng', 'Constant delays frustrate customers. (Sự chậm trễ liên tục làm khách hàng nản lòng.)', 0 FROM words WHERE word='frustrate';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Hoàn thành; đáp ứng', 'He worked hard to fulfill his promise. (Anh ấy đã làm việc chăm chỉ để thực hiện lời hứa.)', 0 FROM words WHERE word='fulfill';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Trang bị; cung cấp', 'The apartment is fully furnished. (Căn hộ đã được trang bị đầy đủ nội thất.)', 0 FROM words WHERE word='furnish';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Tập hợp; thu thập', 'We gather feedback from users weekly. (Chúng tôi thu thập phản hồi từ người dùng hằng tuần.)', 0 FROM words WHERE word='gather';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Giới tính', 'The survey asked about age and gender. (Khảo sát hỏi về tuổi và giới tính.)', 0 FROM words WHERE word='gender';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Chân thật, thật sự', 'She showed genuine concern for others. (Cô ấy thể hiện sự quan tâm chân thành đến người khác.)', 0 FROM words WHERE word='genuine';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Cử chỉ', 'He made a friendly gesture. (Anh ấy đã có một cử chỉ thân thiện.)', 0 FROM words WHERE word='gesture';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Thoáng thấy', 'I caught a glimpse of the sunrise. (Tôi thoáng thấy cảnh mặt trời mọc.)', 0 FROM words WHERE word='glimpse';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Rực rỡ, huy hoàng', 'They celebrated a glorious victory. (Họ ăn mừng một chiến thắng huy hoàng.)', 0 FROM words WHERE word='glorious';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Duyên dáng', 'She moved with graceful steps. (Cô ấy di chuyển với những bước đi duyên dáng.)', 0 FROM words WHERE word='graceful';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Cấp, trao', 'The committee granted him permission. (Ủy ban đã cấp phép cho anh ấy.)', 0 FROM words WHERE word='grant';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Thực tế, vững vàng', 'Her grounded advice helped the team make better decisions. (Lời khuyên thực tế của cô ấy giúp nhóm đưa ra quyết định tốt hơn.)', 0 FROM words WHERE word='grounded';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Sự bảo đảm', 'This product comes with a two-year guarantee. (Sản phẩm này đi kèm bảo hành hai năm.)', 0 FROM words WHERE word='guarantee';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Hướng dẫn', 'Follow the safety guidelines carefully. (Hãy làm theo các hướng dẫn an toàn cẩn thận.)', 0 FROM words WHERE word='guideline';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Dừng lại', 'Construction halted during the storm. (Việc xây dựng dừng lại trong cơn bão.)', 0 FROM words WHERE word='halt';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Xử lý', 'She can handle difficult situations. (Cô ấy có thể xử lý những tình huống khó khăn.)', 0 FROM words WHERE word='handle';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Sự hài hòa', 'The design creates harmony between colors. (Thiết kế tạo sự hài hòa giữa các màu sắc.)', 0 FROM words WHERE word='harmony';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Khắc nghiệt', 'The desert has a harsh climate. (Sa mạc có khí hậu khắc nghiệt.)', 0 FROM words WHERE word='harsh';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Di sản', 'The temple is part of national heritage. (Ngôi đền là một phần của di sản quốc gia.)', 0 FROM words WHERE word='heritage';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Do dự', 'Do not hesitate to ask questions. (Đừng ngần ngại đặt câu hỏi.)', 0 FROM words WHERE word='hesitate';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Cản trở', 'Lack of funding hindered the project. (Thiếu kinh phí đã cản trở dự án.)', 0 FROM words WHERE word='hinder';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Nhiệt tình, chân thành', 'They gave us a hearty welcome at the village gate. (Họ đã chào đón chúng tôi nồng nhiệt ở cổng làng.)', 0 FROM words WHERE word='hearty';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Chân trời', 'The sun disappeared below the horizon. (Mặt trời khuất dưới chân trời.)', 0 FROM words WHERE word='horizon';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Thù địch', 'They faced a hostile audience. (Họ đối mặt với một khán giả thù địch.)', 0 FROM words WHERE word='hostile';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Toàn diện, mang tính tổng thể', 'The clinic offers a holistic approach to patient care. (Phòng khám cung cấp cách tiếp cận toàn diện trong chăm sóc bệnh nhân.)', 0 FROM words WHERE word='holistic';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Giống hệt', 'The twins wore identical clothes. (Hai anh em sinh đôi mặc quần áo giống hệt nhau.)', 0 FROM words WHERE word='identical';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Nhàn rỗi, không hoạt động', 'The factory stood idle for months. (Nhà máy đứng yên không hoạt động nhiều tháng.)', 0 FROM words WHERE word='idle';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Châm ngòi, đốt cháy', 'Dry weather can ignite forest fires. (Thời tiết khô có thể châm ngòi cháy rừng.)', 0 FROM words WHERE word='ignite';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Ảo tưởng, ảo ảnh', 'The mirror created an illusion of space. (Chiếc gương tạo ảo giác về không gian.)', 0 FROM words WHERE word='illusion';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Miễn nhiễm', 'Some plants are immune to this disease. (Một số cây miễn nhiễm với bệnh này.)', 0 FROM words WHERE word='immune';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Áp đặt', 'The government imposed new taxes. (Chính phủ đã áp đặt các loại thuế mới.)', 0 FROM words WHERE word='impose';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Ấn tượng', 'Her presentation was truly impressive. (Bài thuyết trình của cô ấy thực sự ấn tượng.)', 0 FROM words WHERE word='impressive';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Động lực khuyến khích', 'Bonuses provide an incentive to perform better. (Tiền thưởng tạo động lực để làm tốt hơn.)', 0 FROM words WHERE word='incentive';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Sự cố, vụ việc', 'The incident was reported immediately. (Sự cố đã được báo cáo ngay lập tức.)', 0 FROM words WHERE word='incident';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Có xu hướng', 'I am inclined to agree with you. (Tôi có xu hướng đồng ý với bạn.)', 0 FROM words WHERE word='incline';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Kết hợp, đưa vào', 'We incorporated user feedback into the design. (Chúng tôi đã đưa phản hồi người dùng vào thiết kế.)', 0 FROM words WHERE word='incorporate';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Không thể tránh khỏi', 'Change is inevitable in technology. (Sự thay đổi là không thể tránh khỏi trong công nghệ.)', 0 FROM words WHERE word='inevitable';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Suy ra', 'We can infer the result from the data. (Chúng ta có thể suy ra kết quả từ dữ liệu.)', 0 FROM words WHERE word='infer';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Tiêm; bơm vào', 'Doctors inject the vaccine into the arm. (Bác sĩ tiêm vắc-xin vào cánh tay.)', 0 FROM words WHERE word='inject';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Đổi mới, sáng tạo', 'They introduced an innovative solution. (Họ đã giới thiệu một giải pháp đổi mới.)', 0 FROM words WHERE word='innovative';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Hỏi thăm, điều tra', 'She inquired about the job opening. (Cô ấy đã hỏi về vị trí tuyển dụng.)', 0 FROM words WHERE word='inquire';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Sự thấu hiểu sâu sắc', 'His insight helped solve the problem. (Sự thấu hiểu của anh ấy đã giúp giải quyết vấn đề.)', 0 FROM words WHERE word='insight';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Hướng dẫn, chỉ dẫn', 'The coach instructed us to warm up first. (Huấn luyện viên hướng dẫn chúng tôi khởi động trước.)', 0 FROM words WHERE word='instruct';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Nguyên vẹn', 'Most documents remained intact. (Phần lớn tài liệu vẫn nguyên vẹn.)', 0 FROM words WHERE word='intact';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Mãnh liệt', 'They had an intense discussion. (Họ đã có một cuộc thảo luận mãnh liệt.)', 0 FROM words WHERE word='intense';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Can thiệp', 'Please do not interfere in their argument. (Xin đừng can thiệp vào cuộc tranh cãi của họ.)', 0 FROM words WHERE word='interfere';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Nội bộ, bên trong', 'The company conducted an internal review. (Công ty đã tiến hành một cuộc rà soát nội bộ.)', 0 FROM words WHERE word='internal';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Diễn giải, phiên dịch', 'It is hard to interpret this poem. (Thật khó để diễn giải bài thơ này.)', 0 FROM words WHERE word='interpret';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Ngắt lời, làm gián đoạn', 'Sorry to interrupt, but we are late. (Xin lỗi vì ngắt lời, nhưng chúng ta muộn rồi.)', 0 FROM words WHERE word='interrupt';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Khoảng thời gian', 'There was a short interval between sessions. (Có một khoảng nghỉ ngắn giữa các phiên.)', 0 FROM words WHERE word='interval';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Xâm lược, xâm nhập', 'Troops invaded the border region. (Quân đội đã xâm nhập khu vực biên giới.)', 0 FROM words WHERE word='invade';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Cô lập', 'The policy may isolate small businesses. (Chính sách có thể cô lập các doanh nghiệp nhỏ.)', 0 FROM words WHERE word='isolate';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Chung, liên kết', 'They issued a joint statement. (Họ đã đưa ra một tuyên bố chung.)', 0 FROM words WHERE word='joint';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Thuộc tư pháp', 'The case is under judicial review. (Vụ việc đang được xem xét tư pháp.)', 0 FROM words WHERE word='judicial';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Cấp dưới, trẻ hơn', 'She works as a junior analyst. (Cô ấy làm việc với vai trò chuyên viên phân tích cấp dưới.)', 0 FROM words WHERE word='junior';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Công lý, sự công bằng', 'Everyone deserves justice. (Ai cũng xứng đáng được công lý.)', 0 FROM words WHERE word='justice';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Nhiệt tình, sắc bén', 'He is keen to learn new skills. (Anh ấy rất nhiệt tình học kỹ năng mới.)', 0 FROM words WHERE word='keen';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Vương quốc', 'The animal kingdom is diverse. (Thế giới động vật rất đa dạng.)', 0 FROM words WHERE word='kingdom';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Địa danh nổi bật, cột mốc', 'The tower is a city landmark. (Tòa tháp là một địa danh của thành phố.)', 0 FROM words WHERE word='landmark';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Cái sau trong hai cái', 'Of the two options, the latter is cheaper. (Trong hai lựa chọn, phương án sau rẻ hơn.)', 0 FROM words WHERE word='latter';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Lớp, tầng', 'Paint a second layer after it dries. (Sơn lớp thứ hai sau khi lớp đầu khô.)', 0 FROM words WHERE word='layer';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Rò rỉ', 'The pipe started to leak water. (Ống nước bắt đầu rò rỉ.)', 0 FROM words WHERE word='leak';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Nhảy vọt', 'Sales took a leap this quarter. (Doanh số đã tăng vọt trong quý này.)', 0 FROM words WHERE word='leap';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Di sản để lại', 'Her work left a lasting legacy. (Công việc của cô ấy để lại một di sản lâu dài.)', 0 FROM words WHERE word='legacy';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Thời gian rảnh', 'Reading is his favorite leisure activity. (Đọc sách là hoạt động giải trí yêu thích của anh ấy.)', 0 FROM words WHERE word='leisure';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Có trách nhiệm pháp lý', 'Drivers are liable for their actions. (Người lái xe chịu trách nhiệm pháp lý cho hành động của mình.)', 0 FROM words WHERE word='liable';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Tương tự như vậy', 'I enjoy music, and my sister likewise. (Tôi thích âm nhạc, và em gái tôi cũng vậy.)', 0 FROM words WHERE word='likewise';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Theo nghĩa đen', 'Do not take his joke in a literal sense. (Đừng hiểu câu đùa của anh ấy theo nghĩa đen.)', 0 FROM words WHERE word='literal';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Sôi nổi, hoạt bát', 'It is a lively neighborhood. (Đó là một khu phố sôi động.)', 0 FROM words WHERE word='lively';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Nộp (đơn, khiếu nại)', 'They lodged a formal complaint. (Họ đã nộp một đơn khiếu nại chính thức.)', 0 FROM words WHERE word='lodge';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Trung thành', 'The dog remained loyal to its owner. (Con chó vẫn trung thành với chủ.)', 0 FROM words WHERE word='loyal';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Sự xa xỉ', 'For many people, private jets are a luxury. (Với nhiều người, máy bay riêng là một thứ xa xỉ.)', 0 FROM words WHERE word='luxury';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Khổng lồ, to lớn', 'They built a massive data center. (Họ đã xây một trung tâm dữ liệu khổng lồ.)', 0 FROM words WHERE word='massive';
INSERT OR IGNORE INTO definitions (word_id, meaning, example, sort_order) SELECT id, 'Trưởng thành; chín chắn', 'He gave a mature response to criticism. (Anh ấy đã phản hồi chín chắn trước lời chỉ trích.)', 0 FROM words WHERE word='mature';

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

=begin
hiragana_records = [
  { character: 'あ', romaji: 'a' },
  { character: 'い', romaji: 'i' },
  { character: 'う', romaji: 'u' },
  { character: 'え', romaji: 'e' },
  { character: 'お', romaji: 'o' },

  { character: 'か', romaji: 'ka' },
  { character: 'き', romaji: 'ki' },
  { character: 'く', romaji: 'ku' },
  { character: 'け', romaji: 'ke' },
  { character: 'こ', romaji: 'ko' },

  { character: 'さ', romaji: 'sa' },
  { character: 'し', romaji: 'si' },
  { character: 'す', romaji: 'su' },
  { character: 'せ', romaji: 'se' },
  { character: 'そ', romaji: 'so' },

  { character: 'た', romaji: 'ta' },
  { character: 'ち', romaji: 'ti' },
  { character: 'つ', romaji: 'tu' },
  { character: 'て', romaji: 'te' },
  { character: 'と', romaji: 'to' },

  { character: 'な', romaji: 'na' },
  { character: 'に', romaji: 'ni' },
  { character: 'ぬ', romaji: 'nu' },
  { character: 'ね', romaji: 'ne' },
  { character: 'の', romaji: 'no' },

  { character: 'は', romaji: 'ha' },
  { character: 'ひ', romaji: 'hi' },
  { character: 'ふ', romaji: 'fu' },
  { character: 'へ', romaji: 'he' },
  { character: 'ほ', romaji: 'ho' },

  { character: 'ま', romaji: 'ma' },
  { character: 'み', romaji: 'mi' },
  { character: 'む', romaji: 'mu' },
  { character: 'め', romaji: 'me' },
  { character: 'も', romaji: 'mo' },

  { character: 'や', romaji: 'ya' },
  { character: 'ゆ', romaji: 'yu' },
  { character: 'よ', romaji: 'yo' },

  { character: 'ら', romaji: 'ra' },
  { character: 'り', romaji: 'ri' },
  { character: 'る', romaji: 'ru' },
  { character: 'れ', romaji: 're' },
  { character: 'ろ', romaji: 'ro' },

  { character: 'わ', romaji: 'wa' },
  { character: 'を', romaji: 'wo' },

  { character: 'ん', romaji: 'n' },

  { character: 'っ', romaji: 'xtu' },

  { character: 'が', romaji: 'ga' },
  { character: 'ぎ', romaji: 'gi' },
  { character: 'ぐ', romaji: 'gu' },
  { character: 'げ', romaji: 'ge' },
  { character: 'ご', romaji: 'go' },

  { character: 'ざ', romaji: 'za' },
  { character: 'じ', romaji: 'zi' },
  { character: 'ず', romaji: 'zu' },
  { character: 'ぜ', romaji: 'ze' },
  { character: 'ぞ', romaji: 'zo' },

  { character: 'だ', romaji: 'da' },
  { character: 'ぢ', romaji: 'di' },
  { character: 'づ', romaji: 'du' },
  { character: 'で', romaji: 'de' },
  { character: 'ど', romaji: 'do' },

  { character: 'ば', romaji: 'ba' },
  { character: 'び', romaji: 'bi' },
  { character: 'ぶ', romaji: 'bu' },
  { character: 'べ', romaji: 'be' },
  { character: 'ぼ', romaji: 'bo' },

  { character: 'ぱ', romaji: 'pa' },
  { character: 'ぴ', romaji: 'pi' },
  { character: 'ぷ', romaji: 'pu' },
  { character: 'ぺ', romaji: 'pe' },
  { character: 'ぽ', romaji: 'po' },

  { character: 'きゃ', romaji: 'kya' },
  { character: 'きゅ', romaji: 'kyu' },
  { character: 'きょ', romaji: 'kyo' },

  { character: 'しゃ', romaji: 'sha' },
  { character: 'しゅ', romaji: 'shu' },
  { character: 'しょ', romaji: 'sho' },

  { character: 'ちゃ', romaji: 'cha' },
  { character: 'ちゅ', romaji: 'chu' },
  { character: 'ちょ', romaji: 'cho' },

  { character: 'にゃ', romaji: 'nya' },
  { character: 'にゅ', romaji: 'nyu' },
  { character: 'にょ', romaji: 'nyo' },

  { character: 'ひゃ', romaji: 'hya' },
  { character: 'ひゅ', romaji: 'hyu' },
  { character: 'ひょ', romaji: 'hyo' },

  { character: 'みゃ', romaji: 'mya' },
  { character: 'みゅ', romaji: 'myu' },
  { character: 'みょ', romaji: 'myo' },

  { character: 'りゃ', romaji: 'rya' },
  { character: 'りゅ', romaji: 'ryu' },
  { character: 'りょ', romaji: 'ryo' },

  { character: 'ぎゃ', romaji: 'gya' },
  { character: 'ぎゅ', romaji: 'gyu' },
  { character: 'ぎょ', romaji: 'gyo' },

  { character: 'じゃ', romaji: 'ja' },
  { character: 'じゅ', romaji: 'ju' },
  { character: 'じょ', romaji: 'jo' },

  { character: 'ぢゃ', romaji: 'ja' },
  { character: 'ぢゅ', romaji: 'ju' },
  { character: 'ぢょ', romaji: 'jo' },

  { character: 'びゃ', romaji: 'bya' },
  { character: 'びゅ', romaji: 'byu' },
  { character: 'びょ', romaji: 'byo' },

  { character: 'ぴゃ', romaji: 'pya' },
  { character: 'ぴゅ', romaji: 'pyu' },
  { character: 'ぴょ', romaji: 'pyo' }
]

hiragana_records.each do |record|
  Hiragana.create(record)
end

# hiragana_id を取得
hiragana_id_map = Hiragana.all.index_by(&:romaji)

romaji_references = [
  { romaji: 'a', hiragana_id: Hiragana.find_by(character: 'あ').id },
  { romaji: 'i', hiragana_id: Hiragana.find_by(character: 'い').id },
  { romaji: 'u', hiragana_id: Hiragana.find_by(character: 'う').id },
  { romaji: 'e', hiragana_id: Hiragana.find_by(character: 'え').id },
  { romaji: 'o', hiragana_id: Hiragana.find_by(character: 'お').id },
  # か行
  { romaji: 'ka', hiragana_id: Hiragana.find_by(character: 'か').id },
  { romaji: 'ki', hiragana_id: Hiragana.find_by(character: 'き').id },
  { romaji: 'ku', hiragana_id: Hiragana.find_by(character: 'く').id },
  { romaji: 'ke', hiragana_id: Hiragana.find_by(character: 'け').id },
  { romaji: 'ko', hiragana_id: Hiragana.find_by(character: 'こ').id },
  # さ行
  { romaji: 'sa', hiragana_id: Hiragana.find_by(character: 'さ').id },
  { romaji: 'shi', hiragana_id: Hiragana.find_by(character: 'し').id },
  { romaji: 'su', hiragana_id: Hiragana.find_by(character: 'す').id },
  { romaji: 'se', hiragana_id: Hiragana.find_by(character: 'せ').id },
  { romaji: 'so', hiragana_id: Hiragana.find_by(character: 'そ').id },
  # た行
  { romaji: 'ta', hiragana_id: Hiragana.find_by(character: 'た').id },
  { romaji: 'chi', hiragana_id: Hiragana.find_by(character: 'ち').id },
  { romaji: 'tsu', hiragana_id: Hiragana.find_by(character: 'つ').id },
  { romaji: 'te', hiragana_id: Hiragana.find_by(character: 'て').id },
  { romaji: 'to', hiragana_id: Hiragana.find_by(character: 'と').id },
  # な行
  { romaji: 'na', hiragana_id: Hiragana.find_by(character: 'な').id },
  { romaji: 'ni', hiragana_id: Hiragana.find_by(character: 'に').id },
  { romaji: 'nu', hiragana_id: Hiragana.find_by(character: 'ぬ').id },
  { romaji: 'ne', hiragana_id: Hiragana.find_by(character: 'ね').id },
  { romaji: 'no', hiragana_id: Hiragana.find_by(character: 'の').id },
  # は行
  { romaji: 'ha', hiragana_id: Hiragana.find_by(character: 'は').id },
  { romaji: 'hi', hiragana_id: Hiragana.find_by(character: 'ひ').id },
  { romaji: 'fu', hiragana_id: Hiragana.find_by(character: 'ふ').id },
  { romaji: 'he', hiragana_id: Hiragana.find_by(character: 'へ').id },
  { romaji: 'ho', hiragana_id: Hiragana.find_by(character: 'ほ').id },
  # ま行
  { romaji: 'ma', hiragana_id: Hiragana.find_by(character: 'ま').id },
  { romaji: 'mi', hiragana_id: Hiragana.find_by(character: 'み').id },
  { romaji: 'mu', hiragana_id: Hiragana.find_by(character: 'む').id },
  { romaji: 'me', hiragana_id: Hiragana.find_by(character: 'め').id },
  { romaji: 'mo', hiragana_id: Hiragana.find_by(character: 'も').id },
  # や行
  { romaji: 'ya', hiragana_id: Hiragana.find_by(character: 'や').id },
  { romaji: 'yu', hiragana_id: Hiragana.find_by(character: 'ゆ').id },
  { romaji: 'yo', hiragana_id: Hiragana.find_by(character: 'よ').id },
  # ら行
  { romaji: 'ra', hiragana_id: Hiragana.find_by(character: 'ら').id },
  { romaji: 'ri', hiragana_id: Hiragana.find_by(character: 'り').id },
  { romaji: 'ru', hiragana_id: Hiragana.find_by(character: 'る').id },
  { romaji: 're', hiragana_id: Hiragana.find_by(character: 'れ').id },
  { romaji: 'ro', hiragana_id: Hiragana.find_by(character: 'ろ').id },
  # わ行
  { romaji: 'wa', hiragana_id: Hiragana.find_by(character: 'わ').id },
  { romaji: 'wo', hiragana_id: Hiragana.find_by(character: 'を').id },
  # ん行
  { romaji: 'n', hiragana_id: Hiragana.find_by(character: 'ん').id },
  # が行
  { romaji: 'ga', hiragana_id: Hiragana.find_by(character: 'が').id },
  { romaji: 'gi', hiragana_id: Hiragana.find_by(character: 'ぎ').id },
  { romaji: 'gu', hiragana_id: Hiragana.find_by(character: 'ぐ').id },
  { romaji: 'ge', hiragana_id: Hiragana.find_by(character: 'げ').id },
  { romaji: 'go', hiragana_id: Hiragana.find_by(character: 'ご').id },
  # ざ行
  { romaji: 'za', hiragana_id: Hiragana.find_by(character: 'ざ').id },
  { romaji: 'zi', hiragana_id: Hiragana.find_by(character: 'じ').id },
  { romaji: 'zu', hiragana_id: Hiragana.find_by(character: 'ず').id },
  { romaji: 'ze', hiragana_id: Hiragana.find_by(character: 'ぜ').id },
  { romaji: 'zo', hiragana_id: Hiragana.find_by(character: 'ぞ').id },
  # だ行
  { romaji: 'da', hiragana_id: Hiragana.find_by(character: 'だ').id },
  { romaji: 'di', hiragana_id: Hiragana.find_by(character: 'ぢ').id },
  { romaji: 'du', hiragana_id: Hiragana.find_by(character: 'づ').id },
  { romaji: 'de', hiragana_id: Hiragana.find_by(character: 'で').id },
  { romaji: 'do', hiragana_id: Hiragana.find_by(character: 'ど').id },
  # ば行
  { romaji: 'ba', hiragana_id: Hiragana.find_by(character: 'ば').id },
  { romaji: 'bi', hiragana_id: Hiragana.find_by(character: 'び').id },
  { romaji: 'bu', hiragana_id: Hiragana.find_by(character: 'ぶ').id },
  { romaji: 'be', hiragana_id: Hiragana.find_by(character: 'べ').id },
  { romaji: 'bo', hiragana_id: Hiragana.find_by(character: 'ぼ').id },
  # ぱ行
  { romaji: 'pa', hiragana_id: Hiragana.find_by(character: 'ぱ').id },
  { romaji: 'pi', hiragana_id: Hiragana.find_by(character: 'ぴ').id },
  { romaji: 'pu', hiragana_id: Hiragana.find_by(character: 'ぷ').id },
  { romaji: 'pe', hiragana_id: Hiragana.find_by(character: 'ぺ').id },
  { romaji: 'po', hiragana_id: Hiragana.find_by(character: 'ぽ').id },
  # きゃ行
  { romaji: 'kya', hiragana_id: Hiragana.find_by(character: 'きゃ').id },
  { romaji: 'kyu', hiragana_id: Hiragana.find_by(character: 'きゅ').id },
  { romaji: 'kyo', hiragana_id: Hiragana.find_by(character: 'きょ').id },
  # しゃ行
  { romaji: 'sha', hiragana_id: Hiragana.find_by(character: 'しゃ').id },
  { romaji: 'shu', hiragana_id: Hiragana.find_by(character: 'しゅ').id },
  { romaji: 'sho', hiragana_id: Hiragana.find_by(character: 'しょ').id },
  # ちゃ行
  { romaji: 'cha', hiragana_id: Hiragana.find_by(character: 'ちゃ').id },
  { romaji: 'chu', hiragana_id: Hiragana.find_by(character: 'ちゅ').id },
  { romaji: 'cho', hiragana_id: Hiragana.find_by(character: 'ちょ').id },
  # にゃ行
  { romaji: 'nya', hiragana_id: Hiragana.find_by(character: 'にゃ').id },
  { romaji: 'nyu', hiragana_id: Hiragana.find_by(character: 'にゅ').id },
  { romaji: 'nyo', hiragana_id: Hiragana.find_by(character: 'にょ').id },
  # ひゃ行
  { romaji: 'hya', hiragana_id: Hiragana.find_by(character: 'ひゃ').id },
  { romaji: 'hyu', hiragana_id: Hiragana.find_by(character: 'ひゅ').id },
  { romaji: 'hyo', hiragana_id: Hiragana.find_by(character: 'ひょ').id },
  # みゃ行
  { romaji: 'mya', hiragana_id: Hiragana.find_by(character: 'みゃ').id },
  { romaji: 'myu', hiragana_id: Hiragana.find_by(character: 'みゅ').id },
  { romaji: 'myo', hiragana_id: Hiragana.find_by(character: 'みょ').id },
  # りゃ行
  { romaji: 'rya', hiragana_id: Hiragana.find_by(character: 'りゃ').id },
  { romaji: 'ryu', hiragana_id: Hiragana.find_by(character: 'りゅ').id },
  { romaji: 'ryo', hiragana_id: Hiragana.find_by(character: 'りょ').id },
  # ぎゃ行
  { romaji: 'gya', hiragana_id: Hiragana.find_by(character: 'ぎゃ').id },
  { romaji: 'gyu', hiragana_id: Hiragana.find_by(character: 'ぎゅ').id },
  { romaji: 'gyo', hiragana_id: Hiragana.find_by(character: 'ぎょ').id },
  # じゃ行
  { romaji: 'ja', hiragana_id: Hiragana.find_by(character: 'じゃ').id },
  { romaji: 'ju', hiragana_id: Hiragana.find_by(character: 'じゅ').id },
  { romaji: 'jo', hiragana_id: Hiragana.find_by(character: 'じょ').id },
  # びゃ行
  { romaji: 'bya', hiragana_id: Hiragana.find_by(character: 'びゃ').id },
  { romaji: 'byu', hiragana_id: Hiragana.find_by(character: 'びゅ').id },
  { romaji: 'byo', hiragana_id: Hiragana.find_by(character: 'びょ').id },
  # ぴゃ行
  { romaji: 'pya', hiragana_id: Hiragana.find_by(character: 'ぴゃ').id },
  { romaji: 'pyu', hiragana_id: Hiragana.find_by(character: 'ぴゅ').id },
  { romaji: 'pyo', hiragana_id: Hiragana.find_by(character: 'ぴょ').id },
]

hiragana_lao_records = [
  { case_type: 'normal', lao: 'ອາ', romaji: 'a' },  # あ
  { case_type: 'short', lao: 'ອະ', romaji: 'a' },   # あ (短母音)
  { case_type: 'special_case', lao: 'ອັ', romaji: 'a' }, # あ (特殊ケース)
  { case_type: 'normal', lao: 'ອີ', romaji: 'i' },  # い
  { case_type: 'short', lao: 'ອິ', romaji: 'i' },   # い (短母音)
  { case_type: 'special_case', lao: 'ອິ', romaji: 'i' }, # い (特殊ケース)
  { case_type: 'normal', lao: 'ອູ', romaji: 'u' },  # う
  { case_type: 'short', lao: 'ອຸ', romaji: 'u' },   # う (短母音)
  { case_type: 'special_case', lao: 'ອຸ', romaji: 'u' }, # う (特殊ケース)
  { case_type: 'normal', lao: 'ເອ', romaji: 'e' },  # え
  { case_type: 'short', lao: 'ເອະ', romaji: 'e' },  # え (短母音)
  { case_type: 'special_case', lao: 'ເອັ', romaji: 'e' }, # え (特殊ケース)
  { case_type: 'normal', lao: 'ໂອ', romaji: 'o' },  # お
  { case_type: 'short', lao: 'ໂອະ', romaji: 'o' },  # お (短母音)
  { case_type: 'special_case', lao: 'ອົ', romaji: 'o' }, # お (特殊ケース)

  # か行
  { case_type: 'normal', lao: 'ຄາ', romaji: 'ka' }, # か
  { case_type: 'short', lao: 'ຄະ', romaji: 'ka' },  # か (短母音)
  { case_type: 'special_case', lao: 'ຄັ', romaji: 'ka' }, # か (特殊ケース)
  { case_type: 'normal', lao: 'ຄີ', romaji: 'ki' }, # き
  { case_type: 'short', lao: 'ຄິ', romaji: 'ki' },  # き (短母音)
  { case_type: 'special_case', lao: 'ຄິ', romaji: 'ki' }, # き (特殊ケース)
  { case_type: 'normal', lao: 'ຄູ', romaji: 'ku' }, # く
  { case_type: 'short', lao: 'ຄຸ', romaji: 'ku' },  # く (短母音)
  { case_type: 'special_case', lao: 'ຄຸ', romaji: 'ku' }, # く (特殊ケース)
  { case_type: 'normal', lao: 'ເຄ', romaji: 'ke' }, # け
  { case_type: 'short', lao: 'ເຄະ', romaji: 'ke' },  # け (短母音)
  { case_type: 'special_case', lao: 'ເຄັ', romaji: 'ke' }, # け (特殊ケース)
  { case_type: 'normal', lao: 'ໂຄ', romaji: 'ko' }, # こ
  { case_type: 'short', lao: 'ໂຄະ', romaji: 'ko' },  # こ (短母音)
  { case_type: 'special_case', lao: 'ຄົ', romaji: 'ko' }, # こ (特殊ケース)

  # さ行
  { case_type: 'normal', lao: 'ຊາ', romaji: 'sa' }, # さ
  { case_type: 'short', lao: 'ຊະ', romaji: 'sa' },  # さ (短母音)
  { case_type: 'special_case', lao: 'ຊັ', romaji: 'sa' }, # さ (特殊ケース)
  { case_type: 'normal', lao: 'ຊີ', romaji: 'si' }, # し
  { case_type: 'short', lao: 'ຊິ', romaji: 'si' },  # し (短母音)
  { case_type: 'special_case', lao: 'ຊິ', romaji: 'si' }, # し (特殊ケース)
  { case_type: 'normal', lao: 'ຊູ', romaji: 'su' }, # す
  { case_type: 'short', lao: 'ຊຸ', romaji: 'su' },  # す (短母音)
  { case_type: 'special_case', lao: 'ຊຸ', romaji: 'su' }, # す (特殊ケース)
  { case_type: 'normal', lao: 'ເຊ', romaji: 'se' }, # せ
  { case_type: 'short', lao: 'ເຊະ', romaji: 'se' },  # せ (短母音)
  { case_type: 'special_case', lao: 'ເຊັ', romaji: 'se' }, # せ (特殊ケース)
  { case_type: 'normal', lao: 'ໂຊ', romaji: 'so' }, # そ
  { case_type: 'short', lao: 'ໂຊະ', romaji: 'so' },  # そ (短母音)
  { case_type: 'special_case', lao: 'ຊົ', romaji: 'so' }, # そ (特殊ケース)

  # た行
  { case_type: 'normal', lao: 'ຕາ', romaji: 'ta' }, # た
  { case_type: 'short', lao: 'ຕະ', romaji: 'ta' },  # た (短母音)
  { case_type: 'special_case', lao: 'ຕັ', romaji: 'ta' }, # た (特殊ケース)
  { case_type: 'normal', lao: 'ຈີ', romaji: 'ti' }, # ち
  { case_type: 'short', lao: 'ຈິ', romaji: 'ti' },  # ち (短母音)
  { case_type: 'special_case', lao: 'ຈີ', romaji: 'ti' }, # ち (特殊ケース)
  { case_type: 'normal', lao: 'ສູ', romaji: 'tu' }, # つ
  { case_type: 'short', lao: 'ສຸ', romaji: 'tu' },  # つ (短母音)
  { case_type: 'special_case', lao: 'ສຸ', romaji: 'tu' }, # つ (特殊ケース)
  { case_type: 'normal', lao: 'ເຕ', romaji: 'te' }, # て
  { case_type: 'short', lao: 'ເຕະ', romaji: 'te' },  # て (短母音)
  { case_type: 'special_case', lao: 'ເຕັ', romaji: 'te' }, # て (特殊ケース)
  { case_type: 'normal', lao: 'ໂຕ', romaji: 'to' }, # と
  { case_type: 'short', lao: 'ໂຕະ', romaji: 'to' },  # と (短母音)
  { case_type: 'special_case', lao: 'ຕົ', romaji: 'to' }, # と (特殊ケース)

  # な行
  { case_type: 'normal', lao: 'ນາ', romaji: 'na' }, # な
  { case_type: 'short', lao: 'ນະ', romaji: 'na' },  # な (短母音)
  { case_type: 'special_case', lao: 'ນັ', romaji: 'na' }, # な (特殊ケース)
  { case_type: 'normal', lao: 'ນີ', romaji: 'ni' }, # に
  { case_type: 'short', lao: 'ນິ', romaji: 'ni' },  # に (短母音)
  { case_type: 'special_case', lao: 'ນິ', romaji: 'ni' }, # に (特殊ケース)
  { case_type: 'normal', lao: 'ນູ', romaji: 'nu' }, # ぬ
  { case_type: 'short', lao: 'ນຸ', romaji: 'nu' },  # ぬ (短母音)
  { case_type: 'special_case', lao: 'ນຸ', romaji: 'nu' }, # ぬ (特殊ケース)
  { case_type: 'normal', lao: 'ເນ', romaji: 'ne' }, # ね
  { case_type: 'short', lao: 'ເນະ', romaji: 'ne' },  # ね (短母音)
  { case_type: 'special_case', lao: 'ເນັ', romaji: 'ne' }, # ね (特殊ケース)
  { case_type: 'normal', lao: 'ໂນ', romaji: 'no' }, # の
  { case_type: 'short', lao: 'ໂນະ', romaji: 'no' },  # の (短母音)
  { case_type: 'special_case', lao: 'ນົ', romaji: 'no' }, # の (特殊ケース)

  # は行
  { case_type: 'normal', lao: 'ຫາ', romaji: 'ha' },  # は
  { case_type: 'short', lao: 'ຫະ', romaji: 'ha' },  # は (短)
  { case_type: 'special_case', lao: 'ຫັ', romaji: 'ha' },  # は (特別)
  { case_type: 'normal', lao: 'ຫີ', romaji: 'hi' },  # ひ
  { case_type: 'short', lao: 'ຫິ', romaji: 'hi' },  # ひ (短)
  { case_type: 'special_case', lao: 'ຫິ', romaji: 'hi' },  # ひ (特別)
  { case_type: 'normal', lao: 'ຫູ', romaji: 'hu' },  # ふ
  { case_type: 'short', lao: 'ຫຸ', romaji: 'hu' },  # ふ (短)
  { case_type: 'special_case', lao: 'ຫຸ', romaji: 'hu' },  # ふ (特別)
  { case_type: 'normal', lao: 'ເຮ', romaji: 'he' },  # へ
  { case_type: 'short', lao: 'ເຮະ', romaji: 'he' },  # へ (短)
  { case_type: 'special_case', lao: 'ເຮັ', romaji: 'he' },  # へ (特別)
  { case_type: 'normal', lao: 'ໂຮ', romaji: 'ho' },  # ほ
  { case_type: 'short', lao: 'ໂຮະ', romaji: 'ho' },  # ほ (短)
  { case_type: 'special_case', lao: 'ຮົ', romaji: 'ho' },  # ほ (特別)

  # ま行
  { case_type: 'normal', lao: 'ມາ', romaji: 'ma' },  # ま
  { case_type: 'short', lao: 'ມະ', romaji: 'ma' },  # ま (短)
  { case_type: 'special_case', lao: 'ມັ', romaji: 'ma' },  # ま (特別)
  { case_type: 'normal', lao: 'ມີ', romaji: 'mi' },  # み
  { case_type: 'short', lao: 'ມິ', romaji: 'mi' },  # み (短)
  { case_type: 'special_case', lao: 'ມິ', romaji: 'mi' },  # み (特別)
  { case_type: 'normal', lao: 'ມູ', romaji: 'mu' },  # む
  { case_type: 'short', lao: 'ມຸ', romaji: 'mu' },  # む (短)
  { case_type: 'special_case', lao: 'ມຸ', romaji: 'mu' },  # む (特別)
  { case_type: 'normal', lao: 'ເມ', romaji: 'me' },  # め
  { case_type: 'short', lao: 'ເມະ', romaji: 'me' },  # め (短)
  { case_type: 'special_case', lao: 'ເມັ', romaji: 'me' },  # め (特別)
  { case_type: 'normal', lao: 'ໂມ', romaji: 'mo' },  # も
  { case_type: 'short', lao: 'ໂມະ', romaji: 'mo' },  # も (短)
  { case_type: 'special_case', lao: 'ມົ', romaji: 'mo' },  # も (特別)

  # や行
  { case_type: 'normal', lao: 'ຢາ', romaji: 'ya' },  # や
  { case_type: 'short', lao: 'ຢະ', romaji: 'ya' },  # や (短)
  { case_type: 'special_case', lao: 'ຢັ', romaji: 'ya' },  # や (特別)
  { case_type: 'normal', lao: 'ຢູ', romaji: 'yu' },  # ゆ
  { case_type: 'short', lao: 'ຢຸ', romaji: 'yu' },  # ゆ (短)
  { case_type: 'special_case', lao: 'ຢຸ', romaji: 'yu' },  # ゆ (特別)
  { case_type: 'normal', lao: 'ຢົ', romaji: 'yo' },  # よ
  { case_type: 'short', lao: 'ຢົະ', romaji: 'yo' },  # よ (短)
  { case_type: 'special_case', lao: 'ຢົ', romaji: 'yo' },  # よ (特別)

  # ら行
  { case_type: 'normal', lao: 'ລາ', romaji: 'ra' },  # ら
  { case_type: 'short', lao: 'ລະ', romaji: 'ra' },  # ら (短)
  { case_type: 'special_case', lao: 'ລັ', romaji: 'ra' },  # ら (特別)
  { case_type: 'normal', lao: 'ລີ', romaji: 'ri' },  # り
  { case_type: 'short', lao: 'ລິ', romaji: 'ri' },  # り (短)
  { case_type: 'special_case', lao: 'ລິ', romaji: 'ri' },  # り (特別)
  { case_type: 'normal', lao: 'ລູ', romaji: 'ru' },  # る
  { case_type: 'short', lao: 'ລຸ', romaji: 'ru' },  # る (短)
  { case_type: 'special_case', lao: 'ລຸ', romaji: 'ru' },  # る (特別)
  { case_type: 'normal', lao: 'ເຣ', romaji: 're' },  # れ
  { case_type: 'short', lao: 'ເຣະ', romaji: 're' },  # れ (短)
  { case_type: 'special_case', lao: 'ເຣັ', romaji: 're' },  # れ (特別)
  { case_type: 'normal', lao: 'ໂຣ', romaji: 'ro' },  # ろ
  { case_type: 'short', lao: 'ໂຣະ', romaji: 'ro' },  # ろ (短)
  { case_type: 'special_case', lao: 'ຣົ', romaji: 'ro' },  # ろ (特別)

  # わ行
  { case_type: 'normal', lao: 'ວາ', romaji: 'wa' },  # わ
  { case_type: 'short', lao: 'ວະ', romaji: 'wa' },  # わ (短)
  { case_type: 'special_case', lao: 'ວັ', romaji: 'wa' },  # わ (特別)
  { case_type: 'normal', lao: 'ວົ', romaji: 'wo' },  # を
  { case_type: 'short', lao: 'ວະ', romaji: 'wo' },  # を (短)
  { case_type: 'special_case', lao: 'ວັ', romaji: 'wo' },  # を (特別)
  { case_type: 'normal', lao: 'ນ', romaji: 'n' },  # ん
  { case_type: 'short', lao: 'ນ', romaji: 'n' },  # ん (短)
  { case_type: 'special_case', lao: 'ນ', romaji: 'n' },  # ん (特別)

  # が行
  { case_type: 'normal', lao: 'ກາ', romaji: 'ga' },  # が
  { case_type: 'short', lao: 'ກະ', romaji: 'ga' },  # が
  { case_type: 'special_case', lao: 'ກັ', romaji: 'ga' },  # が
  { case_type: 'normal', lao: 'ກິ', romaji: 'gi' },  # ぎ
  { case_type: 'short', lao: 'ກິ', romaji: 'gi' },  # ぎ
  { case_type: 'special_case', lao: 'ກິ', romaji: 'gi' },  # ぎ
  { case_type: 'normal', lao: 'ກູ', romaji: 'gu' },  # ぐ
  { case_type: 'short', lao: 'ກຸ', romaji: 'gu' },  # ぐ
  { case_type: 'special_case', lao: 'ກຸ', romaji: 'gu' },  # ぐ
  { case_type: 'normal', lao: 'ເກ', romaji: 'ge' },  # げ
  { case_type: 'short', lao: 'ເກະ', romaji: 'ge' },  # げ
  { case_type: 'special_case', lao: 'ເກັ', romaji: 'ge' },  # げ
  { case_type: 'normal', lao: 'ໂກ', romaji: 'go' },  # ご
  { case_type: 'short', lao: 'ໂກະ', romaji: 'go' },  # ご
  { case_type: 'special_case', lao: 'ກົ', romaji: 'go' },  # ご

  # ざ行
  { case_type: 'normal', lao: 'ຊາ', romaji: 'za' },  # ざ
  { case_type: 'short', lao: 'ຊະ', romaji: 'za' },  # ざ
  { case_type: 'special_case', lao: 'ຊັ', romaji: 'za' },  # ざ
  { case_type: 'normal', lao: 'ຈີ', romaji: 'zi' },  # じ
  { case_type: 'short', lao: 'ຈິ', romaji: 'zi' },  # じ
  { case_type: 'special_case', lao: 'ຈິ', romaji: 'zi' },  # じ
  { case_type: 'normal', lao: 'ຊູ', romaji: 'zu' },  # ず
  { case_type: 'short', lao: 'ຊຸ', romaji: 'zu' },  # ず
  { case_type: 'special_case', lao: 'ຊຸ', romaji: 'zu' },  # ず
  { case_type: 'normal', lao: 'ເຊ', romaji: 'ze' },  # ぜ
  { case_type: 'short', lao: 'ເຊະ', romaji: 'ze' },  # ぜ
  { case_type: 'special_case', lao: 'ເຊັ', romaji: 'ze' },  # ぜ
  { case_type: 'normal', lao: 'ໂຊ', romaji: 'zo' },  # ぞ
  { case_type: 'short', lao: 'ໂຊະ', romaji: 'zo' },  # ぞ
  { case_type: 'special_case', lao: 'ຊົ', romaji: 'zo' },  # ぞ

  # だ行
  { case_type: 'normal', lao: 'ດາ', romaji: 'da' },  # だ
  { case_type: 'short', lao: 'ດະ', romaji: 'da' },  # だ
  { case_type: 'special_case', lao: 'ນັ', romaji: 'da' },  # だ
  { case_type: 'normal', lao: 'ຈີ', romaji: 'di' },  # ぢ
  { case_type: 'short', lao: 'ຈິ', romaji: 'di' },  # ぢ
  { case_type: 'special_case', lao: 'ຈິ', romaji: 'di' },  # ぢ
  { case_type: 'normal', lao: 'ຊູ', romaji: 'du' },  # づ
  { case_type: 'short', lao: 'ຊຸ', romaji: 'du' },  # づ
  { case_type: 'special_case', lao: 'ຊຸ', romaji: 'du' },  # づ
  { case_type: 'normal', lao: 'ເດ', romaji: 'de' },  # で
  { case_type: 'short', lao: 'ເດະ', romaji: 'de' },  # で
  { case_type: 'special_case', lao: 'ເດັ', romaji: 'de' },  # で
  { case_type: 'normal', lao: 'ໂດ', romaji: 'do' },  # ど
  { case_type: 'short', lao: 'ໂດະ', romaji: 'do' },  # ど
  { case_type: 'special_case', lao: 'ດົ', romaji: 'do' },  # ど

  # ば行
  { case_type: 'normal', lao: 'ບາ', romaji: 'ba' },  # ば
  { case_type: 'short', lao: 'ບະ', romaji: 'ba' },  # ば
  { case_type: 'special_case', lao: 'ບັ', romaji: 'ba' },  # ば
  { case_type: 'normal', lao: 'ບີ', romaji: 'bi' },  # び
  { case_type: 'short', lao: 'ບິ', romaji: 'bi' },  # び
  { case_type: 'special_case', lao: 'ບິ', romaji: 'bi' },  # び
  { case_type: 'normal', lao: 'ບູ', romaji: 'bu' },  # ぶ
  { case_type: 'short', lao: 'ບຸ', romaji: 'bu' },  # ぶ
  { case_type: 'special_case', lao: 'ບຸ', romaji: 'bu' },  # ぶ
  { case_type: 'normal', lao: 'ເບ', romaji: 'be' },  # べ
  { case_type: 'short', lao: 'ເບະ', romaji: 'be' },  # べ
  { case_type: 'special_case', lao: 'ເບັ', romaji: 'be' },  # べ
  { case_type: 'normal', lao: 'ໂບ', romaji: 'bo' },  # ぼ
  { case_type: 'short', lao: 'ໂບະ', romaji: 'bo' },  # ぼ
  { case_type: 'special_case', lao: 'ບົ', romaji: 'bo' },  # ぼ

  # ぱ行
  { case_type: 'normal', lao: 'ປາ', romaji: 'pa' },  # ぱ
  { case_type: 'short', lao: 'ປະ', romaji: 'pa' },  # ぱ
  { case_type: 'special_case', lao: 'ປັ', romaji: 'pa' },  # ぱ
  { case_type: 'normal', lao: 'ປິ', romaji: 'pi' },  # ぴ
  { case_type: 'short', lao: 'ປິ', romaji: 'pi' },  # ぴ
  { case_type: 'special_case', lao: 'ປິ', romaji: 'pi' },  # ぴ
  { case_type: 'normal', lao: 'ປູ', romaji: 'pu' },  # ぷ
  { case_type: 'short', lao: 'ປຸ', romaji: 'pu' },  # ぷ
  { case_type: 'special_case', lao: 'ປຸ', romaji: 'pu' },  # ぷ
  { case_type: 'normal', lao: 'ເພ', romaji: 'pe' },  # ぺ
  { case_type: 'short', lao: 'ເພະ', romaji: 'pe' },  # ぺ
  { case_type: 'special_case', lao: 'ເພັ', romaji: 'pe' },  # ぺ
  { case_type: 'normal', lao: 'ໂປ', romaji: 'po' },  # ぽ
  { case_type: 'short', lao: 'ໂປະ', romaji: 'po' },  # ぽ
  { case_type: 'special_case', lao: 'ປົ', romaji: 'po' }  # ぽ

  # きゃ行
  { case_type: 'normal', lao: 'ເຄຍ', romaji: 'kya' },  # きゃ
  { case_type: 'short', lao: 'ເຄັຍ', romaji: 'kya' },   # きゃ
  { case_type: 'special_case', lao: 'ເຄັຍ', romaji: 'kya' }, # きゃ
  { case_type: 'normal', lao: 'ຄີວ', romaji: 'kyu' },  # きゅ
  { case_type: 'short', lao: 'ຄິວ', romaji: 'kyu' },   # きゅ
  { case_type: 'special_case', lao: 'ຄິວ', romaji: 'kyu' }, # きゅ
  { case_type: 'normal', lao: 'ຄຽວ', romaji: 'kyo' },  # きょ
  { case_type: 'short', lao: 'ຄຽວ', romaji: 'kyo' },   # きょ
  { case_type: 'special_case', lao: 'ຄຽວ', romaji: 'kyo' }, # きょ

  # しゃ行
  { case_type: 'normal', lao: 'ເຊຍ', romaji: 'sha' },  # しゃ
  { case_type: 'short', lao: 'ເຊັຍ', romaji: 'sha' },   # しゃ
  { case_type: 'special_case', lao: 'ຊຽ', romaji: 'sha' }, # しゃ
  { case_type: 'normal', lao: 'ຊີວ', romaji: 'shu' },  # しゅ
  { case_type: 'short', lao: 'ຊິວ', romaji: 'shu' },   # しゅ
  { case_type: 'special_case', lao: 'ຊິວ', romaji: 'shu' }, # しゅ
  { case_type: 'normal', lao: 'ຊຽວ', romaji: 'sho' },  # しょ
  { case_type: 'short', lao: 'ຊຽວ', romaji: 'sho' },   # しょ
  { case_type: 'special_case', lao: 'ຊຽວ', romaji: 'sho' }, # しょ

  # ちゃ行
  { case_type: 'normal', lao: 'ຈາ', romaji: 'cha' },  # ちゃ
  { case_type: 'short', lao: 'ຈະ', romaji: 'cha' },   # ちゃ
  { case_type: 'special_case', lao: 'ຈັ', romaji: 'cha' }, # ちゃ
  { case_type: 'normal', lao: 'ຈູ', romaji: 'chu' },  # ちゅ
  { case_type: 'short', lao: 'ຈຸ', romaji: 'chu' },   # ちゅ
  { case_type: 'special_case', lao: 'ຈຸ', romaji: 'chu' }, # ちゅ
  { case_type: 'normal', lao: 'ໂຈ', romaji: 'cho' },  # ちょ
  { case_type: 'short', lao: 'ໂຈະ', romaji: 'cho' },   # ちょ
  { case_type: 'special_case', lao: 'ຈົ', romaji: 'cho' }, # ちょ

  # にゃ行
  { case_type: 'normal', lao: 'ຍາ', romaji: 'nya' },  # にゃ
  { case_type: 'short', lao: 'ຍະ', romaji: 'nya' },   # にゃ
  { case_type: 'special_case', lao: 'ຍັ', romaji: 'nya' }, # にゃ
  { case_type: 'normal', lao: 'ຍູ', romaji: 'nyu' },  # にゅ
  { case_type: 'short', lao: 'ຍຸ', romaji: 'nyu' },   # にゅ
  { case_type: 'special_case', lao: 'ຍຸ', romaji: 'nyu' }, # にゅ
  { case_type: 'normal', lao: 'ໂຍ', romaji: 'nyo' },  # にょ
  { case_type: 'short', lao: 'ໂຍະ', romaji: 'nyo' },   # にょ
  { case_type: 'special_case', lao: 'ຍົ', romaji: 'nyo' }, # にょ

  # ひゃ行
  { case_type: 'normal', lao: 'ເຮຍ', romaji: 'hya' },  # ひゃ
  { case_type: 'short', lao: 'ເຮັຍ', romaji: 'hya' },   # ひゃ
  { case_type: 'special_case', lao: 'ຮຽ', romaji: 'hya' }, # ひゃ
  { case_type: 'normal', lao: 'ຮີວ', romaji: 'hyu' },  # ひゅ
  { case_type: 'short', lao: 'ຮິວ', romaji: 'hyu' },   # ひゅ
  { case_type: 'special_case', lao: 'ຮິວ', romaji: 'hyu' }, # ひゅ
  { case_type: 'normal', lao: 'ຮຽວ', romaji: 'hyo' },  # ひょ
  { case_type: 'short', lao: 'ຮຽວ', romaji: 'hyo' },   # ひょ
  { case_type: 'special_case', lao: 'ຮຽວ', romaji: 'hyo' }, # ひょ

  # みゃ行
  { case_type: 'normal', lao: 'ເມຍ', romaji: 'mya' },  # みゃ
  { case_type: 'short', lao: 'ເມັຍ', romaji: 'mya' },   # みゃ
  { case_type: 'special_case', lao: 'ມຽ', romaji: 'mya' }, # みゃ
  { case_type: 'normal', lao: 'ມີວ', romaji: 'myu' },  # みゅ
  { case_type: 'short', lao: 'ມິວ', romaji: 'myu' },   # みゅ
  { case_type: 'special_case', lao: 'ມິວ', romaji: 'myu' }, # みゅ
  { case_type: 'normal', lao: 'ມຽວ', romaji: 'myo' },  # みょ
  { case_type: 'short', lao: 'ມຽວ', romaji: 'myo' },   # みょ
  { case_type: 'special_case', lao: 'ມຽວ', romaji: 'myo' }, # みょ

  # りゃ行
  { case_type: 'normal', lao: 'ລາ', romaji: 'rya' },  # りゃ
  { case_type: 'short', lao: 'ລະ', romaji: 'rya' },   # りゃ
  { case_type: 'special_case', lao: 'ລັ', romaji: 'rya' }, # りゃ
  { case_type: 'normal', lao: 'ລູ', romaji: 'ryu' },  # りゅ
  { case_type: 'short', lao: 'ລຸ', romaji: 'ryu' },   # りゅ
  { case_type: 'special_case', lao: 'ລຸ', romaji: 'ryu' }, # りゅ
  { case_type: 'normal', lao: 'ໂຣ', romaji: 'ryo' },  # りょ
  { case_type: 'short', lao: 'ໂລ', romaji: 'ryo' },   # りょ
  { case_type: 'special_case', lao: 'ລົ', romaji: 'ryo' }, # りょ

  # ぎゃ行
  { case_type: 'normal', lao: 'ເກຍ', romaji: 'gya' },  # ぎゃ
  { case_type: 'short', lao: 'ເກັຍ', romaji: 'gya' },   # ぎゃ
  { case_type: 'special_case', lao: 'ກຽ', romaji: 'gya' },  # ぎゃ
  { case_type: 'normal', lao: 'ກີວ', romaji: 'gyu' },  # ぎゅ
  { case_type: 'short', lao: 'ກິວ', romaji: 'gyu' },   # ぎゅ
  { case_type: 'special_case', lao: 'ກິວ', romaji: 'gyu' },  # ぎゅ
  { case_type: 'normal', lao: 'ກຽວ', romaji: 'gyo' },  # ぎょ
  { case_type: 'short', lao: 'ກຽວ', romaji: 'gyo' },   # ぎょ
  { case_type: 'special_case', lao: 'ກຽວ', romaji: 'gyo' },  # ぎょ

  # じゃ行
  { case_type: 'normal', lao: 'ຈາ', romaji: 'ja' },  # じゃ
  { case_type: 'short', lao: 'ຈະ', romaji: 'ja' },   # じゃ
  { case_type: 'special_case', lao: 'ຈັ', romaji: 'ja' },  # じゃ
  { case_type: 'normal', lao: 'ຈູ', romaji: 'ju' },  # じゅ
  { case_type: 'short', lao: 'ຈຸ', romaji: 'ju' },   # じゅ
  { case_type: 'special_case', lao: 'ຈຸ', romaji: 'ju' },  # じゅ
  { case_type: 'normal', lao: 'ໂຈ', romaji: 'jo' },  # じょ
  { case_type: 'short', lao: 'ໂຈະ', romaji: 'jo' },   # じょ
  { case_type: 'special_case', lao: 'ຈົ', romaji: 'jo' },  # じょ

  # びゃ行
  { case_type: 'normal', lao: 'ເບຍ', romaji: 'bya' },  # びゃ
  { case_type: 'short', lao: 'ເບັຍ', romaji: 'bya' },   # びゃ
  { case_type: 'special_case', lao: 'ບຽ', romaji: 'bya' },  # びゃ
  { case_type: 'normal', lao: 'ບິວ', romaji: 'byu' },  # びゅ
  { case_type: 'short', lao: 'ບິວ', romaji: 'byu' },   # びゅ
  { case_type: 'special_case', lao: 'ບິວ', romaji: 'byu' },  # びゅ
  { case_type: 'normal', lao: 'ບຽວ', romaji: 'byo' },  # びょ
  { case_type: 'short', lao: 'ບຽວ', romaji: 'byo' },   # びょ
  { case_type: 'special_case', lao: 'ບຽວ', romaji: 'byo' },  # びょ

  # ぴゃ行
  { case_type: 'normal', lao: 'ເປຍ', romaji: 'pya' },  # ぴゃ
  { case_type: 'short', lao: 'ເປັຍ', romaji: 'pya' },   # ぴゃ
  { case_type: 'special_case', lao: 'ປຽ', romaji: 'pya' },  # ぴゃ
  { case_type: 'normal', lao: 'ປີວ', romaji: 'pyu' },  # ぴゅ
  { case_type: 'short', lao: 'ປິວ', romaji: 'pyu' },   # ぴゅ
  { case_type: 'special_case', lao: 'ປິວ', romaji: 'pyu' },  # ぴゅ
  { case_type: 'normal', lao: 'ປຽວ', romaji: 'pyo' },  # ぴょ
  { case_type: 'short', lao: 'ປຽວ', romaji: 'pyo' },   # ぴょ
  { case_type: 'special_case', lao: 'ປຽວ', romaji: 'pyo' }   # ぴょ
]

hiragana_lao_records.each do |record|
  HiraganaLao.create(record)
end
=end

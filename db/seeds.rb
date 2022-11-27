Influencer.create!(
  [
    {
      name: 'さらぽん',
      profile: '元エステティシャン/元BA/美容ライター
                某Beautyケアブランドで約10年間BAをしていました💞
                新作コスメを使ったモテメイク・トレンドメイクなど紹介してます。　
                女の子の可愛いに追求したメイク、美容に私の知識が 少しでも参考になりますように💓',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/25248033_s.jpg")), filename: "25248033_s.jpg")
    },
    {
      name: 'みきちゃんねる',
      profile: 'ヘアメイクアップアーティスト💄💇3人の男の子のママ👦👦👦
                関東を中心にメイクレッスンもしています！
                プチプラ・デパコス関わらず気になったものはすぐに自分で試してみる！ことがモットー。
                ❥愛を込めて丁寧にカウンセリング
                ❥ご質問等お気軽にどうぞ',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/25220668_s.jpg")), filename: "25220668_s.jpg")
    },
    {
      name: '水越えりか',
      profile: 'キレイを追求するのが趣味なただの美容おたくです。
                海外セレブが大好きで海外メイクを研究しています。
                一人ひとりのお顔立ちや骨格に合わせたハーフ顔メイクのアドバイスできますのでお気軽にご予約ください♪',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/25277020_s.jpg")), filename: "25277020_s.jpg")
    },
    {
      name: 'Ami Kaji',
      profile: '美容に繋がること全てを研究中。肌に優しいもの、オーガニックだいすき🌿元エステティシャンなので、お肌悩みのアドバイスも可能です💓
                アトピー肌→ノーマル肌
                Iherb購入品を使ったメイクなど紹介しています',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/25239730_s.jpg")), filename: "25239730_s.jpg")
    },
    {
      name: 'ShikaBeautyChannel',
      profile: '新作コスメを使ったメイク・モテ顔メイク・トレンドコスメを使ったメイクなど紹介してます💓
                自称垢抜け眉毛研究家🥸「可愛くなりたい女の子を応援したい📣」',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/25159643_s.jpg")), filename: "25159643_s.jpg")
    },
    {
      name: '関根ななこ',
      profile: '🫧アラサー女子の垢抜け美容法
                🫧すぐ試したくなるメイクテクニック
                🫧メイクで自己肯定感UP',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/25137759_s.jpg")), filename: "25137759_s.jpg")
    },
    {
      name: 'りいたそ',
      profile: 'あざとく可愛くて良い♡モテてちゃってOK
                可愛いには、無限の力がある♡
                コスメもスキンケアも好き♡
                でも今は特に、スキンケアに力入れてます！！
                現在、"かわいい"について研究中🐰ᝰ✍🏻',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/25116688_s.jpg")), filename: "25116688_s.jpg")
    },
    {
      name: '吉田きぬ',
      profile: '一児のママ👶🏻🌸奥二重、エラ張り 「ザ！日本人顔！」です💁🏼
                コンプレックスがあるからこそ日々メイクを勉強しております💓濃ゆいメイクが好きです💋
                カウンセリングご予約お気軽にどうぞ♪',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/25055226_s.jpg")), filename: "25055226_s.jpg")
    },
    {
      name: 'まいまい',
      profile: 'コスメが大好きで国内&外資系の化粧品企業に勤めて、百貨店にて美容部員をしていました!!
                荒れやすい肌を実験台に色々なコスメを試しています。
                皆様の悩みに寄り添ったカウンセリングが出来ますように🐉🤍
                分かりやすいカウンセリングに尽力いたします!',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/24913804_s.jpg")), filename: "24913804_s.jpg")
    },
    {
      name: 'よさきれな',
      profile: '美容鍼灸師やブライダルメイクしてます💓プチプラもデパコスもいいと思えば何でも使います✨
                🪺ブルベ夏 2ndなし/ペールサマー
                🪺マット系/締め色苦手民
                🪺抜け感/透明感/明るめカラーが得意
                🪺国産ブランド推し🇯🇵
                🪺美容薬学検定 1級',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/24825954_s.jpg")), filename: "24825954_s.jpg")
    },
    {
      name: 'まいこすもてちゃんねる',
      profile: 'フリーランスで美容師、ヘアメイクのお仕事をしています♡ご自身の可愛いを最大限に引き出すメイクカウンセリングを中心にupしていきます🌷
                ❤︎ブルベ夏/骨格ストレート
                ❤︎可愛くなるために日々研究中',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/24183387_s.jpg")), filename: "24183387_s.jpg")
    },
    {
      name: '古川夢月',
      profile: '◻アラサーOL👩プロブルベ
                ◻︎パーソナルカラーサロン@大阪心斎橋
                ◻16タイプパーソナルカラー診断
                ◻自分に似合うを知ってstylishになりたい
                ◻︎大人カワイイ◻︎似合うコスメがわからない',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/23349411_s.jpg")), filename: "23349411_s.jpg")
    },
    {
      name: 'ねおねお',
      profile: 'korean beauty🍑♡美容情報🪄
                韓国コスメ /韓国スキンケア がメインです。
                インナードライ肌/年中美白ケア🌙𓈒𓂂
                スキンケアはたっぷり惜しみなく☺️🤍',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/22876790_s.jpg")), filename: "22876790_s.jpg")
    },
    {
      name: '濱田ソルト',
      profile: 'カラーアナリスト
                メイク講師
                カラーセラピスト
                美顔バランスアナリスト',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/22861568_s.jpg")), filename: "22861568_s.jpg")
    },
    {
      name: '佐藤あおい',
      profile: '💄『昨日の自分より可愛くなれる How To』
                フォローお気軽に🐾
                お気に入りはもちろん個人的には合わなかったモノもシェア',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/22627862_s.jpg")), filename: "22627862_s.jpg")
    },
    {
      name: 'ゆきまるちゃんねる',
      profile: 'イエベ春によるイエベ春のためのイエベ春メイク。
                アイシャドウが好きです。みなさんと仲良くできたら嬉しいです♬',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/22358253_s.jpg")), filename: "22358253_s.jpg")
    },
    {
      name: 'きり姉',
      profile: 'プチプラコスメでつくる垢抜けメイクが得意。
                アイシャドウとカラコンが好きです。
                日本化粧品検定2級所持。基本カバー力重視でアイ・リップメイクに力入れる系女子です',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/5083424_s.jpg")), filename: "5083424_s.jpg")
    },
    {
      name: '新希さちか',
      profile: '可愛い"が大好きな普通の女の子。
                ちょっとでも可愛くなれるように自分磨き頑張っています💫
                悩みは主に顔の赤み・剛毛・そばかす・毛穴など。
                コンプだらけですが頑張って生きてます!!!!
                コンプレックス解消方法などシェアしていきます💓',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/5034065_s.jpg")), filename: "5034065_s.jpg")
    },
    {
      name: 'なえゆかch',
      profile: '🌼美容が大好きな👧(0歳)のママです👌🤍
                🌼スキンケアに力を入れています
                ★食事も意識し内面も整える
                ★30歳のメンテナンスを発信',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/4212041_s.jpg")), filename: "4212041_s.jpg")
    },
    {
      name: '指原ももこ',
      profile: 'アイメイク中心に紹介🤲🏻
                PC関係なしに盛れる、そんな使い方を発信します🌟
                📎＋実践してもらえると嬉しいです🥰',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/30944_s.jpg")), filename: "30944_s.jpg")
    },
    {
      name: 'Liiinka',
      profile: '元化粧品メーカーの企画職。
                ひどいアトピー＆ニキビ肌を克服！
                プチプラ〜デパコスまで、気になったものは何でも使います！
                分かりやすいカウンセリングを意識していますので、ぜひご予約ください！',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/unificDSC1884_TP_V4.jpg")), filename: "unificDSC1884_TP_V4.jpg")
    },
    {
      name: '花染　歩乃華',
      profile: '坂道アイドルメイク分析❤︎
                ブルベ夏×乾燥肌さん向けの投稿多め◎
                丁寧で愛のあるカウンセリングを心がけています！',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/takebePAUI4802_TP_V4.jpg")), filename: "takebePAUI4802_TP_V4.jpg")
    },
    {
      name: '27/io',
      profile: 'ありのままでもきっとステキになれるはず🌸
                ▷ドラコス、韓国コスメがメイン
                ▷新作HOW TOカウンセリング
                ▷乾燥肌のスキンケアカウンセリング',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/takebe2182601854s_TP_V4.jpg")), filename: "takebe2182601854s_TP_V4.jpg")
    },
    {
      name: 'ほんだMai',
      profile: '~ 乾燥しない・崩れないメイク発信中~
                投稿頻度は低めですが丁寧なカウンセリングをしています',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/takaoPAR58930-3_TP_V4.jpg")), filename: "takaoPAR58930-3_TP_V4.jpg")
    },
    {
      name: '菅原ソラ',
      profile: 'コスメ好きの元ネイリスト💅
                美容ライター/日本化粧品検定2級取得
                美容メディアで執筆中です✏️
                パーソナルカラーにとらわれないメイクを💄',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/soraPAR59014_TP_V4.jpg")), filename: "soraPAR59014_TP_V4.jpg")
    },
    {
      name: 'HANA🌟',
      profile: '年間100万円以上のコスメ・美容アイテムを使うマニア。
                ブルベ夏の可愛い探し♥
                ナチュラル可愛い♡が好きです。',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/shikun81421082_TP_V4.jpg")), filename: "shikun81421082_TP_V4.jpg")
    },
    {
      name: '小麦＠プチプラ大好き💓',
      profile: 'めんどくさがりだけど、綺麗でいたい0歳児の母です😖
                プチプラコスメでできる時短メイクを中心に紹介しています！',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/penfansoraAPP91065_TP_V4.jpg")), filename: "penfansoraAPP91065_TP_V4.jpg")
    },
    {
      name: 'こりす【ブルベ夏】',
      profile: '自分を磨いていきたい20歳✨
                1stサマー,2ndスプリング
                購入品を、過度な表現は避け、
                自分の言葉で丁寧に説明できるよう頑張ります！',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/PAK85_lalaokuchibeniol20140321_TP_V4.jpg")), filename: "PAK85_lalaokuchibeniol20140321_TP_V4.jpg")
    },
    {
      name: 'あきな@16タイプパーソナルカラーアナリスト',
      profile: 'コスメ•メイク大好きなイメコンアナリスト🙋‍♀️
                パーソナルカラー含めイメコンは似合う幅を広げるものです❤️‍🔥',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/NS2_DSC_0018_TP_V4.jpg")), filename: "NS2_DSC_0018_TP_V4.jpg")
    },
    {
      name: '-Kayoko-',
      profile: 'シドニー在住🇦🇺見てくださり、ありがとうございます🙈♡海外コスメやや多めです🤍',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/neruneruPAR55463_TP_V4.jpg")), filename: "neruneruPAR55463_TP_V4.jpg")
    },
    {
      name: '花恋🎀',
      profile: '一重メイク研究家の女子大生です♪プチプラコスメで可愛い一重メイクをご紹介します❤︎',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/20220310-A7402423_TP_V4.jpg")), filename: "20220310-A7402423_TP_V4.jpg")
    },
    {
      name: 'イエベ春ちゃん🌸美容マニア',
      profile: '透明感を追求中🤓30歳男の子ママ👶0歳
                ＊ノーファンデ派
                コンシーラーやコントロールカラーのみを使って素肌感を出すメイクを中心に紹介しています.',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/02AMEMAN8752_TP_V4.jpg")), filename: "02AMEMAN8752_TP_V4.jpg")
    },
    {
      name: 'MIHO💄パーソナルカラーアナリスト',
      profile: '＊褒められコスメピックアップ
                ・16タイプパーソナルカラー診断士の資格有
                ・1stイエベ春/2ndイエベ秋
      
                パーソナルカラー診断サロン@大阪心斎橋
                ↓似合う色で垢抜けた経験談を発信',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/TIG93_buranketnikurumarerujyosei_TP_V4.jpg")), filename: "TIG93_buranketnikurumarerujyosei_TP_V4.jpg")
    },
    {
      name: 'Piko',
      profile: '都内OL👩K-POPオタク歴10年。韓国メイク🇰🇷💄1stブルベ冬/2ndイエベ秋🍁(プロ診断)顔タイプはキュートです🧸',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/PAK15_mitumeruonnanokolala_TP_V4.jpg")), filename: "PAK15_mitumeruonnanokolala_TP_V4.jpg")
    },
    {
      name: '🇰🇷韓国なりきりメイク　ユナ/yuna🇰🇷',
      profile: '韓国出身です🇰🇷ブルベ💙乾燥肌🤗敏感肌🤗です。詐欺メイク得意✨化粧品検定取得済✨',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/N853_sensuwomochikochirawomiruyukatanojyosei_TP_V4.jpg")), filename: "N853_sensuwomochikochirawomiruyukatanojyosei_TP_V4.jpg")
    },
    {
      name: '美容部員ちゃん',
      profile: '現役美容部員のつぶやき💋💄
                お仕事メイク、清楚系メイクなど様々紹介🎵
                プチプラからデパコスまで大好きです😆💓💓
                ご予約もお待ちしております😂👏',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/MIZ19819033_TP_V4.jpg")), filename: "MIZ19819033_TP_V4.jpg")
    },
    {
      name: 'ゆびわ💍',
      profile: '美容とコスメ大好きなアパレル勤務の20代です。よろしくお願い致します(*^^*)',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/mitsuaminagetemina_TP_V4.jpg")), filename: "mitsuaminagetemina_TP_V4.jpg")
    },
    {
      name: 'さらんへよ🍀',
      profile: '~化粧品検定1級・化粧品成分検定2級所持~
                ~あなたに似合うコスメの選び方を発信~
                コスメヲタクで韓国コスメが大好きです🇰🇷
                定番から新作まで、韓国コスメを使ったメイクを詳しくご紹介していけたらと思います',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/Kazukihiro171227DSCF8809-Edit_TP_V4.jpg")), filename: "Kazukihiro171227DSCF8809-Edit_TP_V4.jpg")
    },
    {
      name: '菅原友美【メイクアップアーティスト】',
      profile: '美容専門学校卒 ：元エステティシャン⇨メイクアップアーティスト
                年間500人以上のお客様にメイクをしています✨',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/datsumou1198_TP_V4.jpg")), filename: "datsumou1198_TP_V4.jpg")
    },
    {
      name: '雪ふく⛄️',
      profile: 'コスメ大好きな看護師、保健師💉⇨現在休職中！
                ナチュラルだけど特別でいたい!
                自分のためにメイクしてます',
      influencer_image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/influencer_images/20220227-A7401629_TP_V4.jpg")), filename: "20220227-A7401629_TP_V4.jpg")
    }
  ]
)

Genre.create(
  [
    { name: 'モテメイク' },
    { name: 'トレンドメイク' },
    { name: 'プチプラ'},
    { name: 'デパコス'},
    { name: '海外メイク'},
    { name: 'ハーフ顔メイク'},
    { name: 'ナチュラルメイク'},
    { name: '垢抜けメイク'},
    { name: '一重メイク'},
    { name: '小顔メイク'},
    { name: 'ブライダルメイク'},
    { name: '韓国メイク'},
    { name: '時短メイク'},
    { name: '詐欺メイク'},
    { name: 'オフィスメイク'}
  ]
)
   
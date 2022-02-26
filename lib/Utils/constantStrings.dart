import 'package:pujapurohit/Pages/PanditSection/Topbar/calender.dart';
import 'package:pujapurohit/Pages/PanditSection/Widgets/ImageView.dart';

const bannerMainText = "BOOK YOUR PUJA \nAT YOUR PLACE NOW";
const bannerSecondText = "Perform Your Puja With Verified Pandits";
const feature = "Features....";
const events = "Upcoming Festivals....";
const panditHeading = "Purohit Near you....";
const loading = "Loading...";
const searchPujaText = "     Search Puja Near";
const bookingString = "Booking requested";
const bookingDialogMessage = "Booking is requested from your side purohit will update their confirmation within 30 min";
const bookingDecline = "Declined by purohit";
const bookingAccept = "Request Accepted";
const bookingPending = "Pending Status";
const rejectedBookingMessage =
    "Booking is declined by purohit he is not available at the given booking time\nSamvad with him or click on help button to contact us.";
const acceptedBookingMessage = "Purohit accepted your booking request. Kindly confirm from your end.";
const waitingBookingMessage = "Waiting for the confirmation from purohit end";
const purohitConformation = "Waiting for purohit confirmation";
const reorder = "REORDER";
const help = "HELP";
const ratePurohit = "RATE PUROHIT";
const cancel = "CANCEL";
const payOnline = "PAY ONLINE";
const samvad = 'SAMVAD';
const kGoogleApiKey = "AIzaSyCHlPJMsHXuk5Khs0FbOhGavgKy2BPV5m8";
const addressAutocomplete = "Address autocomplete";

const months = ['January', 'Feburary', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];

const pujanVidhiLang1 = 'Pujan Vidhi';
const pujanVidhiLang2 = 'पूजन विधि';
const pujanVidhiLang3 = 'পূজন বিধি';
const pujanVidhiLang4 = 'பூஜன் விதி';
const pujanVidhiLang5 = 'పూజన్ విధి';
const pujanVidhiLang6 = 'पूजन विधी';
const pujanVidhiLang7 = 'પૂજન વિધી';
const pujanVidhiLang8 = 'ପୂଜନ ବିଦୀ';
const pujanVidhiLang9 = 'ਪੂਜਨ ਵਿਧੀ';
const pujanVidhiLang10 = 'ಪೂಜಾನ್ ವಿಧಿ';

const pujanVidhiDescriptionLang1 = 'Here you can find all listed puja steps by step and complete it with vedic mantra';
const pujanVidhiDescriptionLang2 = 'यहां आप सभी सूचीबद्ध पूजा चरणों को चरणबद्ध तरीके से पा सकते हैं और इसे वैदिक मंत्र के साथ पूरा कर सकते हैं';
const pujanVidhiDescriptionLang3 =
    'এখানে আপনি ধাপে ধাপে তালিকাভুক্ত সমস্ত পূজা ধাপগুলি খুঁজে পেতে পারেন এবং বৈদিক মন্ত্র দিয়ে এটি সম্পূর্ণ করতে পারেন';
const pujanVidhiDescriptionLang4 =
    'இங்கே நீங்கள் பட்டியலிடப்பட்ட அனைத்து பூஜை படிகளையும் படிப்படியாகக் காணலாம் மற்றும் அதை வேத மந்திரத்துடன் முடிக்கலாம்';
const pujanVidhiDescriptionLang5 = 'ఇక్కడ మీరు జాబితా చేయబడిన అన్ని పూజ దశలను దశలవారీగా కనుగొనవచ్చు మరియు దానిని వేద మంత్రంతో పూర్తి చేయవచ్చు';
const pujanVidhiDescriptionLang6 = 'येथे आपण सर्व सूचीबद्ध पूजा चरण चरणानुसार शोधू शकता आणि वैदिक मंत्राने पूर्ण करू शकता';
const pujanVidhiDescriptionLang7 = 'અહીં તમે તમામ સૂચિબદ્ધ પૂજાનાં પગલાં સ્ટેપ દ્વારા શોધી શકો છો અને તેને વૈદિક મંત્રથી પૂર્ણ કરી શકો છો';
const pujanVidhiDescriptionLang8 =
    'ଏଠାରେ ଆପଣ ସମସ୍ତ ତାଲିକାଭୁକ୍ତ ପୂଜା ଷ୍ଟେପଗୁଡିକୁ ପର୍ଯ୍ୟାୟକ୍ରମେ ପାଇପାରିବେ ଏବଂ ଏହାକୁ ଭେଡିକ୍ ମନ୍ତ୍ର ସହିତ ସଂପୂର୍ଣ୍ଣ କରିପାରିବେ |';
const pujanVidhiDescriptionLang9 = 'ਇੱਥੇ ਤੁਸੀਂ ਸਾਰੇ ਸੂਚੀਬੱਧ ਪੂਜਾ ਕਦਮ ਦਰ ਕਦਮ ਲੱਭ ਸਕਦੇ ਹੋ ਅਤੇ ਇਸਨੂੰ ਵੈਦਿਕ ਮੰਤਰ ਨਾਲ ਪੂਰਾ ਕਰ ਸਕਦੇ ਹੋ';
const pujanVidhiDescriptionLang10 = 'ಇಲ್ಲಿ ನೀವು ಎಲ್ಲಾ ಪಟ್ಟಿ ಮಾಡಿದ ಪೂಜೆಯ ಹಂತಗಳನ್ನು ಹಂತ ಹಂತವಾಗಿ ಕಾಣಬಹುದು ಮತ್ತು ಅದನ್ನು ವೇದ ಮಂತ್ರದಿಂದ ಪೂರ್ಣಗೊಳಿಸಬಹುದು';

const suggestedPurohitText1 = "Suggested purohit for you";
const suggestedPurohitText2 = 'आपके लिए सुझाए गए पुरोहित';
const suggestedPurohitText3 = 'আপনার জন্য প্রস্তাবিত পুওরোহিত';
const suggestedPurohitText4 = 'உங்களுக்காக பரிந்துரைக்கப்படும் புரோஹித்';
const suggestedPurohitText5 = 'మీ కోసం సూచించిన పురోహిత్';
const suggestedPurohitText6 = 'तुमच्यासाठी सुचवलेले पुरोहित';
const suggestedPurohitText7 = 'તમારા માટે સૂચિત પુરોહિત';
const suggestedPurohitText8 = 'ଆପଣଙ୍କ ପାଇଁ ପ୍ରସ୍ତାବିତ ପୁରୋହିତ |';
const suggestedPurohitText9 = 'ਤੁਹਾਡੇ ਲਈ ਸੁਝਾਏ ਗਏ ਪੁਰੋਹਿਤ';
const suggestedPurohitText10 = 'ನಿಮಗಾಗಿ ಸೂಚಿಸಿದ ಪುರೋಹಿತ್';

const samagriListLang1 = 'Samagri List';
const samagriListLang2 = 'समग्री सूची';
const samagriListLang3 = 'সামগ্রী তালিকা';
const samagriListLang4 = 'சமகிரி பட்டியல்';
const samagriListLang5 = 'సామగ్రి జాబితా';
const samagriListLang6 = 'समगरी यादी';
const samagriListLang7 = 'સામગ્રી યાદી';
const samagriListLang8 = 'ସମାଗ୍ରି ତାଲିକା |';
const samagriListLang9 = 'ਸਮਗਰੀ ਸੂਚੀ';
const samagriListLang10 = 'ಸಾಮಗ್ರಿ ಪಟ್ಟಿ';

const description1 =
    'All samagri are customized according tour state localization.Please assemble all samgri from your end or use our samagri service to get free delivery';
const description2 =
    'सभी समग्री को टूर स्टेट लोकलाइजेशन के अनुसार अनुकूलित किया गया है। कृपया अपने अंत से सभी सामगरी को इकट्ठा करें या मुफ्त डिलीवरी प्राप्त करने के लिए हमारी समग्री सेवा का उपयोग करें।';
const description3 = 'সমস্ত সামগ্রী ট্যুর স্টেট লোকালাইজেশন অনুসারে কাস্টমাইজ করা হয়েছে।';
const description4 =
    'அனைத்து சமாக்ரியும் சுற்றுப்பயண மாநில உள்ளூர்மயமாக்கலின் படி தனிப்பயனாக்கப்பட்டுள்ளது. தயவுசெய்து உங்கள் முடிவில் இருந்து அனைத்து சம்கிரிகளையும் ஒன்றிணைக்கவும் அல்லது இலவச விநியோகத்தைப் பெற எங்கள் சமாக்ரி சேவையைப் பயன்படுத்தவும்';
const description5 =
    'టూర్ స్టేట్ లోకలైజేషన్ ప్రకారం అన్ని సమగ్రీ అనుకూలీకరించబడ్డాయి. దయచేసి మీ ముగింపు నుండి అన్ని సమగ్రిని సమీకరించండి లేదా ఉచిత డెలివరీని పొందడానికి మా సమగ్ర సేవను ఉపయోగించండి';
const description6 =
    'सर्व समगरी टूर स्टेट लोकॅलायझेशननुसार सानुकूलित केल्या आहेत. कृपया तुमच्या शेवटापासून सर्व समगरी एकत्र करा किंवा मोफत डिलिव्हरी मिळवण्यासाठी आमच्या समगरी सेवेचा वापर करा';
const description7 =
    'તમામ સમાગરી પ્રવાસ રાજ્ય સ્થાનિકીકરણ અનુસાર કસ્ટમાઇઝ કરવામાં આવે છે. કૃપા કરીને તમારા અંતથી તમામ સમગ્રીને ભેગા કરો અથવા મફત ડિલિવરી મેળવવા માટે અમારી સમાગ્રી સેવાનો ઉપયોગ કરો.';
const description8 =
    'ସମସ୍ତ ସମାଗ୍ରି ଟୁର୍ ଷ୍ଟେଟ୍ ଲୋକାଲାଇଜେସନ୍ ଅନୁଯାୟୀ କଷ୍ଟୋମାଇଜ୍ ହୋଇଛି | ଦୟାକରି ସମସ୍ତ ସମ୍ରିକୁ ଆପଣଙ୍କ ଶେଷରୁ ଏକତ୍ର କରନ୍ତୁ କିମ୍ବା ମାଗଣା ବିତରଣ ପାଇବାକୁ ଆମର ସମାଗ୍ରି ସେବା ବ୍ୟବହାର କରନ୍ତୁ |';
const description9 =
    'ਸਾਰੇ ਸਮਗਰੀ ਟੂਰ ਸਟੇਟ ਲੋਕਲਾਈਜੇਸ਼ਨ ਦੇ ਅਨੁਸਾਰ ਅਨੁਕੂਲਿਤ ਕੀਤੇ ਗਏ ਹਨ ਕਿਰਪਾ ਕਰਕੇ ਸਾਰੇ ਸਮਗਰੀ ਨੂੰ ਆਪਣੇ ਅੰਤ ਤੋਂ ਇਕੱਠੇ ਕਰੋ ਜਾਂ ਮੁਫਤ ਡਿਲਿਵਰੀ ਪ੍ਰਾਪਤ ਕਰਨ ਲਈ ਸਾਡੀ ਸਮਗਰੀ ਸੇਵਾ ਦੀ ਵਰਤੋਂ ਕਰੋ.';
const description10 =
    'ಎಲ್ಲಾ ಸಾಮಗ್ರಿಗಳನ್ನು ಪ್ರವಾಸ ರಾಜ್ಯ ಸ್ಥಳೀಕರಣದ ಪ್ರಕಾರ ಕಸ್ಟಮೈಸ್ ಮಾಡಲಾಗಿದೆ. ದಯವಿಟ್ಟು ನಿಮ್ಮ ಅಂತ್ಯದಿಂದ ಎಲ್ಲಾ ಸಮಾಗ್ರಿಯನ್ನು ಜೋಡಿಸಿ ಅಥವಾ ಉಚಿತ ವಿತರಣೆಯನ್ನು ಪಡೆಯಲು ನಮ್ಮ ಸಾಮಗ್ರಿ ಸೇವೆಯನ್ನು ಬಳಸಿ';

const completeBelowProcess1 = 'Complete below process and tap on next icon';
const completeBelowProcess2 = 'नीचे दी गई प्रक्रिया को पूरा करें और अगले आइकन पर टैप करें';
const completeBelowProcess3 = 'নীচের প্রক্রিয়াটি সম্পূর্ণ করুন এবং পরবর্তী আইকনে আলতো চাপুন';
const completeBelowProcess4 = 'கீழே உள்ள செயல்முறையை முடித்து அடுத்த ஐகானைத் தட்டவும்';
const completeBelowProcess5 = 'దిగువ ప్రక్రియను పూర్తి చేసి; తదుపరి చిహ్నాన్ని నొక్కండి';
const completeBelowProcess6 = 'खालील प्रक्रिया पूर्ण करा आणि पुढील चिन्हावर टॅप करा';
const completeBelowProcess7 = 'નીચેની પ્રક્રિયા પૂર્ણ કરો અને આગલા ચિહ્ન પર ટેપ કરો';
const completeBelowProcess8 = 'ପ୍ରକ୍ରିୟା ନିମ୍ନରେ ସମ୍ପୂର୍ଣ୍ଣ କରନ୍ତୁ ଏବଂ ପରବର୍ତ୍ତୀ ଆଇକନ୍ ଉପରେ ଟ୍ୟାପ୍ କରନ୍ତୁ |';
const completeBelowProcess9 = "ਹੇਠਾਂ ਦਿੱਤੀ ਪ੍ਰਕਿਰਿਆ ਨੂੰ ਪੂਰਾ ਕਰੋ ਅਤੇ ਅਗਲੇ ਆਈਕਨ 'ਤੇ ਟੈਪ ਕਰੋ";
const completeBelowProcess10 = 'ಕೆಳಗಿನ ಪ್ರಕ್ರಿಯೆಯನ್ನು ಪೂರ್ಣಗೊಳಿಸಿ ಮತ್ತು ಮುಂದಿನ ಐಕಾನ್ ಮೇಲೆ ಟ್ಯಾಪ್ ಮಾಡಿ';

const singArti1 = 'Sing  Aarti after that tap on next icon';
const singArti2 = 'आरती गाएं उसके बाद नेक्स्ट आइकॉन पर टैप करें';
const singArti3 = 'এরপর আর্তি গাও পরবর্তী আইকনে আলতো চাপুন';
const singArti4 = 'அடுத்த ஐகானைத் தட்டவும் பிறகு ஆரத்தி பாடுங்கள்';
const singArti5 = 'తదుపరి ఐకాన్‌పై నొక్కిన తర్వాత ఆర్తి పాడండి';
const singArti6 = 'त्यानंतर आरती करा पुढील चिन्हावर टॅप करा';
const singArti7 = 'તે પછી આરતી ગાઓ પછીના આયકન પર ટેપ કરો';
const singArti8 = 'ପରବର୍ତ୍ତୀ ଆଇକନ୍ ଉପରେ ସେହି ଟ୍ୟାପ୍ ପରେ ଆରତୀ ଗାନ କରନ୍ତୁ |';
const singArti9 = "ਉਸ ਤੋਂ ਬਾਅਦ ਆਰਤੀ ਗਾਓ ਅਗਲੇ ਆਈਕਨ 'ਤੇ ਟੈਪ ਕਰੋ";
const singArti10 = 'ಮುಂದಿನ ಐಕಾನ್ ಮೇಲೆ ಟ್ಯಾಪ್ ಮಾಡಿದ ನಂತರ ಆರತಿ ಹಾಡಿ';

const chhamaPrayer1 = 'Chhama prayer';
const chhamaPrayer2 = 'छमा प्रार्थना';
const chhamaPrayer3 = 'ছামার প্রার্থনা';
const chhamaPrayer4 = 'சாமா பிரார்த்தனை';
const chhamaPrayer5 = 'ఛామ ప్రార్థన';
const chhamaPrayer6 = 'छामा प्रार्थना';
const chhamaPrayer7 = 'છમા પ્રાર્થના';
const chhamaPrayer8 = 'ଚାମା ପ୍ରାର୍ଥନା |';
const chhamaPrayer9 = 'ਛਮਾ ਪ੍ਰਾਰਥਨਾ';
const chhamaPrayer10 = 'ಛಾಮ ಪ್ರಾರ್ಥನೆ';

const meaning1 = 'Meaning';
const meaning2 = 'अर्थ';
const meaning3 = 'অর্থ';
const meaning4 = 'பொருள்';
const meaning5 = 'అర్థం';
const meaning6 = 'अर्थ';
const meaning7 = 'અર્થ';
const meaning8 = 'ଅର୍ଥ';
const meaning9 = 'ਭਾਵ';
const meaning10 = 'ಅರ್ಥ';

const step1 = "Step";
const step2 = 'चरण';
const step3 = 'ধাপ';
const step4 = 'படி';
const step5 = 'దశ';
const step6 = 'Step';
const step7 = 'પગલું';
const step8 = 'ପଦାଙ୍କ';
const step9 = 'ਕਦਮ';
const step10 = 'ಹಂತ';

const linkdinLink = 'https://in.linkedin.com/company/puja-purohit';
const twitterLink = 'https://twitter.com/infopujapurohit';
const instagramLink = 'https://www.instagram.com/infopujapurohit/';

const facebookLink = 'https://www.facebook.com/infopujapurohit/';
const youtubeLink = 'https://www.youtube.com/channel/UCtCe77a3YY6NR3snGPvhlxg';


const playstoreLink = 'https://play.google.com/store/apps/details?id=com.pujapurohit.android.infopujapurohit';
const updateDetails = 'Update Detail';
const fav = 'Favourite';
const booking = 'Bookings';
const termsPolicies = "Terms and Policies";
const supportChat = 'Support Chat';
const about = 'About';
const sendFeedback = 'Send Feedback';
const downloadNow = 'Download the App Now';
const logOut = 'Log Out';
const notUpdated = 'Not Updated';
const experience = "Experience";
const language ="Language";
const loadingList = "Loading List";
const avaliable = "Avaliable_pundit";
const physical = "Physical";
const online = "Online";
const all = "All";
const popularPujas = "Where we find some popular puja";
const noOffer = "No offers right now";
const bookNow = "Book now";
const tithi = "Tithi begin";
const tithiEnd = "Tithi End";
const india = "India";
const learn = "Learn";
const watch = "Watch";
const writtenStep = "Written Steps";
const explanedVideo =  "Explained Video";
const proceedBook = "Proceed Booking";
const signIn = 'Sign In';
const theme = 'Theme';
const pujaSnaps = "Puja Snaps";
const fourPhotos = "4 photos";
const  commingSoon =  "Comming soon";
const sortVideo = "Sort Video";
const video = "0 video";
const readReview = "Read Reviews";
const loadingServices = "Loading services";
const showNothing = "Nothing to show";
const pujanVidhi= "Pujan Vidhi";
const samagerDetail = "Samagri Detail";
const benifit = "Benefit ***Claimed by Purohit***";
const additionalDetail = "Additional Detail";
const note = "Note:\nWe are commited to provide transparency between our purohits and yajman.\nLearn how to book :- ";
const Confirmation = "Confirmation";
const SamagriDelivery = "Samagri Delivery";
const completed = "Completed";
const rateNow = "Rate Now";
const orders = "Orders";
const viewDetail = "VIEW DETAIL";
const continued = "Continue";
const supportChart = "Support Chat";
const SendFeedback = 'Send Feedback';
const downloadTask = 'Download the App Now';
const offer = "OFFER";
const discountOffer= "20% of on all orders up to ₹1000";
const kotakOffer = "20% of upto INR 125/- with Kotak Credit or Debit Cards | Use Code KOTAK125";
const loadingSeries = "Loading serices";
const bestSeller = "BestSeller";
const samagriStock = "Samagri in stock";
const searchPuja = "Search Puja";
const detailEnglish = 'detailEnglish';
const search = 'Search';
const activePandit = 'Active Pandits';
const vendors = 'Vendors';
const  pujaVariety = 'Puja Variety';
const sarved = 'Served';
const firebaseImage = 'https://firebasestorage.googleapis.com/v0/b/flutter-bf503.appspot.com/o/Landing%20Page%2F1.png?alt=media&token=5c564a9e-21ea-4b99-8dee-c1c4d1d5c6f6';
const discover = 'Discover the\n'; 
const bestPurohit = "Best Purohits";
const aroundYou = 'Around You';
const heart = 'Help us in reviving the Sanatan Culture in every heart.';
const getStarted = 'GET STARTED';
const  watchVideo = 'WATCH VIDEO';
const firebaseLink = 'https://firebasestorage.googleapis.com/v0/b/flutter-bf503.appspot.com/o/Landing%20Page%2F1.png?alt=media&token=5c564a9e-21ea-4b99-8dee-c1c4d1d5c6f6';
const fireBaseLink2 = 'https://firebasestorage.googleapis.com/v0/b/flutter-bf503.appspot.com/o/Landing%20Page%2F2.1.png?alt=media&token=7bb99dd6-b8ac-4bbf-995a-e2cfc352b7d1';
const saveTime = 'Save Your Time';
const fireBaseLink3 = 'https://firebasestorage.googleapis.com/v0/b/flutter-bf503.appspot.com/o/Landing%20Page%2F2.1.png?alt=media&token=7bb99dd6-b8ac-4bbf-995a-e2cfc352b7d1';
const getSamagri = 'Get Puja Samagri';
const dorrStep = 'At Your Doorstep';
const shipMent = 'Free shipment for all your essential puja items.';
const calender = 'Calender';
const link = 'https://firebasestorage.googleapis.com/v0/b/swastik13-8242d.appspot.com/o/NewAppFiles%2Ftopbars%2FOnline%20calendar-amico%20(1).png?alt=media&token=46e017ce-63eb-42b7-a8b5-281bc2e1d850';
const factsArtical = 'Facts/Article';
const googleApis = 'https://firebasestorage.googleapis.com/v0/b/swastik13-8242d.appspot.com/o/NewAppFiles%2Ftopbars%2FProcessing-rafiki%20(2).png?alt=media&token=dc2c3e8a-22f7-4ac3-bb5d-58d02fbab3e9';
const googleApis2= 'https://firebasestorage.googleapis.com/v0/b/swastik13-8242d.appspot.com/o/NewAppFiles%2Ftopbars%2FSharing%20articles-rafiki.png?alt=media&token=51fde7f6-940a-4ba0-b915-16b5d33c24e6';

const googleapis3= 'https://firebasestorage.googleapis.com/v0/b/swastik13-8242d.appspot.com/o/NewAppFiles%2Ftopbars%2FTime%20management-bro.png?alt=media&token=9b57c040-c94b-42da-b3e4-6b0d1a793f7d';
const purohit = 'Purohit';
const nearYou = 'Near you...';
const profilePic = 'Profile Pic';
const processNote = "Please Login to proceed booking";
const proceeedBooking = "Proceed Booking";
const capitalAbout = 'ABOUT';
const contactUs = 'Contact Us';
const aboutUs = 'About Us';
const careers = 'Careers';
const payment = 'Payment';
const cancellation = 'Cancellation';
const faq = 'FAQ';
const social = 'SOCIAL';
const twitter = 'Twitter';
const facebook = 'Facebook';
const youTube = 'YouTube';
const inpuja= 'contact@pujapurohit.in';
const copyRight = 'Copyright © 2021 | Puja Purohit';
const company =  "COMPANY";
const whoWEARE= "WHO WE ARE";


const searchArea = 'Search for area';
const herokuAPP = 'https://cors-anywhere.herokuapp.com/';
const pressText = 'Press to test';
const pujanVidhi1 = 'pujanvidhi';
const calenderLink = "images/calander.png";
const smallcalender = 'calenderLink';
const artical= 'article';
const muhurat = 'Muhurat';
const smallMuhurat = 'muhurat';
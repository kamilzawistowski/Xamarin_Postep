; ModuleID = 'obj\Debug\130\android\marshal_methods.x86_64.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [272 x i64] [
	i64 15690660930947125, ; 0: Microsoft.DotNet.PlatformAbstractions.dll => 0x37be92af148835 => 17
	i64 24362543149721218, ; 1: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 78
	i64 36418902923615093, ; 2: Plugin.LocalNotification => 0x8162cc9bdf1b75 => 37
	i64 98382396393917666, ; 3: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 33
	i64 120698629574877762, ; 4: Mono.Android => 0x1accec39cafe242 => 34
	i64 210515253464952879, ; 5: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 68
	i64 232391251801502327, ; 6: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 100
	i64 295915112840604065, ; 7: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 101
	i64 414678114082183034, ; 8: XCalendar.dll => 0x5c13b8c35ff577a => 120
	i64 634308326490598313, ; 9: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 87
	i64 668723562677762733, ; 10: Microsoft.Extensions.Configuration.Binder.dll => 0x947c88986577aad => 25
	i64 702024105029695270, ; 11: System.Drawing.Common => 0x9be17343c0e7726 => 122
	i64 720058930071658100, ; 12: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 81
	i64 870603111519317375, ; 13: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 42
	i64 872800313462103108, ; 14: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 77
	i64 940822596282819491, ; 15: System.Transactions => 0xd0e792aa81923a3 => 126
	i64 996343623809489702, ; 16: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 114
	i64 1000557547492888992, ; 17: Mono.Security.dll => 0xde2b1c9cba651a0 => 135
	i64 1010800728818218806, ; 18: Microsoft.Bcl.HashCode.dll => 0xe0715e84bea7736 => 15
	i64 1120440138749646132, ; 19: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 116
	i64 1301485588176585670, ; 20: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 41
	i64 1315114680217950157, ; 21: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 63
	i64 1425944114962822056, ; 22: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 11
	i64 1518315023656898250, ; 23: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 43
	i64 1624659445732251991, ; 24: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 61
	i64 1628611045998245443, ; 25: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 89
	i64 1636321030536304333, ; 26: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 82
	i64 1672383392659050004, ; 27: Microsoft.Data.Sqlite.dll => 0x17357fd5bfb48e14 => 16
	i64 1731380447121279447, ; 28: Newtonsoft.Json => 0x18071957e9b889d7 => 36
	i64 1743969030606105336, ; 29: System.Memory.dll => 0x1833d297e88f2af8 => 49
	i64 1795316252682057001, ; 30: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 62
	i64 1836611346387731153, ; 31: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 100
	i64 1865037103900624886, ; 32: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 14
	i64 1875917498431009007, ; 33: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 59
	i64 1981742497975770890, ; 34: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 88
	i64 1986553961460820075, ; 35: Xamarin.CommunityToolkit => 0x1b91a84d8004686b => 110
	i64 2040001226662520565, ; 36: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 130
	i64 2133195048986300728, ; 37: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 36
	i64 2136356949452311481, ; 38: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 93
	i64 2165725771938924357, ; 39: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 66
	i64 2192948757939169934, ; 40: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x1e6eeb46cf992a8e => 18
	i64 2262844636196693701, ; 41: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 77
	i64 2284400282711631002, ; 42: System.Web.Services => 0x1fb3d1f42fd4249a => 127
	i64 2287834202362508563, ; 43: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 6
	i64 2287887973817120656, ; 44: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 128
	i64 2329709569556905518, ; 45: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 85
	i64 2335503487726329082, ; 46: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 54
	i64 2337758774805907496, ; 47: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 52
	i64 2470498323731680442, ; 48: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 72
	i64 2479423007379663237, ; 49: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 105
	i64 2497223385847772520, ; 50: System.Runtime => 0x22a7eb7046413568 => 53
	i64 2547086958574651984, ; 51: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 58
	i64 2592350477072141967, ; 52: System.Xml.dll => 0x23f9e10627330e8f => 56
	i64 2624866290265602282, ; 53: mscorlib.dll => 0x246d65fbde2db8ea => 35
	i64 2656907746661064104, ; 54: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 28
	i64 2694427813909235223, ; 55: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 97
	i64 2783046991838674048, ; 56: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 52
	i64 2960931600190307745, ; 57: Xamarin.Forms.Core => 0x2917579a49927da1 => 112
	i64 3017704767998173186, ; 58: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 116
	i64 3289520064315143713, ; 59: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 84
	i64 3303437397778967116, ; 60: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 60
	i64 3311221304742556517, ; 61: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 51
	i64 3493805808809882663, ; 62: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 103
	i64 3494946837667399002, ; 63: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 26
	i64 3522470458906976663, ; 64: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 102
	i64 3523004241079211829, ; 65: Microsoft.Extensions.Caching.Memory.dll => 0x30e439b10bb89735 => 23
	i64 3531994851595924923, ; 66: System.Numerics => 0x31042a9aade235bb => 50
	i64 3571415421602489686, ; 67: System.Runtime.dll => 0x319037675df7e556 => 53
	i64 3638003163729360188, ; 68: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 24
	i64 3655542548057982301, ; 69: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 26
	i64 3716579019761409177, ; 70: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 71: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 99
	i64 3772598417116884899, ; 72: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 78
	i64 3869221888984012293, ; 73: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 31
	i64 3966267475168208030, ; 74: System.Memory => 0x370b03412596249e => 49
	i64 4337444564132831293, ; 75: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 40
	i64 4513320955448359355, ; 76: Microsoft.EntityFrameworkCore.Relational => 0x3ea2897f12d379bb => 20
	i64 4525561845656915374, ; 77: System.ServiceModel.Internals => 0x3ece06856b710dae => 129
	i64 4612482779465751747, ; 78: Microsoft.EntityFrameworkCore.Abstractions => 0x4002d4a662a99cc3 => 18
	i64 4636684751163556186, ; 79: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 107
	i64 4743821336939966868, ; 80: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 2
	i64 4782108999019072045, ; 81: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 65
	i64 4794310189461587505, ; 82: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 58
	i64 4795410492532947900, ; 83: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 102
	i64 5081566143765835342, ; 84: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 5
	i64 5099468265966638712, ; 85: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 5
	i64 5129462924058778861, ; 86: Microsoft.Data.Sqlite => 0x472f835a350f5ced => 16
	i64 5142919913060024034, ; 87: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 113
	i64 5203618020066742981, ; 88: Xamarin.Essentials => 0x4836f704f0e652c5 => 111
	i64 5205316157927637098, ; 89: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 91
	i64 5251660479835658152, ; 90: Spire.Email.dll => 0x48e1a561c58fd7a8 => 39
	i64 5348796042099802469, ; 91: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 92
	i64 5376510917114486089, ; 92: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 105
	i64 5408338804355907810, ; 93: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 104
	i64 5446034149219586269, ; 94: System.Diagnostics.Debug => 0x4b94333452e150dd => 9
	i64 5451019430259338467, ; 95: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 71
	i64 5507995362134886206, ; 96: System.Core.dll => 0x4c705499688c873e => 46
	i64 5528247634813456972, ; 97: Plugin.LocalNotification.dll => 0x4cb847ef1773124c => 37
	i64 5692067934154308417, ; 98: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 109
	i64 5757522595884336624, ; 99: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 69
	i64 5814345312393086621, ; 100: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 97
	i64 5896680224035167651, ; 101: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 86
	i64 6085203216496545422, ; 102: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 114
	i64 6086316965293125504, ; 103: FormsViewGroup.dll => 0x5476f10882baef80 => 12
	i64 6183170893902868313, ; 104: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 40
	i64 6222399776351216807, ; 105: System.Text.Json.dll => 0x565a67a0ffe264a7 => 55
	i64 6319713645133255417, ; 106: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 87
	i64 6401687960814735282, ; 107: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 85
	i64 6504860066809920875, ; 108: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 66
	i64 6548213210057960872, ; 109: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 75
	i64 6560151584539558821, ; 110: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 32
	i64 6591024623626361694, ; 111: System.Web.Services.dll => 0x5b7805f9751a1b5e => 127
	i64 6617685658146568858, ; 112: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 4
	i64 6659513131007730089, ; 113: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 81
	i64 6671798237668743565, ; 114: SkiaSharp => 0x5c96fd260152998d => 38
	i64 6876862101832370452, ; 115: System.Xml.Linq => 0x5f6f85a57d108914 => 57
	i64 6894844156784520562, ; 116: System.Numerics.Vectors => 0x5faf683aead1ad72 => 51
	i64 7036436454368433159, ; 117: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 83
	i64 7103753931438454322, ; 118: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 80
	i64 7111211609209905225, ; 119: Xamarin.Plugin.Calendar => 0x62b0194821972049 => 118
	i64 7338192458477945005, ; 120: System.Reflection => 0x65d67f295d0740ad => 133
	i64 7473077275758116397, ; 121: Microsoft.DotNet.PlatformAbstractions => 0x67b5b430309b3e2d => 17
	i64 7488575175965059935, ; 122: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 57
	i64 7635363394907363464, ; 123: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 112
	i64 7637365915383206639, ; 124: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 111
	i64 7654504624184590948, ; 125: System.Net.Http => 0x6a3a4366801b8264 => 10
	i64 7820441508502274321, ; 126: System.Data => 0x6c87ca1e14ff8111 => 3
	i64 7836164640616011524, ; 127: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 61
	i64 7972383140441761405, ; 128: Microsoft.Extensions.Caching.Abstractions.dll => 0x6ea3983a0b58267d => 22
	i64 8044118961405839122, ; 129: System.ComponentModel.Composition => 0x6fa2739369944712 => 125
	i64 8064050204834738623, ; 130: System.Collections.dll => 0x6fe942efa61731bf => 7
	i64 8083354569033831015, ; 131: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 84
	i64 8087206902342787202, ; 132: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 47
	i64 8103644804370223335, ; 133: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 121
	i64 8167236081217502503, ; 134: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 13
	i64 8185542183669246576, ; 135: System.Collections => 0x7198e33f4794aa70 => 7
	i64 8290740647658429042, ; 136: System.Runtime.Extensions => 0x730ea0b15c929a72 => 134
	i64 8318905602908530212, ; 137: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 128
	i64 8398329775253868912, ; 138: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 70
	i64 8400357532724379117, ; 139: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 96
	i64 8518412311883997971, ; 140: System.Collections.Immutable => 0x76377add7c28e313 => 45
	i64 8601935802264776013, ; 141: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 104
	i64 8626175481042262068, ; 142: Java.Interop => 0x77b654e585b55834 => 13
	i64 8639588376636138208, ; 143: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 95
	i64 8684531736582871431, ; 144: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 124
	i64 8725526185868997716, ; 145: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 47
	i64 9111603110219107042, ; 146: Microsoft.Extensions.Caching.Memory => 0x7e72eac0def44ae2 => 23
	i64 9250544137016314866, ; 147: Microsoft.EntityFrameworkCore => 0x806088e191ee0bf2 => 19
	i64 9312692141327339315, ; 148: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 109
	i64 9313609423100664754, ; 149: Spire.Email => 0x8140966cb8a55bb2 => 39
	i64 9324707631942237306, ; 150: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 62
	i64 9662334977499516867, ; 151: System.Numerics.dll => 0x8617827802b0cfc3 => 50
	i64 9678050649315576968, ; 152: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 72
	i64 9711637524876806384, ; 153: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 92
	i64 9808709177481450983, ; 154: Mono.Android.dll => 0x881f890734e555e7 => 34
	i64 9825649861376906464, ; 155: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 69
	i64 9834056768316610435, ; 156: System.Transactions.dll => 0x8879968718899783 => 126
	i64 9864956466380592553, ; 157: Microsoft.EntityFrameworkCore.Sqlite => 0x88e75da3af4ed5a9 => 21
	i64 9998632235833408227, ; 158: Mono.Security => 0x8ac2470b209ebae3 => 135
	i64 10038780035334861115, ; 159: System.Net.Http.dll => 0x8b50e941206af13b => 10
	i64 10205853378024263619, ; 160: Microsoft.Extensions.Configuration.Binder => 0x8da279930adb4fc3 => 25
	i64 10229024438826829339, ; 161: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 75
	i64 10376576884623852283, ; 162: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 103
	i64 10430153318873392755, ; 163: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 73
	i64 10447083246144586668, ; 164: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 14
	i64 10714184849103829812, ; 165: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 134
	i64 10811915265162633087, ; 166: Microsoft.EntityFrameworkCore.Relational.dll => 0x960ba3a651a45f7f => 20
	i64 10847732767863316357, ; 167: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 63
	i64 10964653383833615866, ; 168: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 132
	i64 11002576679268595294, ; 169: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 30
	i64 11023048688141570732, ; 170: System.Core => 0x98f9bc61168392ac => 46
	i64 11037814507248023548, ; 171: System.Xml => 0x992e31d0412bf7fc => 56
	i64 11122995063473561350, ; 172: Xamarin.CommunityToolkit.dll => 0x9a5cd113fcc3df06 => 110
	i64 11162124722117608902, ; 173: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 108
	i64 11226290749488709958, ; 174: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 32
	i64 11340910727871153756, ; 175: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 74
	i64 11392833485892708388, ; 176: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 98
	i64 11398376662953476300, ; 177: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x9e2f2b2f0b71c0cc => 21
	i64 11485890710487134646, ; 178: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 131
	i64 11529969570048099689, ; 179: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 108
	i64 11530571088791430846, ; 180: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 31
	i64 11578238080964724296, ; 181: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 83
	i64 11580057168383206117, ; 182: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 59
	i64 11597940890313164233, ; 183: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11666126733838079721, ; 184: Xamarin.Plugin.Calendar.dll => 0xa1e66874631b56e9 => 118
	i64 11672361001936329215, ; 185: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 80
	i64 12102847907131387746, ; 186: System.Buffers => 0xa7f5f40c43256f62 => 44
	i64 12137774235383566651, ; 187: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 106
	i64 12145679461940342714, ; 188: System.Text.Json => 0xa88e1f1ebcb62fba => 55
	i64 12269460666702402136, ; 189: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 45
	i64 12279246230491828964, ; 190: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 43
	i64 12451044538927396471, ; 191: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 79
	i64 12466513435562512481, ; 192: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 90
	i64 12487638416075308985, ; 193: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 76
	i64 12538491095302438457, ; 194: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 67
	i64 12550732019250633519, ; 195: System.IO.Compression => 0xae2d28465e8e1b2f => 123
	i64 12700543734426720211, ; 196: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 68
	i64 12843321153144804894, ; 197: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 33
	i64 12963446364377008305, ; 198: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 122
	i64 13118109562954089177, ; 199: Xamarin_Postep.dll => 0xb60ce325108882d9 => 119
	i64 13370592475155966277, ; 200: System.Runtime.Serialization => 0xb98de304062ea945 => 11
	i64 13401370062847626945, ; 201: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 106
	i64 13404347523447273790, ; 202: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 70
	i64 13454009404024712428, ; 203: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 117
	i64 13491513212026656886, ; 204: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 64
	i64 13572454107664307259, ; 205: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 99
	i64 13647894001087880694, ; 206: System.Data.dll => 0xbd670f48cb071df6 => 3
	i64 13818328264475132956, ; 207: Microsoft.Bcl.HashCode => 0xbfc4905809c7c41c => 15
	i64 13955418299340266673, ; 208: Microsoft.Extensions.DependencyModel.dll => 0xc1ab9b0118299cb1 => 29
	i64 13959074834287824816, ; 209: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 79
	i64 13967638549803255703, ; 210: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 113
	i64 14124974489674258913, ; 211: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 67
	i64 14125464355221830302, ; 212: System.Threading.dll => 0xc407bafdbc707a9e => 8
	i64 14133832980772275001, ; 213: Microsoft.EntityFrameworkCore.dll => 0xc425763635a1c339 => 19
	i64 14172845254133543601, ; 214: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 93
	i64 14261073672896646636, ; 215: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 98
	i64 14327695147300244862, ; 216: System.Reflection.dll => 0xc6d632d338eb4d7e => 133
	i64 14486659737292545672, ; 217: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 86
	i64 14551742072151931844, ; 218: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 54
	i64 14644440854989303794, ; 219: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 91
	i64 14669215534098758659, ; 220: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 28
	i64 14792063746108907174, ; 221: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 117
	i64 14852515768018889994, ; 222: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 74
	i64 14935719434541007538, ; 223: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 4
	i64 14954917835170835695, ; 224: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 27
	i64 14987728460634540364, ; 225: System.IO.Compression.dll => 0xcfff1ba06622494c => 123
	i64 14988210264188246988, ; 226: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 76
	i64 15227001540531775957, ; 227: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 24
	i64 15370334346939861994, ; 228: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 73
	i64 15391712275433856905, ; 229: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 27
	i64 15582737692548360875, ; 230: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 89
	i64 15609085926864131306, ; 231: System.dll => 0xd89e9cf3334914ea => 48
	i64 15620595871140898079, ; 232: Microsoft.Extensions.DependencyModel => 0xd8c7812eef49651f => 29
	i64 15642253503105666648, ; 233: Xamarin_Postep.Android => 0xd91472af53390e58 => 0
	i64 15777549416145007739, ; 234: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 101
	i64 15810740023422282496, ; 235: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 115
	i64 15963349826457351533, ; 236: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 130
	i64 16154507427712707110, ; 237: System => 0xe03056ea4e39aa26 => 48
	i64 16321164108206115771, ; 238: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 30
	i64 16324796876805858114, ; 239: SkiaSharp.dll => 0xe28d5444586b6342 => 38
	i64 16565028646146589191, ; 240: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 125
	i64 16621146507174665210, ; 241: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 71
	i64 16677317093839702854, ; 242: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 96
	i64 16755018182064898362, ; 243: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 41
	i64 16822611501064131242, ; 244: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 121
	i64 16833383113903931215, ; 245: mscorlib => 0xe99c30c1484d7f4f => 35
	i64 17024911836938395553, ; 246: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 60
	i64 17031351772568316411, ; 247: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 94
	i64 17037200463775726619, ; 248: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 82
	i64 17187273293601214786, ; 249: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 2
	i64 17262142791295433179, ; 250: Xamarin_Postep.Android.dll => 0xef8f7368f13bf9db => 0
	i64 17333249706306540043, ; 251: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 132
	i64 17405242684829411489, ; 252: XCalendar => 0xf18bd80142b928a1 => 120
	i64 17544493274320527064, ; 253: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 65
	i64 17685921127322830888, ; 254: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 9
	i64 17704177640604968747, ; 255: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 90
	i64 17710060891934109755, ; 256: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 88
	i64 17712670374920797664, ; 257: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 131
	i64 17762564930801780032, ; 258: Xamarin_Postep => 0xf6814eb1c8404540 => 119
	i64 17838668724098252521, ; 259: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 44
	i64 17882897186074144999, ; 260: FormsViewGroup => 0xf82cd03e3ac830e7 => 12
	i64 17892495832318972303, ; 261: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 115
	i64 17928294245072900555, ; 262: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 124
	i64 18017743553296241350, ; 263: Microsoft.Extensions.Caching.Abstractions => 0xfa0be24cb44e92c6 => 22
	i64 18025913125965088385, ; 264: System.Threading => 0xfa28e87b91334681 => 8
	i64 18116111925905154859, ; 265: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 64
	i64 18121036031235206392, ; 266: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 94
	i64 18129453464017766560, ; 267: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 129
	i64 18245806341561545090, ; 268: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 6
	i64 18305135509493619199, ; 269: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 95
	i64 18370042311372477656, ; 270: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 42
	i64 18380184030268848184 ; 271: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 107
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [272 x i32] [
	i32 17, i32 78, i32 37, i32 33, i32 34, i32 68, i32 100, i32 101, ; 0..7
	i32 120, i32 87, i32 25, i32 122, i32 81, i32 42, i32 77, i32 126, ; 8..15
	i32 114, i32 135, i32 15, i32 116, i32 41, i32 63, i32 11, i32 43, ; 16..23
	i32 61, i32 89, i32 82, i32 16, i32 36, i32 49, i32 62, i32 100, ; 24..31
	i32 14, i32 59, i32 88, i32 110, i32 130, i32 36, i32 93, i32 66, ; 32..39
	i32 18, i32 77, i32 127, i32 6, i32 128, i32 85, i32 54, i32 52, ; 40..47
	i32 72, i32 105, i32 53, i32 58, i32 56, i32 35, i32 28, i32 97, ; 48..55
	i32 52, i32 112, i32 116, i32 84, i32 60, i32 51, i32 103, i32 26, ; 56..63
	i32 102, i32 23, i32 50, i32 53, i32 24, i32 26, i32 1, i32 99, ; 64..71
	i32 78, i32 31, i32 49, i32 40, i32 20, i32 129, i32 18, i32 107, ; 72..79
	i32 2, i32 65, i32 58, i32 102, i32 5, i32 5, i32 16, i32 113, ; 80..87
	i32 111, i32 91, i32 39, i32 92, i32 105, i32 104, i32 9, i32 71, ; 88..95
	i32 46, i32 37, i32 109, i32 69, i32 97, i32 86, i32 114, i32 12, ; 96..103
	i32 40, i32 55, i32 87, i32 85, i32 66, i32 75, i32 32, i32 127, ; 104..111
	i32 4, i32 81, i32 38, i32 57, i32 51, i32 83, i32 80, i32 118, ; 112..119
	i32 133, i32 17, i32 57, i32 112, i32 111, i32 10, i32 3, i32 61, ; 120..127
	i32 22, i32 125, i32 7, i32 84, i32 47, i32 121, i32 13, i32 7, ; 128..135
	i32 134, i32 128, i32 70, i32 96, i32 45, i32 104, i32 13, i32 95, ; 136..143
	i32 124, i32 47, i32 23, i32 19, i32 109, i32 39, i32 62, i32 50, ; 144..151
	i32 72, i32 92, i32 34, i32 69, i32 126, i32 21, i32 135, i32 10, ; 152..159
	i32 25, i32 75, i32 103, i32 73, i32 14, i32 134, i32 20, i32 63, ; 160..167
	i32 132, i32 30, i32 46, i32 56, i32 110, i32 108, i32 32, i32 74, ; 168..175
	i32 98, i32 21, i32 131, i32 108, i32 31, i32 83, i32 59, i32 1, ; 176..183
	i32 118, i32 80, i32 44, i32 106, i32 55, i32 45, i32 43, i32 79, ; 184..191
	i32 90, i32 76, i32 67, i32 123, i32 68, i32 33, i32 122, i32 119, ; 192..199
	i32 11, i32 106, i32 70, i32 117, i32 64, i32 99, i32 3, i32 15, ; 200..207
	i32 29, i32 79, i32 113, i32 67, i32 8, i32 19, i32 93, i32 98, ; 208..215
	i32 133, i32 86, i32 54, i32 91, i32 28, i32 117, i32 74, i32 4, ; 216..223
	i32 27, i32 123, i32 76, i32 24, i32 73, i32 27, i32 89, i32 48, ; 224..231
	i32 29, i32 0, i32 101, i32 115, i32 130, i32 48, i32 30, i32 38, ; 232..239
	i32 125, i32 71, i32 96, i32 41, i32 121, i32 35, i32 60, i32 94, ; 240..247
	i32 82, i32 2, i32 0, i32 132, i32 120, i32 65, i32 9, i32 90, ; 248..255
	i32 88, i32 131, i32 119, i32 44, i32 12, i32 115, i32 124, i32 22, ; 256..263
	i32 8, i32 64, i32 94, i32 129, i32 6, i32 95, i32 42, i32 107 ; 272..271
], align 16

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 16; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}

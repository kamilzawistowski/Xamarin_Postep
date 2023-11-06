; ModuleID = 'obj\Debug\130\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [420 x i64] [
	i64 15690660930947125, ; 0: Microsoft.DotNet.PlatformAbstractions.dll => 0x37be92af148835 => 17
	i64 24362543149721218, ; 1: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 98
	i64 36418902923615093, ; 2: Plugin.LocalNotification => 0x8162cc9bdf1b75 => 38
	i64 98382396393917666, ; 3: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 31
	i64 120698629574877762, ; 4: Mono.Android => 0x1accec39cafe242 => 32
	i64 181099460066822533, ; 5: Microcharts.Droid.dll => 0x28364ffda4c4985 => 12
	i64 210515253464952879, ; 6: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 86
	i64 232391251801502327, ; 7: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 125
	i64 233177144301842968, ; 8: Xamarin.AndroidX.Collection.Jvm.dll => 0x33c696097d9f218 => 87
	i64 295915112840604065, ; 9: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 126
	i64 316157742385208084, ; 10: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 92
	i64 435170709725415398, ; 11: Xamarin.GooglePlayServices.Location => 0x60a097471d687e6 => 168
	i64 441196909651674427, ; 12: Xamarin.GooglePlayServices.Measurement.Sdk => 0x61f724073c9c53b => 174
	i64 464346026994987652, ; 13: System.Reactive.dll => 0x671b04057e67284 => 62
	i64 515298607468333944, ; 14: Xamarin.Io.OpenCensus.OpenCensusContribGrpcMetrics => 0x726b55a73674b78 => 185
	i64 634308326490598313, ; 15: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 110
	i64 687654259221141486, ; 16: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 166
	i64 702024105029695270, ; 17: System.Drawing.Common => 0x9be17343c0e7726 => 199
	i64 720058930071658100, ; 18: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 103
	i64 870603111519317375, ; 19: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 49
	i64 872800313462103108, ; 20: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 97
	i64 887546508555532406, ; 21: Microcharts.Forms => 0xc5132d8dc173876 => 13
	i64 940822596282819491, ; 22: System.Transactions => 0xd0e792aa81923a3 => 203
	i64 996343623809489702, ; 23: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 155
	i64 1000557547492888992, ; 24: Mono.Security.dll => 0xde2b1c9cba651a0 => 209
	i64 1010800728818218806, ; 25: Microsoft.Bcl.HashCode.dll => 0xe0715e84bea7736 => 15
	i64 1105782228985017791, ; 26: NativeMedia.Permision.dll => 0xf5887141d9775bf => 35
	i64 1120440138749646132, ; 27: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 157
	i64 1274338068859211160, ; 28: Xamarin.Grpc.Api => 0x11af5bb8ce1c4d98 => 178
	i64 1301485588176585670, ; 29: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 48
	i64 1305330500145730299, ; 30: Xamarin.Io.OpenCensus.OpenCensusApi.dll => 0x121d772c87ab52fb => 184
	i64 1315114680217950157, ; 31: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 81
	i64 1368633735297491523, ; 32: Xamarin.Firebase.Database.Collection.dll => 0x12fe5d218405e243 => 146
	i64 1375007795024489633, ; 33: NativeMedia.Permision => 0x1315024df1d3eca1 => 35
	i64 1392315331768750440, ; 34: Xamarin.Firebase.Auth.Interop.dll => 0x13527f6add681168 => 142
	i64 1416135423712704079, ; 35: Microcharts => 0x13a71faa343e364f => 11
	i64 1425944114962822056, ; 36: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 6
	i64 1465843056802068477, ; 37: Xamarin.Firebase.Components.dll => 0x1457b87e6928f7fd => 144
	i64 1474586420366808421, ; 38: Xamarin.Grpc.Android.dll => 0x1476c88960941565 => 177
	i64 1518315023656898250, ; 39: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 50
	i64 1624659445732251991, ; 40: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 79
	i64 1628611045998245443, ; 41: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 112
	i64 1636321030536304333, ; 42: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 104
	i64 1672383392659050004, ; 43: Microsoft.Data.Sqlite.dll => 0x17357fd5bfb48e14 => 16
	i64 1731380447121279447, ; 44: Newtonsoft.Json => 0x18071957e9b889d7 => 36
	i64 1743969030606105336, ; 45: System.Memory.dll => 0x1833d297e88f2af8 => 58
	i64 1795316252682057001, ; 46: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 80
	i64 1836611346387731153, ; 47: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 125
	i64 1865037103900624886, ; 48: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 14
	i64 1875917498431009007, ; 49: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 76
	i64 1956817255800234857, ; 50: Xamarin.Grpc.Android => 0x1b2802ed2e53e369 => 177
	i64 1976111867648823449, ; 51: Plugin.Messaging => 0x1b6c8f4613a45099 => 40
	i64 1981742497975770890, ; 52: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 111
	i64 1986553961460820075, ; 53: Xamarin.CommunityToolkit => 0x1b91a84d8004686b => 136
	i64 1990714127648872464, ; 54: Xamarin.Grpc.Core.dll => 0x1ba06ff3abdcd810 => 180
	i64 2040001226662520565, ; 55: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 207
	i64 2064708342624596306, ; 56: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 190
	i64 2133195048986300728, ; 57: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 36
	i64 2136356949452311481, ; 58: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 116
	i64 2165725771938924357, ; 59: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 84
	i64 2188974421706709258, ; 60: SkiaSharp.HarfBuzz.dll => 0x1e60cca38c3e990a => 43
	i64 2192948757939169934, ; 61: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x1e6eeb46cf992a8e => 18
	i64 2262844636196693701, ; 62: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 97
	i64 2284400282711631002, ; 63: System.Web.Services => 0x1fb3d1f42fd4249a => 204
	i64 2287887973817120656, ; 64: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 205
	i64 2304837677853103545, ; 65: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 124
	i64 2329709569556905518, ; 66: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 107
	i64 2335503487726329082, ; 67: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 65
	i64 2337758774805907496, ; 68: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 63
	i64 2343783402604882194, ; 69: Xamarin.Grpc.Stub.dll => 0x2086ca9636b86912 => 183
	i64 2470498323731680442, ; 70: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 91
	i64 2479423007379663237, ; 71: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 131
	i64 2497223385847772520, ; 72: System.Runtime => 0x22a7eb7046413568 => 64
	i64 2547086958574651984, ; 73: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 75
	i64 2592350477072141967, ; 74: System.Xml.dll => 0x23f9e10627330e8f => 67
	i64 2624866290265602282, ; 75: mscorlib.dll => 0x246d65fbde2db8ea => 33
	i64 2656907746661064104, ; 76: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 26
	i64 2694427813909235223, ; 77: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 120
	i64 2783046991838674048, ; 78: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 63
	i64 2787234703088983483, ; 79: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 127
	i64 2951672403965468947, ; 80: Xamarin.Firebase.Database.Collection => 0x28f67269abaf6113 => 146
	i64 2960931600190307745, ; 81: Xamarin.Forms.Core => 0x2917579a49927da1 => 152
	i64 3017704767998173186, ; 82: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 157
	i64 3122911337338800527, ; 83: Microcharts.dll => 0x2b56cf50bf1e898f => 11
	i64 3171992396844006720, ; 84: Square.OkIO => 0x2c052e476c207d40 => 52
	i64 3289520064315143713, ; 85: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 106
	i64 3303437397778967116, ; 86: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 77
	i64 3311221304742556517, ; 87: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 61
	i64 3344514922410554693, ; 88: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 193
	i64 3364695309916733813, ; 89: Xamarin.Firebase.Common => 0x2eb1cc8eb5028175 => 143
	i64 3411255996856937470, ; 90: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 167
	i64 3427548605411023127, ; 91: Xamarin.GooglePlayServices.Auth.Api.Phone.dll => 0x2f91194bf3e8d917 => 165
	i64 3461602852075779363, ; 92: SkiaSharp.HarfBuzz => 0x300a15741f74b523 => 43
	i64 3493805808809882663, ; 93: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 129
	i64 3495566828071521632, ; 94: Xamarin.GooglePlayServices.Measurement.Api.dll => 0x3082bf8283d78d60 => 169
	i64 3522470458906976663, ; 95: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 128
	i64 3523004241079211829, ; 96: Microsoft.Extensions.Caching.Memory.dll => 0x30e439b10bb89735 => 23
	i64 3531994851595924923, ; 97: System.Numerics => 0x31042a9aade235bb => 60
	i64 3571415421602489686, ; 98: System.Runtime.dll => 0x319037675df7e556 => 64
	i64 3638003163729360188, ; 99: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 24
	i64 3716579019761409177, ; 100: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 101: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 123
	i64 3768479575991719956, ; 102: Xamarin.KotlinX.Coroutines.Play.Services.dll => 0x344c5435464d1814 => 194
	i64 3772598417116884899, ; 103: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 98
	i64 3774315325518692048, ; 104: Xamarin.GooglePlayServices.Measurement.Sdk.Api.dll => 0x34610fca97dabed0 => 173
	i64 3859219695630330898, ; 105: Xamarin.GooglePlayServices.Ads.Identifier => 0x358eb3ddbc3cac12 => 164
	i64 3869221888984012293, ; 106: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 29
	i64 3966267475168208030, ; 107: System.Memory => 0x370b03412596249e => 58
	i64 4045730230152541805, ; 108: Xamarin.Grpc.Protobuf.Lite.dll => 0x38255235894d366d => 182
	i64 4201423742386704971, ; 109: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 92
	i64 4247996603072512073, ; 110: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 176
	i64 4337444564132831293, ; 111: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 47
	i64 4432316908210594816, ; 112: Xamarin.GooglePlayServices.Measurement.Impl => 0x3d82c0be9dd9a400 => 172
	i64 4513320955448359355, ; 113: Microsoft.EntityFrameworkCore.Relational => 0x3ea2897f12d379bb => 20
	i64 4525561845656915374, ; 114: System.ServiceModel.Internals => 0x3ece06856b710dae => 206
	i64 4612482779465751747, ; 115: Microsoft.EntityFrameworkCore.Abstractions => 0x4002d4a662a99cc3 => 18
	i64 4636684751163556186, ; 116: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 133
	i64 4702770163853758138, ; 117: Xamarin.Firebase.Components => 0x4143988c34cf0eba => 144
	i64 4743821336939966868, ; 118: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 2
	i64 4759461199762736555, ; 119: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 109
	i64 4782108999019072045, ; 120: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 83
	i64 4794310189461587505, ; 121: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 75
	i64 4795410492532947900, ; 122: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 128
	i64 4822137366104089610, ; 123: Xamarin.GooglePlayServices.Measurement.Sdk.Api => 0x42ebac62bcc5a40a => 173
	i64 4848145489223852674, ; 124: Plugin.Messaging.Abstractions => 0x434812a2c899a282 => 39
	i64 4977709562956556791, ; 125: Xamarin.Io.OpenCensus.OpenCensusApi => 0x45146079771729f7 => 184
	i64 5005291387232977212, ; 126: Xamarin.GooglePlayServices.Measurement.dll => 0x45765dff5d58013c => 171
	i64 5129462924058778861, ; 127: Microsoft.Data.Sqlite => 0x472f835a350f5ced => 16
	i64 5142919913060024034, ; 128: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 154
	i64 5203618020066742981, ; 129: Xamarin.Essentials => 0x4836f704f0e652c5 => 137
	i64 5205316157927637098, ; 130: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 114
	i64 5251660479835658152, ; 131: Spire.Email.dll => 0x48e1a561c58fd7a8 => 46
	i64 5290215063822704973, ; 132: Xamarin.Grpc.Stub => 0x496a9e926092a14d => 183
	i64 5348796042099802469, ; 133: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 115
	i64 5376510917114486089, ; 134: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 131
	i64 5408338804355907810, ; 135: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 130
	i64 5451019430259338467, ; 136: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 90
	i64 5507995362134886206, ; 137: System.Core.dll => 0x4c705499688c873e => 55
	i64 5528247634813456972, ; 138: Plugin.LocalNotification.dll => 0x4cb847ef1773124c => 38
	i64 5574231584441077149, ; 139: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 78
	i64 5692067934154308417, ; 140: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 135
	i64 5757522595884336624, ; 141: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 88
	i64 5767696078500135884, ; 142: Xamarin.Android.Support.Annotations.dll => 0x500af9065b6a03cc => 72
	i64 5814345312393086621, ; 143: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 120
	i64 5837276141656118154, ; 144: Plugin.CloudFirestore => 0x51022bb93f46938a => 37
	i64 5896680224035167651, ; 145: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 108
	i64 5909949808044991351, ; 146: Xamarin.GooglePlayServices.Measurement => 0x52045c09c4e8e377 => 171
	i64 6085203216496545422, ; 147: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 155
	i64 6086316965293125504, ; 148: FormsViewGroup.dll => 0x5476f10882baef80 => 8
	i64 6092862891035488599, ; 149: Xamarin.Firebase.Measurement.Connector.dll => 0x548e32849d547157 => 150
	i64 6118452257458269359, ; 150: Xamarin.Firebase.AppCheck.Interop.dll => 0x54e91be944fcacaf => 140
	i64 6135981624229292808, ; 151: Xamarin.Grpc.Api.dll => 0x552762c70482eb08 => 178
	i64 6183170893902868313, ; 152: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 47
	i64 6218967553231149354, ; 153: Firebase.Auth.dll => 0x564e360a4805d92a => 7
	i64 6222399776351216807, ; 154: System.Text.Json.dll => 0x565a67a0ffe264a7 => 66
	i64 6319713645133255417, ; 155: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 110
	i64 6401687960814735282, ; 156: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 107
	i64 6403742896930319886, ; 157: Xamarin.Firebase.Auth.dll => 0x58deaa3c7c766e0e => 141
	i64 6504860066809920875, ; 158: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 84
	i64 6548213210057960872, ; 159: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 95
	i64 6554405243736097249, ; 160: Xamarin.GooglePlayServices.Stats => 0x5af5ecd7aad901e1 => 175
	i64 6560151584539558821, ; 161: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 30
	i64 6589202984700901502, ; 162: Xamarin.Google.ErrorProne.Annotations.dll => 0x5b718d34180a787e => 160
	i64 6591024623626361694, ; 163: System.Web.Services.dll => 0x5b7805f9751a1b5e => 204
	i64 6617685658146568858, ; 164: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 4
	i64 6657448669945361351, ; 165: Xamarin.Google.Android.Play.Integrity => 0x5c64024aea7d73c7 => 158
	i64 6659513131007730089, ; 166: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 103
	i64 6671798237668743565, ; 167: SkiaSharp => 0x5c96fd260152998d => 42
	i64 6737082967062634076, ; 168: Xamarin.GooglePlayServices.Ads.Identifier.dll => 0x5d7eed43921a5e5c => 164
	i64 6830730639540541024, ; 169: Plugin.CloudFirestore.dll => 0x5ecba1536e30d660 => 37
	i64 6876862101832370452, ; 170: System.Xml.Linq => 0x5f6f85a57d108914 => 68
	i64 6894844156784520562, ; 171: System.Numerics.Vectors => 0x5faf683aead1ad72 => 61
	i64 6975328107116786489, ; 172: Xamarin.Firebase.Annotations => 0x60cd57f4e07e7339 => 139
	i64 7007997260651418532, ; 173: Xamarin.Firebase.Analytics.dll => 0x61416860ec09d3a4 => 138
	i64 7036436454368433159, ; 174: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 105
	i64 7103753931438454322, ; 175: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 102
	i64 7111211609209905225, ; 176: Xamarin.Plugin.Calendar => 0x62b0194821972049 => 195
	i64 7141577505875122296, ; 177: System.Runtime.InteropServices.WindowsRuntime.dll => 0x631bfae7659b5878 => 5
	i64 7152933704405506614, ; 178: Xamarin.Google.Android.Play.Integrity.dll => 0x6344534e69025a36 => 158
	i64 7473077275758116397, ; 179: Microsoft.DotNet.PlatformAbstractions => 0x67b5b430309b3e2d => 17
	i64 7482377913622462223, ; 180: Xamarin.Protobuf.Lite => 0x67d6bf11b0b1ff0f => 196
	i64 7488575175965059935, ; 181: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 68
	i64 7602111570124318452, ; 182: System.Reactive => 0x698020320025a6f4 => 62
	i64 7635363394907363464, ; 183: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 152
	i64 7637365915383206639, ; 184: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 137
	i64 7654504624184590948, ; 185: System.Net.Http => 0x6a3a4366801b8264 => 59
	i64 7711238313006071682, ; 186: Xamarin.GooglePlayServices.Measurement.Impl.dll => 0x6b03d263c91bff82 => 172
	i64 7735352534559001595, ; 187: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 189
	i64 7756872866845095010, ; 188: Xamarin.Forms.DataGrid.dll => 0x6ba5f2c6542af462 => 153
	i64 7820441508502274321, ; 189: System.Data => 0x6c87ca1e14ff8111 => 3
	i64 7836164640616011524, ; 190: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 79
	i64 7904570928025870493, ; 191: Xamarin.Firebase.Installations => 0x6db2ad60fadca09d => 148
	i64 7927939710195668715, ; 192: SkiaSharp.Views.Android.dll => 0x6e05b32992ed16eb => 44
	i64 7969431548154767168, ; 193: Xamarin.Firebase.Installations.dll => 0x6e991bc4e98e6740 => 148
	i64 7972383140441761405, ; 194: Microsoft.Extensions.Caching.Abstractions.dll => 0x6ea3983a0b58267d => 22
	i64 7991572870742010042, ; 195: Xamarin.Firebase.Firestore.dll => 0x6ee7c52f4d39e8ba => 147
	i64 8044118961405839122, ; 196: System.ComponentModel.Composition => 0x6fa2739369944712 => 202
	i64 8064050204834738623, ; 197: System.Collections.dll => 0x6fe942efa61731bf => 208
	i64 8076806894754251516, ; 198: Square.OkHttp => 0x70169513f940c2fc => 51
	i64 8083354569033831015, ; 199: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 106
	i64 8087206902342787202, ; 200: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 56
	i64 8101777744205214367, ; 201: Xamarin.Android.Support.Annotations => 0x706f4beeec84729f => 72
	i64 8103644804370223335, ; 202: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 198
	i64 8167236081217502503, ; 203: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 10
	i64 8185542183669246576, ; 204: System.Collections => 0x7198e33f4794aa70 => 208
	i64 8187102936927221770, ; 205: SkiaSharp.Views.Forms => 0x719e6ebe771ab80a => 45
	i64 8187640529827139739, ; 206: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 192
	i64 8318905602908530212, ; 207: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 205
	i64 8385935383968044654, ; 208: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0x7460d3cd16cb566e => 71
	i64 8398329775253868912, ; 209: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 89
	i64 8400357532724379117, ; 210: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 119
	i64 8426919725312979251, ; 211: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 109
	i64 8518412311883997971, ; 212: System.Collections.Immutable => 0x76377add7c28e313 => 54
	i64 8598790081731763592, ; 213: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 100
	i64 8601935802264776013, ; 214: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 130
	i64 8605236455805933405, ; 215: Xamarin.Google.Android.Recaptcha.dll => 0x776bf0f6cc8dd75d => 159
	i64 8609060182490045521, ; 216: Square.OkIO.dll => 0x7779869f8b475c51 => 52
	i64 8626175481042262068, ; 217: Java.Interop => 0x77b654e585b55834 => 10
	i64 8639588376636138208, ; 218: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 118
	i64 8684531736582871431, ; 219: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 201
	i64 8725526185868997716, ; 220: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 56
	i64 8853378295825400934, ; 221: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 188
	i64 8951477988056063522, ; 222: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 122
	i64 9087864182143226060, ; 223: Xamarin.GooglePlayServices.Measurement.Sdk.dll => 0x7e1e9452f7a490cc => 174
	i64 9111603110219107042, ; 224: Microsoft.Extensions.Caching.Memory => 0x7e72eac0def44ae2 => 23
	i64 9226675035665529780, ; 225: Xamarin.Protobuf.Lite.dll => 0x800bbc0f56cefbb4 => 196
	i64 9250544137016314866, ; 226: Microsoft.EntityFrameworkCore => 0x806088e191ee0bf2 => 19
	i64 9312692141327339315, ; 227: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 135
	i64 9313609423100664754, ; 228: Spire.Email => 0x8140966cb8a55bb2 => 46
	i64 9324707631942237306, ; 229: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 80
	i64 9358526837836468481, ; 230: Xamarin.GooglePlayServices.Measurement.Base.dll => 0x81e02a934e33d101 => 170
	i64 9490522350195345034, ; 231: Xamarin.Google.Android.Recaptcha => 0x83b51bcb684c868a => 159
	i64 9546090695785886164, ; 232: Xamarin.Forms.DataGrid => 0x847a86e913fab1d4 => 153
	i64 9626744691624713433, ; 233: Xamarin.Firebase.Core => 0x8599114ad7ab1cd9 => 145
	i64 9662334977499516867, ; 234: System.Numerics.dll => 0x8617827802b0cfc3 => 60
	i64 9678050649315576968, ; 235: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 91
	i64 9711637524876806384, ; 236: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 115
	i64 9808709177481450983, ; 237: Mono.Android.dll => 0x881f890734e555e7 => 32
	i64 9825649861376906464, ; 238: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 88
	i64 9834056768316610435, ; 239: System.Transactions.dll => 0x8879968718899783 => 203
	i64 9835328051471457940, ; 240: Xamarin.Firebase.Core.dll => 0x887e1ac0c5641e94 => 145
	i64 9864956466380592553, ; 241: Microsoft.EntityFrameworkCore.Sqlite => 0x88e75da3af4ed5a9 => 21
	i64 9866412715007501892, ; 242: Xamarin.Android.Arch.Lifecycle.Common.dll => 0x88ec8a16fd6b6644 => 70
	i64 9875200773399460291, ; 243: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 166
	i64 9907349773706910547, ; 244: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 100
	i64 9998632235833408227, ; 245: Mono.Security => 0x8ac2470b209ebae3 => 209
	i64 10038780035334861115, ; 246: System.Net.Http.dll => 0x8b50e941206af13b => 59
	i64 10066932231066380112, ; 247: QuestPDF => 0x8bb4ed86faa46750 => 41
	i64 10104292372708262378, ; 248: Xamarin.GooglePlayServices.Measurement.Base => 0x8c39a860cdf701ea => 170
	i64 10226222362177979215, ; 249: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 190
	i64 10229024438826829339, ; 250: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 95
	i64 10321854143672141184, ; 251: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 187
	i64 10352330178246763130, ; 252: Xamarin.Firebase.Measurement.Connector => 0x8faadd72b7f4627a => 150
	i64 10376576884623852283, ; 253: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 129
	i64 10406448008575299332, ; 254: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 193
	i64 10430153318873392755, ; 255: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 93
	i64 10447083246144586668, ; 256: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 14
	i64 10781619482110599916, ; 257: NativeMedia.dll => 0x95a001cba6a222ec => 34
	i64 10811915265162633087, ; 258: Microsoft.EntityFrameworkCore.Relational.dll => 0x960ba3a651a45f7f => 20
	i64 10847732767863316357, ; 259: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 81
	i64 10850923258212604222, ; 260: Xamarin.Android.Arch.Lifecycle.Runtime => 0x9696393672c9593e => 71
	i64 10857315922431607327, ; 261: Xamarin.Firebase.ProtoliteWellKnownTypes => 0x96acef4e92ba821f => 151
	i64 10966933586012635777, ; 262: Xamarin.Grpc.OkHttp.dll => 0x98325ffdbd958281 => 181
	i64 11002576679268595294, ; 263: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 28
	i64 11019817191295005410, ; 264: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 78
	i64 11023048688141570732, ; 265: System.Core => 0x98f9bc61168392ac => 55
	i64 11037814507248023548, ; 266: System.Xml => 0x992e31d0412bf7fc => 67
	i64 11071824625609515081, ; 267: Xamarin.Google.ErrorProne.Annotations => 0x99a705d600e0a049 => 160
	i64 11122995063473561350, ; 268: Xamarin.CommunityToolkit.dll => 0x9a5cd113fcc3df06 => 136
	i64 11162124722117608902, ; 269: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 134
	i64 11226290749488709958, ; 270: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 30
	i64 11299661109949763898, ; 271: Xamarin.AndroidX.Collection.Jvm => 0x9cd075e94cda113a => 87
	i64 11340910727871153756, ; 272: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 94
	i64 11376351552967644903, ; 273: Xamarin.Firebase.Annotations.dll => 0x9de0eb76829996e7 => 139
	i64 11376461258732682436, ; 274: Xamarin.Android.Support.Compat => 0x9de14f3d5fc13cc4 => 73
	i64 11392833485892708388, ; 275: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 121
	i64 11398376662953476300, ; 276: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x9e2f2b2f0b71c0cc => 21
	i64 11496466075493495264, ; 277: Xamarin.Grpc.Context.dll => 0x9f8ba6fc1a1e71e0 => 179
	i64 11529969570048099689, ; 278: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 134
	i64 11530571088791430846, ; 279: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 29
	i64 11543422055205009205, ; 280: Xamarin.Firebase.Firestore => 0xa032793314e77735 => 147
	i64 11578238080964724296, ; 281: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 105
	i64 11580057168383206117, ; 282: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 76
	i64 11591352189662810718, ; 283: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 127
	i64 11597940890313164233, ; 284: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11666126733838079721, ; 285: Xamarin.Plugin.Calendar.dll => 0xa1e66874631b56e9 => 195
	i64 11672361001936329215, ; 286: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 102
	i64 11902137738784770347, ; 287: Xamarin.Io.OpenCensus.OpenCensusContribGrpcMetrics.dll => 0xa52ce3369409892b => 185
	i64 12102847907131387746, ; 288: System.Buffers => 0xa7f5f40c43256f62 => 53
	i64 12137774235383566651, ; 289: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 132
	i64 12145679461940342714, ; 290: System.Text.Json => 0xa88e1f1ebcb62fba => 66
	i64 12269460666702402136, ; 291: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 54
	i64 12279246230491828964, ; 292: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 50
	i64 12336928085371509187, ; 293: Xamarin.GooglePlayServices.Auth.Api.Phone => 0xab3592bad41bd9c3 => 165
	i64 12346958216201575315, ; 294: Xamarin.JavaX.Inject.dll => 0xab593514a5491b93 => 186
	i64 12414299427252656003, ; 295: Xamarin.Android.Support.Compat.dll => 0xac48738e28bad783 => 73
	i64 12451044538927396471, ; 296: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 101
	i64 12466513435562512481, ; 297: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 113
	i64 12487638416075308985, ; 298: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 96
	i64 12528155905152483962, ; 299: Firebase.Auth => 0xaddcf36b3153827a => 7
	i64 12538491095302438457, ; 300: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 85
	i64 12550732019250633519, ; 301: System.IO.Compression => 0xae2d28465e8e1b2f => 200
	i64 12700543734426720211, ; 302: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 86
	i64 12828192437253469131, ; 303: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 191
	i64 12843321153144804894, ; 304: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 31
	i64 12845046283116214416, ; 305: Xamarin.Firebase.Analytics => 0xb242c589dc97f890 => 138
	i64 12952608645614506925, ; 306: Xamarin.Android.Support.Core.Utils => 0xb3c0e8eff48193ad => 74
	i64 12963446364377008305, ; 307: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 199
	i64 13084382143907087733, ; 308: Xamarin.Grpc.Context => 0xb595103c610bc575 => 179
	i64 13106026140046202731, ; 309: HarfBuzzSharp.dll => 0xb5e1f555ee70176b => 9
	i64 13118109562954089177, ; 310: Xamarin_Postep.dll => 0xb60ce325108882d9 => 197
	i64 13129914918964716986, ; 311: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 99
	i64 13370592475155966277, ; 312: System.Runtime.Serialization => 0xb98de304062ea945 => 6
	i64 13401370062847626945, ; 313: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 132
	i64 13402939433517888790, ; 314: Xamarin.Google.Guava.FailureAccess => 0xba00ce6728e8b516 => 162
	i64 13403416310143541304, ; 315: Microcharts.Droid => 0xba02801ea6c86038 => 12
	i64 13404347523447273790, ; 316: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 89
	i64 13454009404024712428, ; 317: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 163
	i64 13465488254036897740, ; 318: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 189
	i64 13491513212026656886, ; 319: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 82
	i64 13492263892638604996, ; 320: SkiaSharp.Views.Forms.dll => 0xbb3e2686788d9ec4 => 45
	i64 13572454107664307259, ; 321: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 123
	i64 13609095008681508810, ; 322: Xamarin.Grpc.Protobuf.Lite => 0xbcdd37ce6b00bfca => 182
	i64 13647894001087880694, ; 323: System.Data.dll => 0xbd670f48cb071df6 => 3
	i64 13689508124566831556, ; 324: Square.OkHttp.dll => 0xbdfae71bf2a141c4 => 51
	i64 13818328264475132956, ; 325: Microsoft.Bcl.HashCode => 0xbfc4905809c7c41c => 15
	i64 13828521679616088467, ; 326: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 188
	i64 13829530607229561650, ; 327: Xamarin.Firebase.Installations.InterOp => 0xbfec5cd0b64f6b32 => 149
	i64 13865727802090930648, ; 328: Xamarin.Google.Guava.dll => 0xc06cf5f8e3e341d8 => 161
	i64 13955418299340266673, ; 329: Microsoft.Extensions.DependencyModel.dll => 0xc1ab9b0118299cb1 => 27
	i64 13959074834287824816, ; 330: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 101
	i64 13967638549803255703, ; 331: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 154
	i64 13975254687929967048, ; 332: Xamarin.Google.Guava => 0xc1f2141837ada1c8 => 161
	i64 14124974489674258913, ; 333: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 85
	i64 14133832980772275001, ; 334: Microsoft.EntityFrameworkCore.dll => 0xc425763635a1c339 => 19
	i64 14165531176311179688, ; 335: Xamarin.Firebase.Auth => 0xc496138d7abfc9a8 => 141
	i64 14172845254133543601, ; 336: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 116
	i64 14261073672896646636, ; 337: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 121
	i64 14382082037123372364, ; 338: Xamarin.Firebase.Auth.Interop => 0xc7976b69c943d54c => 142
	i64 14486659737292545672, ; 339: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 108
	i64 14495724990987328804, ; 340: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 124
	i64 14524915121004231475, ; 341: Xamarin.JavaX.Inject => 0xc992dd58a4283b33 => 186
	i64 14551742072151931844, ; 342: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 65
	i64 14644440854989303794, ; 343: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 114
	i64 14669215534098758659, ; 344: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 26
	i64 14671188939680189912, ; 345: Xamarin.Grpc.Core => 0xcb9a889bfe470dd8 => 180
	i64 14678510994762383812, ; 346: Xamarin.GooglePlayServices.Location.dll => 0xcbb48bfaca7a41c4 => 168
	i64 14749128323909883815, ; 347: QuestPDF.dll => 0xccaf6e10fd4d17a7 => 41
	i64 14789919016435397935, ; 348: Xamarin.Firebase.Common.dll => 0xcd4058fc2f6d352f => 143
	i64 14792063746108907174, ; 349: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 163
	i64 14809388726477333247, ; 350: Xamarin.GooglePlayServices.Stats.dll => 0xcd8584954e5b22ff => 175
	i64 14852515768018889994, ; 351: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 94
	i64 14931407803744742450, ; 352: HarfBuzzSharp => 0xcf3704499ab36c32 => 9
	i64 14935719434541007538, ; 353: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 4
	i64 14954917835170835695, ; 354: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 25
	i64 14987728460634540364, ; 355: System.IO.Compression.dll => 0xcfff1ba06622494c => 200
	i64 14988210264188246988, ; 356: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 96
	i64 15099396616243600100, ; 357: Xamarin.KotlinX.Coroutines.Play.Services => 0xd18bd538f1ef5ae4 => 194
	i64 15122444792226611924, ; 358: NativeMedia => 0xd1ddb76a981f82d4 => 34
	i64 15150743910298169673, ; 359: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 122
	i64 15188640517174936311, ; 360: Xamarin.Android.Arch.Core.Common => 0xd2c8e413d75142f7 => 69
	i64 15227001540531775957, ; 361: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 24
	i64 15246441518555807158, ; 362: Xamarin.Android.Arch.Core.Common.dll => 0xd3963dc832493db6 => 69
	i64 15279429628684179188, ; 363: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 192
	i64 15288853870840668147, ; 364: Plugin.Messaging.Abstractions.dll => 0xd42ceb977a505ff3 => 39
	i64 15370334346939861994, ; 365: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 93
	i64 15391712275433856905, ; 366: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 25
	i64 15582737692548360875, ; 367: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 112
	i64 15609085926864131306, ; 368: System.dll => 0xd89e9cf3334914ea => 57
	i64 15620595871140898079, ; 369: Microsoft.Extensions.DependencyModel => 0xd8c7812eef49651f => 27
	i64 15642253503105666648, ; 370: Xamarin_Postep.Android => 0xd91472af53390e58 => 0
	i64 15777549416145007739, ; 371: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 126
	i64 15788897513097211459, ; 372: Xamarin.Firebase.ProtoliteWellKnownTypes.dll => 0xdb1d6ea28f352e43 => 151
	i64 15810740023422282496, ; 373: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 156
	i64 15930129725311349754, ; 374: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 176
	i64 15963349826457351533, ; 375: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 207
	i64 16154507427712707110, ; 376: System => 0xe03056ea4e39aa26 => 57
	i64 16303230644352379770, ; 377: Xamarin.Grpc.OkHttp => 0xe240b5e48fe2eb7a => 181
	i64 16321164108206115771, ; 378: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 28
	i64 16324796876805858114, ; 379: SkiaSharp.dll => 0xe28d5444586b6342 => 42
	i64 16423015068819898779, ; 380: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 191
	i64 16565028646146589191, ; 381: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 202
	i64 16579050217386591297, ; 382: Xamarin.Google.Guava.FailureAccess.dll => 0xe6149e5548b0c441 => 162
	i64 16621146507174665210, ; 383: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 90
	i64 16677317093839702854, ; 384: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 119
	i64 16755018182064898362, ; 385: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 48
	i64 16822611501064131242, ; 386: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 198
	i64 16833383113903931215, ; 387: mscorlib => 0xe99c30c1484d7f4f => 33
	i64 16866861824412579935, ; 388: System.Runtime.InteropServices.WindowsRuntime => 0xea132176ffb5785f => 5
	i64 16932527889823454152, ; 389: Xamarin.Android.Support.Core.Utils.dll => 0xeafc6c67465253c8 => 74
	i64 17001062948826229159, ; 390: Microcharts.Forms.dll => 0xebefe8ad2cd7a9a7 => 13
	i64 17024911836938395553, ; 391: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 77
	i64 17031351772568316411, ; 392: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 117
	i64 17037200463775726619, ; 393: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 104
	i64 17187273293601214786, ; 394: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 2
	i64 17262142791295433179, ; 395: Xamarin_Postep.Android.dll => 0xef8f7368f13bf9db => 0
	i64 17544493274320527064, ; 396: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 83
	i64 17580703809748094541, ; 397: Xamarin.GooglePlayServices.Measurement.Api => 0xf3fb34f7e9644e4d => 169
	i64 17605100189928655442, ; 398: Xamarin.Firebase.AppCheck.Interop => 0xf451e158cfdc0a52 => 140
	i64 17671790519499593115, ; 399: SkiaSharp.Views.Android => 0xf53ecfd92be3959b => 44
	i64 17677828421478984182, ; 400: Xamarin.Firebase.Installations.InterOp.dll => 0xf5544349c68f29f6 => 149
	i64 17704177640604968747, ; 401: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 113
	i64 17710060891934109755, ; 402: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 111
	i64 17760961058993581169, ; 403: Xamarin.Android.Arch.Lifecycle.Common => 0xf67b9bfb46dbac71 => 70
	i64 17762564930801780032, ; 404: Xamarin_Postep => 0xf6814eb1c8404540 => 197
	i64 17838668724098252521, ; 405: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 53
	i64 17882897186074144999, ; 406: FormsViewGroup => 0xf82cd03e3ac830e7 => 8
	i64 17891337867145587222, ; 407: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 187
	i64 17892495832318972303, ; 408: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 156
	i64 17928294245072900555, ; 409: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 201
	i64 17986907704309214542, ; 410: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 167
	i64 18017743553296241350, ; 411: Microsoft.Extensions.Caching.Abstractions => 0xfa0be24cb44e92c6 => 22
	i64 18116111925905154859, ; 412: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 82
	i64 18121036031235206392, ; 413: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 117
	i64 18129453464017766560, ; 414: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 206
	i64 18260797123374478311, ; 415: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 99
	i64 18305135509493619199, ; 416: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 118
	i64 18370042311372477656, ; 417: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 49
	i64 18380184030268848184, ; 418: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 133
	i64 18405404908905297253 ; 419: Plugin.Messaging.dll => 0xff6d223fa687f565 => 40
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [420 x i32] [
	i32 17, i32 98, i32 38, i32 31, i32 32, i32 12, i32 86, i32 125, ; 0..7
	i32 87, i32 126, i32 92, i32 168, i32 174, i32 62, i32 185, i32 110, ; 8..15
	i32 166, i32 199, i32 103, i32 49, i32 97, i32 13, i32 203, i32 155, ; 16..23
	i32 209, i32 15, i32 35, i32 157, i32 178, i32 48, i32 184, i32 81, ; 24..31
	i32 146, i32 35, i32 142, i32 11, i32 6, i32 144, i32 177, i32 50, ; 32..39
	i32 79, i32 112, i32 104, i32 16, i32 36, i32 58, i32 80, i32 125, ; 40..47
	i32 14, i32 76, i32 177, i32 40, i32 111, i32 136, i32 180, i32 207, ; 48..55
	i32 190, i32 36, i32 116, i32 84, i32 43, i32 18, i32 97, i32 204, ; 56..63
	i32 205, i32 124, i32 107, i32 65, i32 63, i32 183, i32 91, i32 131, ; 64..71
	i32 64, i32 75, i32 67, i32 33, i32 26, i32 120, i32 63, i32 127, ; 72..79
	i32 146, i32 152, i32 157, i32 11, i32 52, i32 106, i32 77, i32 61, ; 80..87
	i32 193, i32 143, i32 167, i32 165, i32 43, i32 129, i32 169, i32 128, ; 88..95
	i32 23, i32 60, i32 64, i32 24, i32 1, i32 123, i32 194, i32 98, ; 96..103
	i32 173, i32 164, i32 29, i32 58, i32 182, i32 92, i32 176, i32 47, ; 104..111
	i32 172, i32 20, i32 206, i32 18, i32 133, i32 144, i32 2, i32 109, ; 112..119
	i32 83, i32 75, i32 128, i32 173, i32 39, i32 184, i32 171, i32 16, ; 120..127
	i32 154, i32 137, i32 114, i32 46, i32 183, i32 115, i32 131, i32 130, ; 128..135
	i32 90, i32 55, i32 38, i32 78, i32 135, i32 88, i32 72, i32 120, ; 136..143
	i32 37, i32 108, i32 171, i32 155, i32 8, i32 150, i32 140, i32 178, ; 144..151
	i32 47, i32 7, i32 66, i32 110, i32 107, i32 141, i32 84, i32 95, ; 152..159
	i32 175, i32 30, i32 160, i32 204, i32 4, i32 158, i32 103, i32 42, ; 160..167
	i32 164, i32 37, i32 68, i32 61, i32 139, i32 138, i32 105, i32 102, ; 168..175
	i32 195, i32 5, i32 158, i32 17, i32 196, i32 68, i32 62, i32 152, ; 176..183
	i32 137, i32 59, i32 172, i32 189, i32 153, i32 3, i32 79, i32 148, ; 184..191
	i32 44, i32 148, i32 22, i32 147, i32 202, i32 208, i32 51, i32 106, ; 192..199
	i32 56, i32 72, i32 198, i32 10, i32 208, i32 45, i32 192, i32 205, ; 200..207
	i32 71, i32 89, i32 119, i32 109, i32 54, i32 100, i32 130, i32 159, ; 208..215
	i32 52, i32 10, i32 118, i32 201, i32 56, i32 188, i32 122, i32 174, ; 216..223
	i32 23, i32 196, i32 19, i32 135, i32 46, i32 80, i32 170, i32 159, ; 224..231
	i32 153, i32 145, i32 60, i32 91, i32 115, i32 32, i32 88, i32 203, ; 232..239
	i32 145, i32 21, i32 70, i32 166, i32 100, i32 209, i32 59, i32 41, ; 240..247
	i32 170, i32 190, i32 95, i32 187, i32 150, i32 129, i32 193, i32 93, ; 248..255
	i32 14, i32 34, i32 20, i32 81, i32 71, i32 151, i32 181, i32 28, ; 256..263
	i32 78, i32 55, i32 67, i32 160, i32 136, i32 134, i32 30, i32 87, ; 264..271
	i32 94, i32 139, i32 73, i32 121, i32 21, i32 179, i32 134, i32 29, ; 272..279
	i32 147, i32 105, i32 76, i32 127, i32 1, i32 195, i32 102, i32 185, ; 280..287
	i32 53, i32 132, i32 66, i32 54, i32 50, i32 165, i32 186, i32 73, ; 288..295
	i32 101, i32 113, i32 96, i32 7, i32 85, i32 200, i32 86, i32 191, ; 296..303
	i32 31, i32 138, i32 74, i32 199, i32 179, i32 9, i32 197, i32 99, ; 304..311
	i32 6, i32 132, i32 162, i32 12, i32 89, i32 163, i32 189, i32 82, ; 312..319
	i32 45, i32 123, i32 182, i32 3, i32 51, i32 15, i32 188, i32 149, ; 320..327
	i32 161, i32 27, i32 101, i32 154, i32 161, i32 85, i32 19, i32 141, ; 328..335
	i32 116, i32 121, i32 142, i32 108, i32 124, i32 186, i32 65, i32 114, ; 336..343
	i32 26, i32 180, i32 168, i32 41, i32 143, i32 163, i32 175, i32 94, ; 344..351
	i32 9, i32 4, i32 25, i32 200, i32 96, i32 194, i32 34, i32 122, ; 352..359
	i32 69, i32 24, i32 69, i32 192, i32 39, i32 93, i32 25, i32 112, ; 360..367
	i32 57, i32 27, i32 0, i32 126, i32 151, i32 156, i32 176, i32 207, ; 368..375
	i32 57, i32 181, i32 28, i32 42, i32 191, i32 202, i32 162, i32 90, ; 376..383
	i32 119, i32 48, i32 198, i32 33, i32 5, i32 74, i32 13, i32 77, ; 384..391
	i32 117, i32 104, i32 2, i32 0, i32 83, i32 169, i32 140, i32 44, ; 392..399
	i32 149, i32 113, i32 111, i32 70, i32 197, i32 53, i32 8, i32 187, ; 400..407
	i32 156, i32 201, i32 167, i32 22, i32 82, i32 117, i32 206, i32 99, ; 408..415
	i32 118, i32 49, i32 133, i32 40 ; 416..419
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
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
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}

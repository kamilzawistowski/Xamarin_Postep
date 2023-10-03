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
@assembly_image_cache_hashes = local_unnamed_addr constant [318 x i64] [
	i64 15690660930947125, ; 0: Microsoft.DotNet.PlatformAbstractions.dll => 0x37be92af148835 => 15
	i64 24362543149721218, ; 1: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 88
	i64 36418902923615093, ; 2: Plugin.LocalNotification => 0x8162cc9bdf1b75 => 33
	i64 98382396393917666, ; 3: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 29
	i64 120698629574877762, ; 4: Mono.Android => 0x1accec39cafe242 => 30
	i64 181099460066822533, ; 5: Microcharts.Droid.dll => 0x28364ffda4c4985 => 10
	i64 210515253464952879, ; 6: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 77
	i64 232391251801502327, ; 7: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 115
	i64 295915112840604065, ; 8: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 116
	i64 316157742385208084, ; 9: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 82
	i64 435170709725415398, ; 10: Xamarin.GooglePlayServices.Location => 0x60a097471d687e6 => 136
	i64 634308326490598313, ; 11: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 100
	i64 687654259221141486, ; 12: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 134
	i64 702024105029695270, ; 13: System.Drawing.Common => 0x9be17343c0e7726 => 148
	i64 720058930071658100, ; 14: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 93
	i64 870603111519317375, ; 15: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 44
	i64 872800313462103108, ; 16: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 87
	i64 887546508555532406, ; 17: Microcharts.Forms => 0xc5132d8dc173876 => 11
	i64 940822596282819491, ; 18: System.Transactions => 0xd0e792aa81923a3 => 152
	i64 996343623809489702, ; 19: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 130
	i64 1000557547492888992, ; 20: Mono.Security.dll => 0xde2b1c9cba651a0 => 158
	i64 1010800728818218806, ; 21: Microsoft.Bcl.HashCode.dll => 0xe0715e84bea7736 => 13
	i64 1120440138749646132, ; 22: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 132
	i64 1301485588176585670, ; 23: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 43
	i64 1315114680217950157, ; 24: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 72
	i64 1416135423712704079, ; 25: Microcharts => 0x13a71faa343e364f => 9
	i64 1425944114962822056, ; 26: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 5
	i64 1518315023656898250, ; 27: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 45
	i64 1624659445732251991, ; 28: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 70
	i64 1628611045998245443, ; 29: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 102
	i64 1636321030536304333, ; 30: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 94
	i64 1672383392659050004, ; 31: Microsoft.Data.Sqlite.dll => 0x17357fd5bfb48e14 => 14
	i64 1731380447121279447, ; 32: Newtonsoft.Json => 0x18071957e9b889d7 => 32
	i64 1743969030606105336, ; 33: System.Memory.dll => 0x1833d297e88f2af8 => 51
	i64 1795316252682057001, ; 34: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 71
	i64 1836611346387731153, ; 35: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 115
	i64 1865037103900624886, ; 36: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 12
	i64 1875917498431009007, ; 37: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 68
	i64 1976111867648823449, ; 38: Plugin.Messaging => 0x1b6c8f4613a45099 => 35
	i64 1981742497975770890, ; 39: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 101
	i64 2040001226662520565, ; 40: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 156
	i64 2064708342624596306, ; 41: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 141
	i64 2133195048986300728, ; 42: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 32
	i64 2136356949452311481, ; 43: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 106
	i64 2165725771938924357, ; 44: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 75
	i64 2188974421706709258, ; 45: SkiaSharp.HarfBuzz.dll => 0x1e60cca38c3e990a => 38
	i64 2192948757939169934, ; 46: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x1e6eeb46cf992a8e => 16
	i64 2262844636196693701, ; 47: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 87
	i64 2284400282711631002, ; 48: System.Web.Services => 0x1fb3d1f42fd4249a => 153
	i64 2287887973817120656, ; 49: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 154
	i64 2304837677853103545, ; 50: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 114
	i64 2329709569556905518, ; 51: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 97
	i64 2335503487726329082, ; 52: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 57
	i64 2337758774805907496, ; 53: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 55
	i64 2470498323731680442, ; 54: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 81
	i64 2479423007379663237, ; 55: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 121
	i64 2497223385847772520, ; 56: System.Runtime => 0x22a7eb7046413568 => 56
	i64 2547086958574651984, ; 57: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 67
	i64 2592350477072141967, ; 58: System.Xml.dll => 0x23f9e10627330e8f => 59
	i64 2624866290265602282, ; 59: mscorlib.dll => 0x246d65fbde2db8ea => 31
	i64 2656907746661064104, ; 60: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 24
	i64 2694427813909235223, ; 61: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 110
	i64 2783046991838674048, ; 62: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 55
	i64 2787234703088983483, ; 63: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 117
	i64 2960931600190307745, ; 64: Xamarin.Forms.Core => 0x2917579a49927da1 => 127
	i64 3017704767998173186, ; 65: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 132
	i64 3122911337338800527, ; 66: Microcharts.dll => 0x2b56cf50bf1e898f => 9
	i64 3289520064315143713, ; 67: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 96
	i64 3303437397778967116, ; 68: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 69
	i64 3311221304742556517, ; 69: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 54
	i64 3344514922410554693, ; 70: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 144
	i64 3411255996856937470, ; 71: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 135
	i64 3461602852075779363, ; 72: SkiaSharp.HarfBuzz => 0x300a15741f74b523 => 38
	i64 3493805808809882663, ; 73: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 119
	i64 3522470458906976663, ; 74: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 118
	i64 3523004241079211829, ; 75: Microsoft.Extensions.Caching.Memory.dll => 0x30e439b10bb89735 => 21
	i64 3531994851595924923, ; 76: System.Numerics => 0x31042a9aade235bb => 53
	i64 3571415421602489686, ; 77: System.Runtime.dll => 0x319037675df7e556 => 56
	i64 3638003163729360188, ; 78: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 22
	i64 3716579019761409177, ; 79: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 80: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 113
	i64 3772598417116884899, ; 81: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 88
	i64 3869221888984012293, ; 82: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 27
	i64 3966267475168208030, ; 83: System.Memory => 0x370b03412596249e => 51
	i64 4201423742386704971, ; 84: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 82
	i64 4247996603072512073, ; 85: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 137
	i64 4337444564132831293, ; 86: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 42
	i64 4513320955448359355, ; 87: Microsoft.EntityFrameworkCore.Relational => 0x3ea2897f12d379bb => 18
	i64 4525561845656915374, ; 88: System.ServiceModel.Internals => 0x3ece06856b710dae => 155
	i64 4612482779465751747, ; 89: Microsoft.EntityFrameworkCore.Abstractions => 0x4002d4a662a99cc3 => 16
	i64 4636684751163556186, ; 90: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 123
	i64 4743821336939966868, ; 91: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 2
	i64 4759461199762736555, ; 92: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 99
	i64 4782108999019072045, ; 93: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 74
	i64 4794310189461587505, ; 94: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 67
	i64 4795410492532947900, ; 95: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 118
	i64 4848145489223852674, ; 96: Plugin.Messaging.Abstractions => 0x434812a2c899a282 => 34
	i64 5129462924058778861, ; 97: Microsoft.Data.Sqlite => 0x472f835a350f5ced => 14
	i64 5142919913060024034, ; 98: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 129
	i64 5203618020066742981, ; 99: Xamarin.Essentials => 0x4836f704f0e652c5 => 126
	i64 5205316157927637098, ; 100: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 104
	i64 5251660479835658152, ; 101: Spire.Email.dll => 0x48e1a561c58fd7a8 => 41
	i64 5348796042099802469, ; 102: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 105
	i64 5376510917114486089, ; 103: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 121
	i64 5408338804355907810, ; 104: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 120
	i64 5451019430259338467, ; 105: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 80
	i64 5507995362134886206, ; 106: System.Core.dll => 0x4c705499688c873e => 48
	i64 5528247634813456972, ; 107: Plugin.LocalNotification.dll => 0x4cb847ef1773124c => 33
	i64 5692067934154308417, ; 108: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 125
	i64 5757522595884336624, ; 109: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 78
	i64 5767696078500135884, ; 110: Xamarin.Android.Support.Annotations.dll => 0x500af9065b6a03cc => 64
	i64 5814345312393086621, ; 111: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 110
	i64 5896680224035167651, ; 112: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 98
	i64 6085203216496545422, ; 113: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 130
	i64 6086316965293125504, ; 114: FormsViewGroup.dll => 0x5476f10882baef80 => 6
	i64 6183170893902868313, ; 115: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 42
	i64 6222399776351216807, ; 116: System.Text.Json.dll => 0x565a67a0ffe264a7 => 58
	i64 6319713645133255417, ; 117: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 100
	i64 6401687960814735282, ; 118: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 97
	i64 6504860066809920875, ; 119: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 75
	i64 6548213210057960872, ; 120: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 85
	i64 6560151584539558821, ; 121: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 28
	i64 6591024623626361694, ; 122: System.Web.Services.dll => 0x5b7805f9751a1b5e => 153
	i64 6617685658146568858, ; 123: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 4
	i64 6659513131007730089, ; 124: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 93
	i64 6671798237668743565, ; 125: SkiaSharp => 0x5c96fd260152998d => 37
	i64 6876862101832370452, ; 126: System.Xml.Linq => 0x5f6f85a57d108914 => 60
	i64 6894844156784520562, ; 127: System.Numerics.Vectors => 0x5faf683aead1ad72 => 54
	i64 7036436454368433159, ; 128: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 95
	i64 7103753931438454322, ; 129: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 92
	i64 7111211609209905225, ; 130: Xamarin.Plugin.Calendar => 0x62b0194821972049 => 145
	i64 7473077275758116397, ; 131: Microsoft.DotNet.PlatformAbstractions => 0x67b5b430309b3e2d => 15
	i64 7488575175965059935, ; 132: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 60
	i64 7635363394907363464, ; 133: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 127
	i64 7637365915383206639, ; 134: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 126
	i64 7654504624184590948, ; 135: System.Net.Http => 0x6a3a4366801b8264 => 52
	i64 7735352534559001595, ; 136: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 140
	i64 7756872866845095010, ; 137: Xamarin.Forms.DataGrid.dll => 0x6ba5f2c6542af462 => 128
	i64 7820441508502274321, ; 138: System.Data => 0x6c87ca1e14ff8111 => 3
	i64 7836164640616011524, ; 139: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 70
	i64 7927939710195668715, ; 140: SkiaSharp.Views.Android.dll => 0x6e05b32992ed16eb => 39
	i64 7972383140441761405, ; 141: Microsoft.Extensions.Caching.Abstractions.dll => 0x6ea3983a0b58267d => 20
	i64 8044118961405839122, ; 142: System.ComponentModel.Composition => 0x6fa2739369944712 => 151
	i64 8064050204834738623, ; 143: System.Collections.dll => 0x6fe942efa61731bf => 157
	i64 8083354569033831015, ; 144: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 96
	i64 8087206902342787202, ; 145: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 49
	i64 8101777744205214367, ; 146: Xamarin.Android.Support.Annotations => 0x706f4beeec84729f => 64
	i64 8103644804370223335, ; 147: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 147
	i64 8167236081217502503, ; 148: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 8
	i64 8185542183669246576, ; 149: System.Collections => 0x7198e33f4794aa70 => 157
	i64 8187102936927221770, ; 150: SkiaSharp.Views.Forms => 0x719e6ebe771ab80a => 40
	i64 8187640529827139739, ; 151: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 143
	i64 8318905602908530212, ; 152: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 154
	i64 8385935383968044654, ; 153: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0x7460d3cd16cb566e => 63
	i64 8398329775253868912, ; 154: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 79
	i64 8400357532724379117, ; 155: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 109
	i64 8426919725312979251, ; 156: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 99
	i64 8518412311883997971, ; 157: System.Collections.Immutable => 0x76377add7c28e313 => 47
	i64 8598790081731763592, ; 158: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 90
	i64 8601935802264776013, ; 159: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 120
	i64 8626175481042262068, ; 160: Java.Interop => 0x77b654e585b55834 => 8
	i64 8639588376636138208, ; 161: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 108
	i64 8684531736582871431, ; 162: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 150
	i64 8725526185868997716, ; 163: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 49
	i64 8853378295825400934, ; 164: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 139
	i64 8951477988056063522, ; 165: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 112
	i64 9111603110219107042, ; 166: Microsoft.Extensions.Caching.Memory => 0x7e72eac0def44ae2 => 21
	i64 9250544137016314866, ; 167: Microsoft.EntityFrameworkCore => 0x806088e191ee0bf2 => 17
	i64 9312692141327339315, ; 168: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 125
	i64 9313609423100664754, ; 169: Spire.Email => 0x8140966cb8a55bb2 => 41
	i64 9324707631942237306, ; 170: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 71
	i64 9546090695785886164, ; 171: Xamarin.Forms.DataGrid => 0x847a86e913fab1d4 => 128
	i64 9662334977499516867, ; 172: System.Numerics.dll => 0x8617827802b0cfc3 => 53
	i64 9678050649315576968, ; 173: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 81
	i64 9711637524876806384, ; 174: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 105
	i64 9808709177481450983, ; 175: Mono.Android.dll => 0x881f890734e555e7 => 30
	i64 9825649861376906464, ; 176: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 78
	i64 9834056768316610435, ; 177: System.Transactions.dll => 0x8879968718899783 => 152
	i64 9864956466380592553, ; 178: Microsoft.EntityFrameworkCore.Sqlite => 0x88e75da3af4ed5a9 => 19
	i64 9866412715007501892, ; 179: Xamarin.Android.Arch.Lifecycle.Common.dll => 0x88ec8a16fd6b6644 => 62
	i64 9875200773399460291, ; 180: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 134
	i64 9907349773706910547, ; 181: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 90
	i64 9998632235833408227, ; 182: Mono.Security => 0x8ac2470b209ebae3 => 158
	i64 10038780035334861115, ; 183: System.Net.Http.dll => 0x8b50e941206af13b => 52
	i64 10066932231066380112, ; 184: QuestPDF => 0x8bb4ed86faa46750 => 36
	i64 10226222362177979215, ; 185: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 141
	i64 10229024438826829339, ; 186: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 85
	i64 10321854143672141184, ; 187: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 138
	i64 10376576884623852283, ; 188: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 119
	i64 10406448008575299332, ; 189: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 144
	i64 10430153318873392755, ; 190: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 83
	i64 10447083246144586668, ; 191: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 12
	i64 10811915265162633087, ; 192: Microsoft.EntityFrameworkCore.Relational.dll => 0x960ba3a651a45f7f => 18
	i64 10847732767863316357, ; 193: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 72
	i64 10850923258212604222, ; 194: Xamarin.Android.Arch.Lifecycle.Runtime => 0x9696393672c9593e => 63
	i64 11002576679268595294, ; 195: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 26
	i64 11023048688141570732, ; 196: System.Core => 0x98f9bc61168392ac => 48
	i64 11037814507248023548, ; 197: System.Xml => 0x992e31d0412bf7fc => 59
	i64 11162124722117608902, ; 198: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 124
	i64 11226290749488709958, ; 199: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 28
	i64 11340910727871153756, ; 200: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 84
	i64 11376461258732682436, ; 201: Xamarin.Android.Support.Compat => 0x9de14f3d5fc13cc4 => 65
	i64 11392833485892708388, ; 202: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 111
	i64 11398376662953476300, ; 203: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x9e2f2b2f0b71c0cc => 19
	i64 11529969570048099689, ; 204: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 124
	i64 11530571088791430846, ; 205: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 27
	i64 11578238080964724296, ; 206: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 95
	i64 11580057168383206117, ; 207: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 68
	i64 11591352189662810718, ; 208: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 117
	i64 11597940890313164233, ; 209: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11666126733838079721, ; 210: Xamarin.Plugin.Calendar.dll => 0xa1e66874631b56e9 => 145
	i64 11672361001936329215, ; 211: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 92
	i64 12102847907131387746, ; 212: System.Buffers => 0xa7f5f40c43256f62 => 46
	i64 12137774235383566651, ; 213: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 122
	i64 12145679461940342714, ; 214: System.Text.Json => 0xa88e1f1ebcb62fba => 58
	i64 12269460666702402136, ; 215: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 47
	i64 12279246230491828964, ; 216: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 45
	i64 12414299427252656003, ; 217: Xamarin.Android.Support.Compat.dll => 0xac48738e28bad783 => 65
	i64 12451044538927396471, ; 218: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 91
	i64 12466513435562512481, ; 219: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 103
	i64 12487638416075308985, ; 220: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 86
	i64 12538491095302438457, ; 221: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 76
	i64 12550732019250633519, ; 222: System.IO.Compression => 0xae2d28465e8e1b2f => 149
	i64 12700543734426720211, ; 223: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 77
	i64 12828192437253469131, ; 224: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 142
	i64 12843321153144804894, ; 225: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 29
	i64 12952608645614506925, ; 226: Xamarin.Android.Support.Core.Utils => 0xb3c0e8eff48193ad => 66
	i64 12963446364377008305, ; 227: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 148
	i64 13106026140046202731, ; 228: HarfBuzzSharp.dll => 0xb5e1f555ee70176b => 7
	i64 13118109562954089177, ; 229: Xamarin_Postep.dll => 0xb60ce325108882d9 => 146
	i64 13129914918964716986, ; 230: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 89
	i64 13370592475155966277, ; 231: System.Runtime.Serialization => 0xb98de304062ea945 => 5
	i64 13401370062847626945, ; 232: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 122
	i64 13403416310143541304, ; 233: Microcharts.Droid => 0xba02801ea6c86038 => 10
	i64 13404347523447273790, ; 234: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 79
	i64 13454009404024712428, ; 235: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 133
	i64 13465488254036897740, ; 236: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 140
	i64 13491513212026656886, ; 237: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 73
	i64 13492263892638604996, ; 238: SkiaSharp.Views.Forms.dll => 0xbb3e2686788d9ec4 => 40
	i64 13572454107664307259, ; 239: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 113
	i64 13647894001087880694, ; 240: System.Data.dll => 0xbd670f48cb071df6 => 3
	i64 13818328264475132956, ; 241: Microsoft.Bcl.HashCode => 0xbfc4905809c7c41c => 13
	i64 13828521679616088467, ; 242: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 139
	i64 13955418299340266673, ; 243: Microsoft.Extensions.DependencyModel.dll => 0xc1ab9b0118299cb1 => 25
	i64 13959074834287824816, ; 244: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 91
	i64 13967638549803255703, ; 245: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 129
	i64 14124974489674258913, ; 246: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 76
	i64 14133832980772275001, ; 247: Microsoft.EntityFrameworkCore.dll => 0xc425763635a1c339 => 17
	i64 14172845254133543601, ; 248: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 106
	i64 14261073672896646636, ; 249: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 111
	i64 14486659737292545672, ; 250: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 98
	i64 14495724990987328804, ; 251: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 114
	i64 14551742072151931844, ; 252: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 57
	i64 14644440854989303794, ; 253: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 104
	i64 14669215534098758659, ; 254: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 24
	i64 14678510994762383812, ; 255: Xamarin.GooglePlayServices.Location.dll => 0xcbb48bfaca7a41c4 => 136
	i64 14749128323909883815, ; 256: QuestPDF.dll => 0xccaf6e10fd4d17a7 => 36
	i64 14792063746108907174, ; 257: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 133
	i64 14852515768018889994, ; 258: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 84
	i64 14931407803744742450, ; 259: HarfBuzzSharp => 0xcf3704499ab36c32 => 7
	i64 14935719434541007538, ; 260: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 4
	i64 14954917835170835695, ; 261: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 23
	i64 14987728460634540364, ; 262: System.IO.Compression.dll => 0xcfff1ba06622494c => 149
	i64 14988210264188246988, ; 263: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 86
	i64 15150743910298169673, ; 264: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 112
	i64 15188640517174936311, ; 265: Xamarin.Android.Arch.Core.Common => 0xd2c8e413d75142f7 => 61
	i64 15227001540531775957, ; 266: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 22
	i64 15246441518555807158, ; 267: Xamarin.Android.Arch.Core.Common.dll => 0xd3963dc832493db6 => 61
	i64 15279429628684179188, ; 268: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 143
	i64 15288853870840668147, ; 269: Plugin.Messaging.Abstractions.dll => 0xd42ceb977a505ff3 => 34
	i64 15370334346939861994, ; 270: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 83
	i64 15391712275433856905, ; 271: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 23
	i64 15582737692548360875, ; 272: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 102
	i64 15609085926864131306, ; 273: System.dll => 0xd89e9cf3334914ea => 50
	i64 15620595871140898079, ; 274: Microsoft.Extensions.DependencyModel => 0xd8c7812eef49651f => 25
	i64 15642253503105666648, ; 275: Xamarin_Postep.Android => 0xd91472af53390e58 => 0
	i64 15777549416145007739, ; 276: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 116
	i64 15810740023422282496, ; 277: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 131
	i64 15930129725311349754, ; 278: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 137
	i64 15963349826457351533, ; 279: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 156
	i64 16154507427712707110, ; 280: System => 0xe03056ea4e39aa26 => 50
	i64 16321164108206115771, ; 281: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 26
	i64 16324796876805858114, ; 282: SkiaSharp.dll => 0xe28d5444586b6342 => 37
	i64 16423015068819898779, ; 283: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 142
	i64 16565028646146589191, ; 284: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 151
	i64 16621146507174665210, ; 285: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 80
	i64 16677317093839702854, ; 286: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 109
	i64 16755018182064898362, ; 287: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 43
	i64 16822611501064131242, ; 288: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 147
	i64 16833383113903931215, ; 289: mscorlib => 0xe99c30c1484d7f4f => 31
	i64 16932527889823454152, ; 290: Xamarin.Android.Support.Core.Utils.dll => 0xeafc6c67465253c8 => 66
	i64 17001062948826229159, ; 291: Microcharts.Forms.dll => 0xebefe8ad2cd7a9a7 => 11
	i64 17024911836938395553, ; 292: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 69
	i64 17031351772568316411, ; 293: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 107
	i64 17037200463775726619, ; 294: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 94
	i64 17187273293601214786, ; 295: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 2
	i64 17262142791295433179, ; 296: Xamarin_Postep.Android.dll => 0xef8f7368f13bf9db => 0
	i64 17544493274320527064, ; 297: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 74
	i64 17671790519499593115, ; 298: SkiaSharp.Views.Android => 0xf53ecfd92be3959b => 39
	i64 17704177640604968747, ; 299: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 103
	i64 17710060891934109755, ; 300: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 101
	i64 17760961058993581169, ; 301: Xamarin.Android.Arch.Lifecycle.Common => 0xf67b9bfb46dbac71 => 62
	i64 17762564930801780032, ; 302: Xamarin_Postep => 0xf6814eb1c8404540 => 146
	i64 17838668724098252521, ; 303: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 46
	i64 17882897186074144999, ; 304: FormsViewGroup => 0xf82cd03e3ac830e7 => 6
	i64 17891337867145587222, ; 305: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 138
	i64 17892495832318972303, ; 306: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 131
	i64 17928294245072900555, ; 307: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 150
	i64 17986907704309214542, ; 308: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 135
	i64 18017743553296241350, ; 309: Microsoft.Extensions.Caching.Abstractions => 0xfa0be24cb44e92c6 => 20
	i64 18116111925905154859, ; 310: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 73
	i64 18121036031235206392, ; 311: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 107
	i64 18129453464017766560, ; 312: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 155
	i64 18260797123374478311, ; 313: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 89
	i64 18305135509493619199, ; 314: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 108
	i64 18370042311372477656, ; 315: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 44
	i64 18380184030268848184, ; 316: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 123
	i64 18405404908905297253 ; 317: Plugin.Messaging.dll => 0xff6d223fa687f565 => 35
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [318 x i32] [
	i32 15, i32 88, i32 33, i32 29, i32 30, i32 10, i32 77, i32 115, ; 0..7
	i32 116, i32 82, i32 136, i32 100, i32 134, i32 148, i32 93, i32 44, ; 8..15
	i32 87, i32 11, i32 152, i32 130, i32 158, i32 13, i32 132, i32 43, ; 16..23
	i32 72, i32 9, i32 5, i32 45, i32 70, i32 102, i32 94, i32 14, ; 24..31
	i32 32, i32 51, i32 71, i32 115, i32 12, i32 68, i32 35, i32 101, ; 32..39
	i32 156, i32 141, i32 32, i32 106, i32 75, i32 38, i32 16, i32 87, ; 40..47
	i32 153, i32 154, i32 114, i32 97, i32 57, i32 55, i32 81, i32 121, ; 48..55
	i32 56, i32 67, i32 59, i32 31, i32 24, i32 110, i32 55, i32 117, ; 56..63
	i32 127, i32 132, i32 9, i32 96, i32 69, i32 54, i32 144, i32 135, ; 64..71
	i32 38, i32 119, i32 118, i32 21, i32 53, i32 56, i32 22, i32 1, ; 72..79
	i32 113, i32 88, i32 27, i32 51, i32 82, i32 137, i32 42, i32 18, ; 80..87
	i32 155, i32 16, i32 123, i32 2, i32 99, i32 74, i32 67, i32 118, ; 88..95
	i32 34, i32 14, i32 129, i32 126, i32 104, i32 41, i32 105, i32 121, ; 96..103
	i32 120, i32 80, i32 48, i32 33, i32 125, i32 78, i32 64, i32 110, ; 104..111
	i32 98, i32 130, i32 6, i32 42, i32 58, i32 100, i32 97, i32 75, ; 112..119
	i32 85, i32 28, i32 153, i32 4, i32 93, i32 37, i32 60, i32 54, ; 120..127
	i32 95, i32 92, i32 145, i32 15, i32 60, i32 127, i32 126, i32 52, ; 128..135
	i32 140, i32 128, i32 3, i32 70, i32 39, i32 20, i32 151, i32 157, ; 136..143
	i32 96, i32 49, i32 64, i32 147, i32 8, i32 157, i32 40, i32 143, ; 144..151
	i32 154, i32 63, i32 79, i32 109, i32 99, i32 47, i32 90, i32 120, ; 152..159
	i32 8, i32 108, i32 150, i32 49, i32 139, i32 112, i32 21, i32 17, ; 160..167
	i32 125, i32 41, i32 71, i32 128, i32 53, i32 81, i32 105, i32 30, ; 168..175
	i32 78, i32 152, i32 19, i32 62, i32 134, i32 90, i32 158, i32 52, ; 176..183
	i32 36, i32 141, i32 85, i32 138, i32 119, i32 144, i32 83, i32 12, ; 184..191
	i32 18, i32 72, i32 63, i32 26, i32 48, i32 59, i32 124, i32 28, ; 192..199
	i32 84, i32 65, i32 111, i32 19, i32 124, i32 27, i32 95, i32 68, ; 200..207
	i32 117, i32 1, i32 145, i32 92, i32 46, i32 122, i32 58, i32 47, ; 208..215
	i32 45, i32 65, i32 91, i32 103, i32 86, i32 76, i32 149, i32 77, ; 216..223
	i32 142, i32 29, i32 66, i32 148, i32 7, i32 146, i32 89, i32 5, ; 224..231
	i32 122, i32 10, i32 79, i32 133, i32 140, i32 73, i32 40, i32 113, ; 232..239
	i32 3, i32 13, i32 139, i32 25, i32 91, i32 129, i32 76, i32 17, ; 240..247
	i32 106, i32 111, i32 98, i32 114, i32 57, i32 104, i32 24, i32 136, ; 248..255
	i32 36, i32 133, i32 84, i32 7, i32 4, i32 23, i32 149, i32 86, ; 256..263
	i32 112, i32 61, i32 22, i32 61, i32 143, i32 34, i32 83, i32 23, ; 264..271
	i32 102, i32 50, i32 25, i32 0, i32 116, i32 131, i32 137, i32 156, ; 272..279
	i32 50, i32 26, i32 37, i32 142, i32 151, i32 80, i32 109, i32 43, ; 280..287
	i32 147, i32 31, i32 66, i32 11, i32 69, i32 107, i32 94, i32 2, ; 288..295
	i32 0, i32 74, i32 39, i32 103, i32 101, i32 62, i32 146, i32 46, ; 296..303
	i32 6, i32 138, i32 131, i32 150, i32 135, i32 20, i32 73, i32 107, ; 304..311
	i32 155, i32 89, i32 108, i32 44, i32 123, i32 35 ; 312..317
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

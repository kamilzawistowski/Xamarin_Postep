; ModuleID = 'obj\Debug\130\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [428 x i32] [
	i32 6657927, ; 0: Xamarin.Grpc.Protobuf.Lite.dll => 0x659787 => 186
	i32 9414545, ; 1: Xamarin.Grpc.Android => 0x8fa791 => 181
	i32 26230656, ; 2: Microsoft.Extensions.DependencyModel => 0x1903f80 => 29
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 114
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 167
	i32 39109920, ; 5: Newtonsoft.Json.dll => 0x254c520 => 38
	i32 57263871, ; 6: Xamarin.Forms.Core.dll => 0x369c6ff => 156
	i32 57305218, ; 7: Xamarin.KotlinX.Coroutines.Play.Services => 0x36a6882 => 198
	i32 87783800, ; 8: Xamarin.GooglePlayServices.Ads.Identifier => 0x53b7978 => 168
	i32 101534019, ; 9: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 130
	i32 103834273, ; 10: Xamarin.Firebase.Annotations.dll => 0x63062a1 => 143
	i32 118141284, ; 11: NativeMedia.Permision => 0x70ab164 => 37
	i32 120558881, ; 12: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 130
	i32 134690465, ; 13: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 194
	i32 159306688, ; 14: System.ComponentModel.Annotations => 0x97ed3c0 => 2
	i32 160529393, ; 15: Xamarin.Android.Arch.Core.Common => 0x9917bf1 => 73
	i32 165246403, ; 16: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 90
	i32 166922606, ; 17: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 77
	i32 177794437, ; 18: Xamarin.Forms.DataGrid => 0xa98ed85 => 157
	i32 182336117, ; 19: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 132
	i32 194720069, ; 20: Plugin.Messaging.Abstractions => 0xb9b3145 => 41
	i32 209399409, ; 21: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 88
	i32 230216969, ; 22: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 108
	i32 232815796, ; 23: System.Web.Services => 0xde07cb4 => 208
	i32 261689757, ; 24: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 94
	i32 266337479, ; 25: Xamarin.Google.Guava.FailureAccess.dll => 0xfdffcc7 => 166
	i32 271099684, ; 26: Xamarin.Grpc.OkHttp => 0x1028a724 => 185
	i32 278686392, ; 27: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 112
	i32 280482487, ; 28: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 106
	i32 293936332, ; 29: Xamarin.GooglePlayServices.Auth.Api.Phone.dll => 0x11851ccc => 169
	i32 318968648, ; 30: Xamarin.AndroidX.Activity.dll => 0x13031348 => 79
	i32 321597661, ; 31: System.Numerics => 0x132b30dd => 64
	i32 342366114, ; 32: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 110
	i32 347068432, ; 33: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 53
	i32 374925665, ; 34: Xamarin.Firebase.Analytics => 0x1658e961 => 142
	i32 385762202, ; 35: System.Memory.dll => 0x16fe439a => 62
	i32 402672763, ; 36: Xamarin.Plugin.Calendar => 0x18004c7b => 199
	i32 441335492, ; 37: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 93
	i32 442521989, ; 38: Xamarin.Essentials => 0x1a605985 => 141
	i32 442565967, ; 39: System.Collections => 0x1a61054f => 212
	i32 443493152, ; 40: Xamarin.Google.Android.Recaptcha => 0x1a6f2b20 => 163
	i32 450948140, ; 41: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 105
	i32 453011810, ; 42: Xamarin.Firebase.Database.Collection.dll => 0x1b006962 => 150
	i32 465846621, ; 43: mscorlib => 0x1bc4415d => 35
	i32 469710990, ; 44: System.dll => 0x1bff388e => 61
	i32 476646585, ; 45: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 106
	i32 486930444, ; 46: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 118
	i32 493301629, ; 47: Xamarin.Firebase.AppCheck.Interop.dll => 0x1d672f7d => 144
	i32 501000162, ; 48: Prism.dll => 0x1ddca7e2 => 43
	i32 504143952, ; 49: Plugin.LocalNotification.dll => 0x1e0ca050 => 40
	i32 513247710, ; 50: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 33
	i32 514659665, ; 51: Xamarin.Android.Support.Compat => 0x1ead1551 => 77
	i32 525008092, ; 52: SkiaSharp.dll => 0x1f4afcdc => 46
	i32 526420162, ; 53: System.Transactions.dll => 0x1f6088c2 => 207
	i32 527452488, ; 54: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 194
	i32 539058512, ; 55: Microsoft.Extensions.Logging => 0x20216150 => 31
	i32 542030372, ; 56: Xamarin.GooglePlayServices.Stats => 0x204eba24 => 179
	i32 548916678, ; 57: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 16
	i32 589597883, ; 58: Xamarin.GooglePlayServices.Auth.Api.Phone => 0x23248cbb => 169
	i32 605376203, ; 59: System.IO.Compression.FileSystem => 0x24154ecb => 205
	i32 610194910, ; 60: System.Reactive.dll => 0x245ed5de => 66
	i32 612775031, ; 61: FontAwesome.Brand.dll => 0x24863477 => 8
	i32 627609679, ; 62: Xamarin.AndroidX.CustomView => 0x2568904f => 99
	i32 639843206, ; 63: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 104
	i32 644719811, ; 64: Xamarin.GooglePlayServices.Measurement.Impl => 0x266da4c3 => 176
	i32 662205335, ; 65: System.Text.Encodings.Web.dll => 0x27787397 => 69
	i32 663517072, ; 66: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 137
	i32 666292255, ; 67: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 85
	i32 690569205, ; 68: System.Xml.Linq.dll => 0x29293ff5 => 72
	i32 691348768, ; 69: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 196
	i32 692692150, ; 70: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 76
	i32 700284507, ; 71: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 191
	i32 712915335, ; 72: Xamarin.Grpc.Api => 0x2a7e3987 => 182
	i32 720511267, ; 73: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 195
	i32 748832960, ; 74: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 51
	i32 763781610, ; 75: Xamarin.Google.Android.Play.Integrity => 0x2d8661ea => 162
	i32 772835674, ; 76: QuestPDF.dll => 0x2e10895a => 45
	i32 775507847, ; 77: System.IO.Compression => 0x2e394f87 => 204
	i32 778756650, ; 78: SkiaSharp.HarfBuzz.dll => 0x2e6ae22a => 47
	i32 789151979, ; 79: Microsoft.Extensions.Options => 0x2f0980eb => 32
	i32 809851609, ; 80: System.Drawing.Common.dll => 0x30455ad9 => 203
	i32 843511501, ; 81: Xamarin.AndroidX.Print => 0x3246f6cd => 125
	i32 846667644, ; 82: Xamarin.Firebase.Installations.dll => 0x32771f7c => 152
	i32 881234337, ; 83: Xamarin_Postep => 0x348691a1 => 201
	i32 882434999, ; 84: Xamarin.Firebase.Installations.InterOp.dll => 0x3498e3b7 => 153
	i32 884236112, ; 85: Plugin.CloudFirestore.dll => 0x34b45f50 => 39
	i32 886248193, ; 86: Microcharts.Droid => 0x34d31301 => 14
	i32 906948815, ; 87: QuestPDF => 0x360ef0cf => 45
	i32 928116545, ; 88: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 167
	i32 955402788, ; 89: Newtonsoft.Json => 0x38f24a24 => 38
	i32 956575887, ; 90: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 195
	i32 961995525, ; 91: Square.OkIO.dll => 0x3956e305 => 56
	i32 967690846, ; 92: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 110
	i32 974778368, ; 93: FormsViewGroup.dll => 0x3a19f000 => 9
	i32 992768348, ; 94: System.Collections.dll => 0x3b2c715c => 212
	i32 1012816738, ; 95: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 129
	i32 1028951442, ; 96: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 27
	i32 1031528504, ; 97: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 164
	i32 1032266309, ; 98: Plugin.Messaging.dll => 0x3d872245 => 42
	i32 1035644815, ; 99: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 84
	i32 1042160112, ; 100: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 159
	i32 1050026713, ; 101: Xamarin.Io.OpenCensus.OpenCensusApi.dll => 0x3e9622d9 => 188
	i32 1052210849, ; 102: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 115
	i32 1084122840, ; 103: Xamarin.Kotlin.StdLib => 0x409e66d8 => 193
	i32 1098259244, ; 104: System => 0x41761b2c => 61
	i32 1099692271, ; 105: Microsoft.DotNet.PlatformAbstractions => 0x418bf8ef => 19
	i32 1110581358, ; 106: Xamarin.Firebase.Auth => 0x4232206e => 145
	i32 1134910725, ; 107: Xamarin.Forms.DataGrid.dll => 0x43a55d05 => 157
	i32 1141947663, ; 108: Xamarin.Firebase.Measurement.Connector.dll => 0x4410bd0f => 154
	i32 1157931901, ; 109: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 20
	i32 1159499262, ; 110: Xamarin.Grpc.Stub.dll => 0x451c8dfe => 187
	i32 1175144683, ; 111: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 135
	i32 1178241025, ; 112: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 122
	i32 1202000627, ; 113: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 20
	i32 1204270330, ; 114: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 85
	i32 1204575371, ; 115: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 25
	i32 1208648034, ; 116: Square.OkHttp => 0x480a8162 => 55
	i32 1230765884, ; 117: Xamarin.Grpc.Stub => 0x495bff3c => 187
	i32 1244346141, ; 118: Xamarin.Protobuf.Lite => 0x4a2b371d => 200
	i32 1246548578, ; 119: Xamarin.AndroidX.Collection.Jvm.dll => 0x4a4cd262 => 91
	i32 1253601063, ; 120: Xamarin.GooglePlayServices.Measurement.Impl.dll => 0x4ab86f27 => 176
	i32 1257494309, ; 121: Plugin.Messaging.Abstractions.dll => 0x4af3d725 => 41
	i32 1263886435, ; 122: Xamarin.Google.Guava.dll => 0x4b556063 => 165
	i32 1264511973, ; 123: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 131
	i32 1267360935, ; 124: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 136
	i32 1273391546, ; 125: Xamarin.Io.OpenCensus.OpenCensusContribGrpcMetrics => 0x4be669ba => 189
	i32 1275534314, ; 126: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 196
	i32 1278448581, ; 127: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 82
	i32 1292207520, ; 128: SQLitePCLRaw.core.dll => 0x4d0585a0 => 52
	i32 1293217323, ; 129: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 101
	i32 1324995046, ; 130: Xamarin_Postep.Android.dll => 0x4ef9d1e6 => 0
	i32 1333047053, ; 131: Xamarin.Firebase.Common => 0x4f74af0d => 147
	i32 1365406463, ; 132: System.ServiceModel.Internals.dll => 0x516272ff => 210
	i32 1376866003, ; 133: Xamarin.AndroidX.SavedState => 0x52114ed3 => 129
	i32 1378549593, ; 134: Xamarin.GooglePlayServices.Measurement.Base.dll => 0x522aff59 => 174
	i32 1379897097, ; 135: Xamarin.JavaX.Inject => 0x523f8f09 => 190
	i32 1395857551, ; 136: Xamarin.AndroidX.Media.dll => 0x5333188f => 119
	i32 1406073936, ; 137: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 95
	i32 1406299041, ; 138: Xamarin.Google.Guava.FailureAccess => 0x53d26ba1 => 166
	i32 1411638395, ; 139: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 67
	i32 1411702249, ; 140: Xamarin.Firebase.Auth.Interop.dll => 0x5424dde9 => 146
	i32 1421105759, ; 141: Spire.Email.dll => 0x54b45a5f => 50
	i32 1460219004, ; 142: Xamarin.Forms.Xaml => 0x57092c7c => 160
	i32 1461234159, ; 143: System.Collections.Immutable.dll => 0x5718a9ef => 58
	i32 1462112819, ; 144: System.IO.Compression.dll => 0x57261233 => 204
	i32 1469204771, ; 145: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 83
	i32 1470490898, ; 146: Microsoft.Extensions.Primitives => 0x57a5e912 => 33
	i32 1479771757, ; 147: System.Collections.Immutable => 0x5833866d => 58
	i32 1490351284, ; 148: Microsoft.Data.Sqlite.dll => 0x58d4f4b4 => 18
	i32 1523738190, ; 149: FontAwesome.Brand => 0x5ad2664e => 8
	i32 1524747670, ; 150: Plugin.LocalNotification => 0x5ae1cd96 => 40
	i32 1544135863, ; 151: Xamarin.Grpc.Api.dll => 0x5c09a4b7 => 182
	i32 1574652163, ; 152: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 78
	i32 1582372066, ; 153: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 100
	i32 1582526884, ; 154: Microcharts.Forms.dll => 0x5e5371a4 => 15
	i32 1587447679, ; 155: Xamarin.Android.Arch.Core.Common.dll => 0x5e9e877f => 73
	i32 1592978981, ; 156: System.Runtime.Serialization.dll => 0x5ef2ee25 => 6
	i32 1597949149, ; 157: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 164
	i32 1622152042, ; 158: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 117
	i32 1624863272, ; 159: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 139
	i32 1635184631, ; 160: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 104
	i32 1636350590, ; 161: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 98
	i32 1639515021, ; 162: System.Net.Http.dll => 0x61b9038d => 63
	i32 1657153582, ; 163: System.Runtime => 0x62c6282e => 68
	i32 1658241508, ; 164: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 133
	i32 1658251792, ; 165: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 161
	i32 1664238415, ; 166: Xamarin.Firebase.Database.Collection => 0x6332434f => 150
	i32 1670060433, ; 167: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 94
	i32 1678093242, ; 168: Xamarin_Postep.dll => 0x6405abba => 201
	i32 1688112883, ; 169: Microsoft.Data.Sqlite => 0x649e8ef3 => 18
	i32 1689493916, ; 170: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 21
	i32 1698840827, ; 171: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 192
	i32 1711441057, ; 172: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 53
	i32 1722051300, ; 173: SkiaSharp.Views.Forms => 0x66a46ae4 => 49
	i32 1729485958, ; 174: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 89
	i32 1766324549, ; 175: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 132
	i32 1770582343, ; 176: Microsoft.Extensions.Logging.dll => 0x6988f147 => 31
	i32 1776026572, ; 177: System.Core.dll => 0x69dc03cc => 59
	i32 1785684415, ; 178: Xamarin.Io.OpenCensus.OpenCensusContribGrpcMetrics.dll => 0x6a6f61bf => 189
	i32 1788241197, ; 179: Xamarin.AndroidX.Fragment => 0x6a96652d => 105
	i32 1796167890, ; 180: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 16
	i32 1808609942, ; 181: Xamarin.AndroidX.Loader => 0x6bcd3296 => 117
	i32 1812481981, ; 182: Xamarin.Plugin.Calendar.dll => 0x6c0847bd => 199
	i32 1813058853, ; 183: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 193
	i32 1813201214, ; 184: Xamarin.Google.Android.Material => 0x6c13413e => 161
	i32 1818569960, ; 185: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 123
	i32 1828688058, ; 186: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 30
	i32 1849271627, ; 187: Prism.Forms.dll => 0x6e39a54b => 44
	i32 1867746548, ; 188: Xamarin.Essentials.dll => 0x6f538cf4 => 141
	i32 1875053220, ; 189: Xamarin.Firebase.Auth.Interop => 0x6fc30aa4 => 146
	i32 1878053835, ; 190: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 160
	i32 1885316902, ; 191: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 86
	i32 1886040351, ; 192: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x706ab11f => 23
	i32 1894524299, ; 193: Microsoft.DotNet.PlatformAbstractions.dll => 0x70ec258b => 19
	i32 1904755420, ; 194: System.Runtime.InteropServices.WindowsRuntime.dll => 0x718842dc => 5
	i32 1908813208, ; 195: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 171
	i32 1919157823, ; 196: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 120
	i32 1983156543, ; 197: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 192
	i32 2011961780, ; 198: System.Buffers.dll => 0x77ec19b4 => 57
	i32 2012836262, ; 199: Plugin.Messaging => 0x77f971a6 => 42
	i32 2014489277, ; 200: Microsoft.EntityFrameworkCore.Sqlite => 0x7812aabd => 23
	i32 2019465201, ; 201: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 115
	i32 2048146308, ; 202: Xamarin.Firebase.Analytics.dll => 0x7a143b84 => 142
	i32 2055257422, ; 203: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 111
	i32 2066202781, ; 204: Prism => 0x7b27c09d => 43
	i32 2079903147, ; 205: System.Runtime.dll => 0x7bf8cdab => 68
	i32 2083657273, ; 206: Xamarin.Firebase.ProtoliteWellKnownTypes => 0x7c321639 => 155
	i32 2086218969, ; 207: Xamarin.Google.Android.Play.Integrity.dll => 0x7c592cd9 => 162
	i32 2090596640, ; 208: System.Numerics.Vectors => 0x7c9bf920 => 65
	i32 2097448633, ; 209: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 107
	i32 2101093318, ; 210: Xamarin.GooglePlayServices.Ads.Identifier.dll => 0x7d3c23c6 => 168
	i32 2103459038, ; 211: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 54
	i32 2126786730, ; 212: Xamarin.Forms.Platform.Android => 0x7ec430aa => 158
	i32 2129483829, ; 213: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 170
	i32 2162265494, ; 214: NativeMedia.dll => 0x80e18d96 => 36
	i32 2166116741, ; 215: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 78
	i32 2174878672, ; 216: Xamarin.Firebase.Annotations => 0x81a203d0 => 143
	i32 2181898931, ; 217: Microsoft.Extensions.Options.dll => 0x820d22b3 => 32
	i32 2191887180, ; 218: Xamarin.GooglePlayServices.Measurement.Api.dll => 0x82a58b4c => 173
	i32 2192057212, ; 219: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 30
	i32 2195564014, ; 220: Xamarin.Grpc.Context => 0x82dda5ee => 183
	i32 2197979891, ; 221: Microsoft.Extensions.DependencyModel.dll => 0x830282f3 => 29
	i32 2201107256, ; 222: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 197
	i32 2201231467, ; 223: System.Net.Http => 0x8334206b => 63
	i32 2216717168, ; 224: Firebase.Auth.dll => 0x84206b70 => 7
	i32 2217644978, ; 225: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 135
	i32 2232960810, ; 226: Spire.Email => 0x8518472a => 50
	i32 2244775296, ; 227: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 118
	i32 2252897993, ; 228: Microsoft.EntityFrameworkCore => 0x86487ec9 => 21
	i32 2256548716, ; 229: Xamarin.AndroidX.MultiDex => 0x8680336c => 120
	i32 2261435625, ; 230: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 109
	i32 2266799131, ; 231: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 26
	i32 2279755925, ; 232: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 127
	i32 2307769286, ; 233: Square.OkHttp.dll => 0x898dc3c6 => 55
	i32 2315684594, ; 234: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 80
	i32 2357191037, ; 235: Xamarin.GooglePlayServices.Measurement.Sdk => 0x8c7fe17d => 178
	i32 2382033717, ; 236: Xamarin.Firebase.Auth.dll => 0x8dfaf335 => 145
	i32 2403452196, ; 237: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 103
	i32 2409053734, ; 238: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 124
	i32 2435904999, ; 239: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 209
	i32 2465273461, ; 240: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 51
	i32 2465532216, ; 241: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 93
	i32 2471841756, ; 242: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 243: Java.Interop.dll => 0x93918882 => 12
	i32 2483661569, ; 244: Xamarin.Firebase.Measurement.Connector => 0x9409ab01 => 154
	i32 2501346920, ; 245: System.Data.DataSetExtensions => 0x95178668 => 202
	i32 2505896520, ; 246: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 114
	i32 2535140139, ; 247: Xamarin.GooglePlayServices.Measurement.Sdk.Api => 0x971b2b2b => 177
	i32 2561374756, ; 248: Xamarin.Google.Android.Recaptcha.dll => 0x98ab7a24 => 163
	i32 2570120770, ; 249: System.Text.Encodings.Web => 0x9930ee42 => 69
	i32 2581819634, ; 250: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 136
	i32 2591433303, ; 251: Xamarin.Grpc.Core.dll => 0x9a762257 => 184
	i32 2605712449, ; 252: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 197
	i32 2620871830, ; 253: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 98
	i32 2623491480, ; 254: Xamarin.Firebase.Installations.InterOp => 0x9c5f4d98 => 153
	i32 2624644809, ; 255: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 102
	i32 2633051222, ; 256: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 112
	i32 2634653062, ; 257: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 22
	i32 2640452924, ; 258: Xamarin.Grpc.Protobuf.Lite => 0x9d621d3c => 186
	i32 2701096212, ; 259: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 133
	i32 2708713469, ; 260: NativeMedia.Permision.dll => 0xa173affd => 37
	i32 2715831284, ; 261: Xamarin.Firebase.ProtoliteWellKnownTypes.dll => 0xa1e04bf4 => 155
	i32 2732626843, ; 262: Xamarin.AndroidX.Activity => 0xa2e0939b => 79
	i32 2737747696, ; 263: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 83
	i32 2752363754, ; 264: Xamarin.Firebase.Firestore.dll => 0xa40dbcea => 151
	i32 2765824710, ; 265: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 4
	i32 2766581644, ; 266: Xamarin.Forms.Core => 0xa4e6af8c => 156
	i32 2770495804, ; 267: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 191
	i32 2778768386, ; 268: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 138
	i32 2779977773, ; 269: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 128
	i32 2790971336, ; 270: Xamarin.GooglePlayServices.Measurement.Base => 0xa65ad7c8 => 174
	i32 2795602088, ; 271: SkiaSharp.Views.Android.dll => 0xa6a180a8 => 48
	i32 2804607052, ; 272: Xamarin.Firebase.Components.dll => 0xa72ae84c => 148
	i32 2810250172, ; 273: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 95
	i32 2819470561, ; 274: System.Xml.dll => 0xa80db4e1 => 71
	i32 2821294376, ; 275: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 128
	i32 2847418871, ; 276: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 170
	i32 2847789619, ; 277: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 22
	i32 2853208004, ; 278: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 138
	i32 2855708567, ; 279: Xamarin.AndroidX.Transition => 0xaa36a797 => 134
	i32 2856624150, ; 280: Xamarin.Grpc.Core => 0xaa44a016 => 184
	i32 2870458124, ; 281: Xamarin.Firebase.AppCheck.Interop => 0xab17b70c => 144
	i32 2883826422, ; 282: Xamarin.Firebase.Installations => 0xabe3b2f6 => 152
	i32 2885620179, ; 283: Plugin.CloudFirestore => 0xabff11d3 => 39
	i32 2903344695, ; 284: System.ComponentModel.Composition => 0xad0d8637 => 206
	i32 2905242038, ; 285: mscorlib.dll => 0xad2a79b6 => 35
	i32 2912489636, ; 286: SkiaSharp.Views.Android => 0xad9910a4 => 48
	i32 2916838712, ; 287: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 139
	i32 2919462931, ; 288: System.Numerics.Vectors.dll => 0xae037813 => 65
	i32 2921128767, ; 289: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 81
	i32 2943219317, ; 290: Square.OkIO => 0xaf6df675 => 56
	i32 2960379616, ; 291: Xamarin.Google.Guava => 0xb073cee0 => 165
	i32 2974793899, ; 292: SkiaSharp.Views.Forms.dll => 0xb14fc0ab => 49
	i32 2978675010, ; 293: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 101
	i32 2996846495, ; 294: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 113
	i32 3016983068, ; 295: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 131
	i32 3024354802, ; 296: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 108
	i32 3036068679, ; 297: Microcharts.Droid.dll => 0xb4f6bb47 => 14
	i32 3039147325, ; 298: Xamarin.GooglePlayServices.Measurement => 0xb525b53d => 175
	i32 3044182254, ; 299: FormsViewGroup => 0xb57288ee => 9
	i32 3047002369, ; 300: Xamarin.Firebase.Core => 0xb59d9101 => 149
	i32 3057625584, ; 301: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 121
	i32 3058099980, ; 302: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 180
	i32 3068715062, ; 303: Xamarin.Android.Arch.Lifecycle.Common => 0xb6e8e036 => 74
	i32 3069363400, ; 304: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 24
	i32 3071899978, ; 305: Xamarin.Firebase.Common.dll => 0xb719794a => 147
	i32 3111772706, ; 306: System.Runtime.Serialization => 0xb979e222 => 6
	i32 3112849855, ; 307: Xamarin.GooglePlayServices.Measurement.Sdk.Api.dll => 0xb98a51bf => 177
	i32 3115974355, ; 308: IconFontHelper => 0xb9b9fed3 => 11
	i32 3124832203, ; 309: System.Threading.Tasks.Extensions => 0xba4127cb => 211
	i32 3150271759, ; 310: Xamarin.KotlinX.Coroutines.Play.Services.dll => 0xbbc5550f => 198
	i32 3195844289, ; 311: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 24
	i32 3204380047, ; 312: System.Data.dll => 0xbefef58f => 3
	i32 3211777861, ; 313: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 100
	i32 3230466174, ; 314: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 171
	i32 3247949154, ; 315: Mono.Security => 0xc197c562 => 213
	i32 3258312781, ; 316: Xamarin.AndroidX.CardView => 0xc235e84d => 89
	i32 3265893370, ; 317: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 211
	i32 3267021929, ; 318: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 87
	i32 3280506390, ; 319: System.ComponentModel.Annotations.dll => 0xc3888e16 => 2
	i32 3317135071, ; 320: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 99
	i32 3317144872, ; 321: System.Data => 0xc5b79d28 => 3
	i32 3331531814, ; 322: Xamarin.GooglePlayServices.Stats.dll => 0xc6932426 => 179
	i32 3340387945, ; 323: SkiaSharp => 0xc71a4669 => 46
	i32 3340431453, ; 324: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 86
	i32 3341432376, ; 325: Xamarin.Firebase.Core.dll => 0xc72a3638 => 149
	i32 3345895724, ; 326: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 126
	i32 3346324047, ; 327: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 122
	i32 3353484488, ; 328: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 107
	i32 3353544232, ; 329: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 140
	i32 3358260929, ; 330: System.Text.Json => 0xc82afec1 => 70
	i32 3360279109, ; 331: SQLitePCLRaw.core => 0xc849ca45 => 52
	i32 3362522851, ; 332: Xamarin.AndroidX.Core => 0xc86c06e3 => 97
	i32 3366347497, ; 333: Java.Interop => 0xc8a662e9 => 12
	i32 3374999561, ; 334: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 127
	i32 3395150330, ; 335: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 67
	i32 3401615630, ; 336: IconFontHelper.dll => 0xcac0890e => 11
	i32 3404865022, ; 337: System.ServiceModel.Internals => 0xcaf21dfe => 210
	i32 3407215217, ; 338: Xamarin.CommunityToolkit => 0xcb15fa71 => 140
	i32 3428513518, ; 339: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 28
	i32 3429136800, ; 340: System.Xml => 0xcc6479a0 => 71
	i32 3430777524, ; 341: netstandard => 0xcc7d82b4 => 1
	i32 3439690031, ; 342: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 76
	i32 3441283291, ; 343: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 102
	i32 3455791806, ; 344: Microcharts => 0xcdfb32be => 13
	i32 3473879593, ; 345: Xamarin.Grpc.OkHttp.dll => 0xcf0f3229 => 185
	i32 3476120550, ; 346: Mono.Android => 0xcf3163e6 => 34
	i32 3480803288, ; 347: Xamarin.GooglePlayServices.Measurement.dll => 0xcf78d7d8 => 175
	i32 3485117614, ; 348: System.Text.Json.dll => 0xcfbaacae => 70
	i32 3486566296, ; 349: System.Transactions => 0xcfd0c798 => 207
	i32 3493954962, ; 350: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 92
	i32 3494395880, ; 351: Xamarin.GooglePlayServices.Location.dll => 0xd0483fe8 => 172
	i32 3501239056, ; 352: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 87
	i32 3509114376, ; 353: System.Xml.Linq => 0xd128d608 => 72
	i32 3536029504, ; 354: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 158
	i32 3567349600, ; 355: System.ComponentModel.Composition.dll => 0xd4a16f60 => 206
	i32 3597794883, ; 356: Xamarin.Firebase.Firestore => 0xd671fe43 => 151
	i32 3618140916, ; 357: Xamarin.AndroidX.Preference => 0xd7a872f4 => 124
	i32 3627220390, ; 358: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 125
	i32 3632359727, ; 359: Xamarin.Forms.Platform => 0xd881692f => 159
	i32 3633644679, ; 360: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 81
	i32 3641597786, ; 361: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 111
	i32 3645089577, ; 362: System.ComponentModel.DataAnnotations => 0xd943a729 => 209
	i32 3657292374, ; 363: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 26
	i32 3668042751, ; 364: Microcharts.dll => 0xdaa1e3ff => 13
	i32 3672681054, ; 365: Mono.Android.dll => 0xdae8aa5e => 34
	i32 3676310014, ; 366: System.Web.Services.dll => 0xdb2009fe => 208
	i32 3681174138, ; 367: Xamarin.Android.Arch.Lifecycle.Common.dll => 0xdb6a427a => 74
	i32 3682565725, ; 368: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 88
	i32 3684561358, ; 369: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 92
	i32 3684933406, ; 370: System.Runtime.InteropServices.WindowsRuntime => 0xdba39f1e => 5
	i32 3689375977, ; 371: System.Drawing.Common => 0xdbe768e9 => 203
	i32 3706696989, ; 372: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 96
	i32 3718780102, ; 373: Xamarin.AndroidX.Annotation => 0xdda814c6 => 80
	i32 3724971120, ; 374: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 121
	i32 3731644420, ; 375: System.Reactive => 0xde6c6004 => 66
	i32 3748608112, ; 376: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 60
	i32 3754567612, ; 377: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 54
	i32 3758932259, ; 378: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 109
	i32 3771698872, ; 379: Xamarin.Io.OpenCensus.OpenCensusApi => 0xe0cf8eb8 => 188
	i32 3780807376, ; 380: NativeMedia => 0xe15a8ad0 => 36
	i32 3786282454, ; 381: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 90
	i32 3792835768, ; 382: HarfBuzzSharp => 0xe21214b8 => 10
	i32 3822602673, ; 383: Xamarin.AndroidX.Media => 0xe3d849b1 => 119
	i32 3829621856, ; 384: System.Numerics.dll => 0xe4436460 => 64
	i32 3841636137, ; 385: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 27
	i32 3862817207, ; 386: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0xe63de9b7 => 75
	i32 3874897629, ; 387: Xamarin.Android.Arch.Lifecycle.Runtime => 0xe6f63edd => 75
	i32 3885922214, ; 388: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 134
	i32 3888767677, ; 389: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 126
	i32 3894448521, ; 390: Microsoft.Bcl.HashCode => 0xe8209189 => 17
	i32 3896760992, ; 391: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 97
	i32 3903721208, ; 392: Microcharts.Forms => 0xe8ae0ef8 => 15
	i32 3910130544, ; 393: Xamarin.AndroidX.Collection.Jvm => 0xe90fdb70 => 91
	i32 3920810846, ; 394: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 205
	i32 3921031405, ; 395: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 137
	i32 3931092270, ; 396: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 123
	i32 3934056515, ; 397: Xamarin.JavaX.Inject.dll => 0xea7cf043 => 190
	i32 3943739589, ; 398: Xamarin.Grpc.Context.dll => 0xeb10b0c5 => 183
	i32 3945713374, ; 399: System.Data.DataSetExtensions.dll => 0xeb2ecede => 202
	i32 3953953790, ; 400: System.Text.Encoding.CodePages => 0xebac8bfe => 4
	i32 3955647286, ; 401: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 84
	i32 3959773229, ; 402: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 113
	i32 3967165417, ; 403: Xamarin.GooglePlayServices.Location => 0xec7623e9 => 172
	i32 3968844647, ; 404: Xamarin.Protobuf.Lite.dll => 0xec8fc367 => 200
	i32 3970018735, ; 405: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 180
	i32 3995218081, ; 406: Xamarin.GooglePlayServices.Measurement.Sdk.dll => 0xee2230a1 => 178
	i32 4003906742, ; 407: HarfBuzzSharp.dll => 0xeea6c4b6 => 10
	i32 4015948917, ; 408: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 82
	i32 4024013275, ; 409: Firebase.Auth => 0xefd991db => 7
	i32 4025784931, ; 410: System.Memory => 0xeff49a63 => 62
	i32 4066802364, ; 411: SkiaSharp.HarfBuzz => 0xf2667abc => 47
	i32 4085261167, ; 412: Prism.Forms => 0xf380236f => 44
	i32 4101593132, ; 413: Xamarin.AndroidX.Emoji2 => 0xf479582c => 103
	i32 4101842092, ; 414: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 25
	i32 4105002889, ; 415: Mono.Security.dll => 0xf4ad5f89 => 213
	i32 4126470640, ; 416: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 28
	i32 4151237749, ; 417: System.Core => 0xf76edc75 => 59
	i32 4171745578, ; 418: Xamarin_Postep.Android => 0xf8a7c92a => 0
	i32 4182413190, ; 419: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 116
	i32 4213026141, ; 420: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 60
	i32 4223148364, ; 421: Xamarin.Grpc.Android.dll => 0xfbb8214c => 181
	i32 4238158203, ; 422: Xamarin.GooglePlayServices.Measurement.Api => 0xfc9d297b => 173
	i32 4256097574, ; 423: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 96
	i32 4260525087, ; 424: System.Buffers => 0xfdf2741f => 57
	i32 4263658931, ; 425: Microsoft.Bcl.HashCode.dll => 0xfe2245b3 => 17
	i32 4284549794, ; 426: Xamarin.Firebase.Components => 0xff610aa2 => 148
	i32 4292120959 ; 427: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 116
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [428 x i32] [
	i32 186, i32 181, i32 29, i32 114, i32 167, i32 38, i32 156, i32 198, ; 0..7
	i32 168, i32 130, i32 143, i32 37, i32 130, i32 194, i32 2, i32 73, ; 8..15
	i32 90, i32 77, i32 157, i32 132, i32 41, i32 88, i32 108, i32 208, ; 16..23
	i32 94, i32 166, i32 185, i32 112, i32 106, i32 169, i32 79, i32 64, ; 24..31
	i32 110, i32 53, i32 142, i32 62, i32 199, i32 93, i32 141, i32 212, ; 32..39
	i32 163, i32 105, i32 150, i32 35, i32 61, i32 106, i32 118, i32 144, ; 40..47
	i32 43, i32 40, i32 33, i32 77, i32 46, i32 207, i32 194, i32 31, ; 48..55
	i32 179, i32 16, i32 169, i32 205, i32 66, i32 8, i32 99, i32 104, ; 56..63
	i32 176, i32 69, i32 137, i32 85, i32 72, i32 196, i32 76, i32 191, ; 64..71
	i32 182, i32 195, i32 51, i32 162, i32 45, i32 204, i32 47, i32 32, ; 72..79
	i32 203, i32 125, i32 152, i32 201, i32 153, i32 39, i32 14, i32 45, ; 80..87
	i32 167, i32 38, i32 195, i32 56, i32 110, i32 9, i32 212, i32 129, ; 88..95
	i32 27, i32 164, i32 42, i32 84, i32 159, i32 188, i32 115, i32 193, ; 96..103
	i32 61, i32 19, i32 145, i32 157, i32 154, i32 20, i32 187, i32 135, ; 104..111
	i32 122, i32 20, i32 85, i32 25, i32 55, i32 187, i32 200, i32 91, ; 112..119
	i32 176, i32 41, i32 165, i32 131, i32 136, i32 189, i32 196, i32 82, ; 120..127
	i32 52, i32 101, i32 0, i32 147, i32 210, i32 129, i32 174, i32 190, ; 128..135
	i32 119, i32 95, i32 166, i32 67, i32 146, i32 50, i32 160, i32 58, ; 136..143
	i32 204, i32 83, i32 33, i32 58, i32 18, i32 8, i32 40, i32 182, ; 144..151
	i32 78, i32 100, i32 15, i32 73, i32 6, i32 164, i32 117, i32 139, ; 152..159
	i32 104, i32 98, i32 63, i32 68, i32 133, i32 161, i32 150, i32 94, ; 160..167
	i32 201, i32 18, i32 21, i32 192, i32 53, i32 49, i32 89, i32 132, ; 168..175
	i32 31, i32 59, i32 189, i32 105, i32 16, i32 117, i32 199, i32 193, ; 176..183
	i32 161, i32 123, i32 30, i32 44, i32 141, i32 146, i32 160, i32 86, ; 184..191
	i32 23, i32 19, i32 5, i32 171, i32 120, i32 192, i32 57, i32 42, ; 192..199
	i32 23, i32 115, i32 142, i32 111, i32 43, i32 68, i32 155, i32 162, ; 200..207
	i32 65, i32 107, i32 168, i32 54, i32 158, i32 170, i32 36, i32 78, ; 208..215
	i32 143, i32 32, i32 173, i32 30, i32 183, i32 29, i32 197, i32 63, ; 216..223
	i32 7, i32 135, i32 50, i32 118, i32 21, i32 120, i32 109, i32 26, ; 224..231
	i32 127, i32 55, i32 80, i32 178, i32 145, i32 103, i32 124, i32 209, ; 232..239
	i32 51, i32 93, i32 1, i32 12, i32 154, i32 202, i32 114, i32 177, ; 240..247
	i32 163, i32 69, i32 136, i32 184, i32 197, i32 98, i32 153, i32 102, ; 248..255
	i32 112, i32 22, i32 186, i32 133, i32 37, i32 155, i32 79, i32 83, ; 256..263
	i32 151, i32 4, i32 156, i32 191, i32 138, i32 128, i32 174, i32 48, ; 264..271
	i32 148, i32 95, i32 71, i32 128, i32 170, i32 22, i32 138, i32 134, ; 272..279
	i32 184, i32 144, i32 152, i32 39, i32 206, i32 35, i32 48, i32 139, ; 280..287
	i32 65, i32 81, i32 56, i32 165, i32 49, i32 101, i32 113, i32 131, ; 288..295
	i32 108, i32 14, i32 175, i32 9, i32 149, i32 121, i32 180, i32 74, ; 296..303
	i32 24, i32 147, i32 6, i32 177, i32 11, i32 211, i32 198, i32 24, ; 304..311
	i32 3, i32 100, i32 171, i32 213, i32 89, i32 211, i32 87, i32 2, ; 312..319
	i32 99, i32 3, i32 179, i32 46, i32 86, i32 149, i32 126, i32 122, ; 320..327
	i32 107, i32 140, i32 70, i32 52, i32 97, i32 12, i32 127, i32 67, ; 328..335
	i32 11, i32 210, i32 140, i32 28, i32 71, i32 1, i32 76, i32 102, ; 336..343
	i32 13, i32 185, i32 34, i32 175, i32 70, i32 207, i32 92, i32 172, ; 344..351
	i32 87, i32 72, i32 158, i32 206, i32 151, i32 124, i32 125, i32 159, ; 352..359
	i32 81, i32 111, i32 209, i32 26, i32 13, i32 34, i32 208, i32 74, ; 360..367
	i32 88, i32 92, i32 5, i32 203, i32 96, i32 80, i32 121, i32 66, ; 368..375
	i32 60, i32 54, i32 109, i32 188, i32 36, i32 90, i32 10, i32 119, ; 376..383
	i32 64, i32 27, i32 75, i32 75, i32 134, i32 126, i32 17, i32 97, ; 384..391
	i32 15, i32 91, i32 205, i32 137, i32 123, i32 190, i32 183, i32 202, ; 392..399
	i32 4, i32 84, i32 113, i32 172, i32 200, i32 180, i32 178, i32 10, ; 400..407
	i32 82, i32 7, i32 62, i32 47, i32 44, i32 103, i32 25, i32 213, ; 408..415
	i32 28, i32 59, i32 0, i32 116, i32 60, i32 181, i32 173, i32 96, ; 416..423
	i32 57, i32 17, i32 148, i32 116 ; 424..427
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}

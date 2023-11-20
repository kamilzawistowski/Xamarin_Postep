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
@assembly_image_cache_hashes = local_unnamed_addr constant [380 x i32] [
	i32 6657927, ; 0: Xamarin.Grpc.Protobuf.Lite.dll => 0x659787 => 164
	i32 9414545, ; 1: Xamarin.Grpc.Android => 0x8fa791 => 159
	i32 26230656, ; 2: Microsoft.Extensions.DependencyModel => 0x1903f80 => 28
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 111
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 154
	i32 39109920, ; 5: Newtonsoft.Json.dll => 0x254c520 => 37
	i32 57263871, ; 6: Xamarin.Forms.Core.dll => 0x369c6ff => 145
	i32 101534019, ; 7: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 127
	i32 118141284, ; 8: NativeMedia.Permision => 0x70ab164 => 36
	i32 120558881, ; 9: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 127
	i32 134690465, ; 10: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 171
	i32 159306688, ; 11: System.ComponentModel.Annotations => 0x97ed3c0 => 2
	i32 160529393, ; 12: Xamarin.Android.Arch.Core.Common => 0x9917bf1 => 72
	i32 165246403, ; 13: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 88
	i32 166922606, ; 14: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 76
	i32 177794437, ; 15: Xamarin.Forms.DataGrid => 0xa98ed85 => 146
	i32 182336117, ; 16: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 129
	i32 194720069, ; 17: Plugin.Messaging.Abstractions => 0xb9b3145 => 40
	i32 209399409, ; 18: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 86
	i32 230216969, ; 19: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 105
	i32 232815796, ; 20: System.Web.Services => 0xde07cb4 => 184
	i32 261689757, ; 21: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 91
	i32 266337479, ; 22: Xamarin.Google.Guava.FailureAccess.dll => 0xfdffcc7 => 153
	i32 271099684, ; 23: Xamarin.Grpc.OkHttp => 0x1028a724 => 163
	i32 278686392, ; 24: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 109
	i32 280482487, ; 25: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 103
	i32 318968648, ; 26: Xamarin.AndroidX.Activity.dll => 0x13031348 => 78
	i32 321597661, ; 27: System.Numerics => 0x132b30dd => 63
	i32 342366114, ; 28: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 107
	i32 347068432, ; 29: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 52
	i32 385762202, ; 30: System.Memory.dll => 0x16fe439a => 61
	i32 402672763, ; 31: Xamarin.Plugin.Calendar => 0x18004c7b => 175
	i32 441335492, ; 32: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 90
	i32 442521989, ; 33: Xamarin.Essentials => 0x1a605985 => 138
	i32 442565967, ; 34: System.Collections => 0x1a61054f => 188
	i32 450948140, ; 35: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 102
	i32 453011810, ; 36: Xamarin.Firebase.Database.Collection.dll => 0x1b006962 => 142
	i32 465846621, ; 37: mscorlib => 0x1bc4415d => 34
	i32 469710990, ; 38: System.dll => 0x1bff388e => 60
	i32 476646585, ; 39: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 103
	i32 486930444, ; 40: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 115
	i32 501000162, ; 41: Prism.dll => 0x1ddca7e2 => 42
	i32 504143952, ; 42: Plugin.LocalNotification.dll => 0x1e0ca050 => 39
	i32 513247710, ; 43: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 32
	i32 514659665, ; 44: Xamarin.Android.Support.Compat => 0x1ead1551 => 76
	i32 525008092, ; 45: SkiaSharp.dll => 0x1f4afcdc => 45
	i32 526420162, ; 46: System.Transactions.dll => 0x1f6088c2 => 183
	i32 527452488, ; 47: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 171
	i32 539058512, ; 48: Microsoft.Extensions.Logging => 0x20216150 => 30
	i32 548916678, ; 49: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 15
	i32 605376203, ; 50: System.IO.Compression.FileSystem => 0x24154ecb => 181
	i32 610194910, ; 51: System.Reactive.dll => 0x245ed5de => 65
	i32 612775031, ; 52: FontAwesome.Brand.dll => 0x24863477 => 7
	i32 627609679, ; 53: Xamarin.AndroidX.CustomView => 0x2568904f => 96
	i32 639843206, ; 54: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 101
	i32 662205335, ; 55: System.Text.Encodings.Web.dll => 0x27787397 => 68
	i32 663517072, ; 56: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 134
	i32 666292255, ; 57: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 83
	i32 690569205, ; 58: System.Xml.Linq.dll => 0x29293ff5 => 71
	i32 691348768, ; 59: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 173
	i32 692692150, ; 60: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 75
	i32 700284507, ; 61: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 168
	i32 712915335, ; 62: Xamarin.Grpc.Api => 0x2a7e3987 => 160
	i32 720511267, ; 63: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 172
	i32 748832960, ; 64: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 50
	i32 772835674, ; 65: QuestPDF.dll => 0x2e10895a => 44
	i32 775507847, ; 66: System.IO.Compression => 0x2e394f87 => 180
	i32 778756650, ; 67: SkiaSharp.HarfBuzz.dll => 0x2e6ae22a => 46
	i32 782533833, ; 68: Xamarin.Google.AutoValue.Annotations.dll => 0x2ea484c9 => 151
	i32 789151979, ; 69: Microsoft.Extensions.Options => 0x2f0980eb => 31
	i32 809851609, ; 70: System.Drawing.Common.dll => 0x30455ad9 => 179
	i32 843511501, ; 71: Xamarin.AndroidX.Print => 0x3246f6cd => 122
	i32 881234337, ; 72: Xamarin_Postep => 0x348691a1 => 177
	i32 884236112, ; 73: Plugin.CloudFirestore.dll => 0x34b45f50 => 38
	i32 886248193, ; 74: Microcharts.Droid => 0x34d31301 => 13
	i32 906948815, ; 75: QuestPDF => 0x360ef0cf => 44
	i32 928116545, ; 76: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 154
	i32 955402788, ; 77: Newtonsoft.Json => 0x38f24a24 => 37
	i32 956575887, ; 78: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 172
	i32 961995525, ; 79: Square.OkIO.dll => 0x3956e305 => 55
	i32 967690846, ; 80: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 107
	i32 974778368, ; 81: FormsViewGroup.dll => 0x3a19f000 => 8
	i32 992768348, ; 82: System.Collections.dll => 0x3b2c715c => 188
	i32 1012816738, ; 83: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 126
	i32 1028951442, ; 84: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 26
	i32 1032266309, ; 85: Plugin.Messaging.dll => 0x3d872245 => 41
	i32 1035644815, ; 86: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 82
	i32 1042160112, ; 87: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 148
	i32 1050026713, ; 88: Xamarin.Io.OpenCensus.OpenCensusApi.dll => 0x3e9622d9 => 166
	i32 1052210849, ; 89: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 112
	i32 1061503568, ; 90: Xamarin.Google.AutoValue.Annotations => 0x3f454250 => 151
	i32 1084122840, ; 91: Xamarin.Kotlin.StdLib => 0x409e66d8 => 170
	i32 1098259244, ; 92: System => 0x41761b2c => 60
	i32 1099692271, ; 93: Microsoft.DotNet.PlatformAbstractions => 0x418bf8ef => 18
	i32 1134910725, ; 94: Xamarin.Forms.DataGrid.dll => 0x43a55d05 => 146
	i32 1157931901, ; 95: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 19
	i32 1159499262, ; 96: Xamarin.Grpc.Stub.dll => 0x451c8dfe => 165
	i32 1175144683, ; 97: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 132
	i32 1178241025, ; 98: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 119
	i32 1202000627, ; 99: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 19
	i32 1204270330, ; 100: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 83
	i32 1204575371, ; 101: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 24
	i32 1208648034, ; 102: Square.OkHttp => 0x480a8162 => 54
	i32 1230765884, ; 103: Xamarin.Grpc.Stub => 0x495bff3c => 165
	i32 1244346141, ; 104: Xamarin.Protobuf.Lite => 0x4a2b371d => 176
	i32 1257494309, ; 105: Plugin.Messaging.Abstractions.dll => 0x4af3d725 => 40
	i32 1263886435, ; 106: Xamarin.Google.Guava.dll => 0x4b556063 => 152
	i32 1264511973, ; 107: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 128
	i32 1267360935, ; 108: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 133
	i32 1273391546, ; 109: Xamarin.Io.OpenCensus.OpenCensusContribGrpcMetrics => 0x4be669ba => 167
	i32 1275534314, ; 110: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 173
	i32 1292207520, ; 111: SQLitePCLRaw.core.dll => 0x4d0585a0 => 51
	i32 1293217323, ; 112: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 98
	i32 1324995046, ; 113: Xamarin_Postep.Android.dll => 0x4ef9d1e6 => 0
	i32 1333047053, ; 114: Xamarin.Firebase.Common => 0x4f74af0d => 140
	i32 1365406463, ; 115: System.ServiceModel.Internals.dll => 0x516272ff => 186
	i32 1376866003, ; 116: Xamarin.AndroidX.SavedState => 0x52114ed3 => 126
	i32 1395857551, ; 117: Xamarin.AndroidX.Media.dll => 0x5333188f => 116
	i32 1406073936, ; 118: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 92
	i32 1406299041, ; 119: Xamarin.Google.Guava.FailureAccess => 0x53d26ba1 => 153
	i32 1411638395, ; 120: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 66
	i32 1411702249, ; 121: Xamarin.Firebase.Auth.Interop.dll => 0x5424dde9 => 139
	i32 1421105759, ; 122: Spire.Email.dll => 0x54b45a5f => 49
	i32 1460219004, ; 123: Xamarin.Forms.Xaml => 0x57092c7c => 149
	i32 1461234159, ; 124: System.Collections.Immutable.dll => 0x5718a9ef => 57
	i32 1462112819, ; 125: System.IO.Compression.dll => 0x57261233 => 180
	i32 1469204771, ; 126: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 81
	i32 1470490898, ; 127: Microsoft.Extensions.Primitives => 0x57a5e912 => 32
	i32 1479771757, ; 128: System.Collections.Immutable => 0x5833866d => 57
	i32 1490351284, ; 129: Microsoft.Data.Sqlite.dll => 0x58d4f4b4 => 17
	i32 1523738190, ; 130: FontAwesome.Brand => 0x5ad2664e => 7
	i32 1524747670, ; 131: Plugin.LocalNotification => 0x5ae1cd96 => 39
	i32 1544135863, ; 132: Xamarin.Grpc.Api.dll => 0x5c09a4b7 => 160
	i32 1574652163, ; 133: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 77
	i32 1582372066, ; 134: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 97
	i32 1582526884, ; 135: Microcharts.Forms.dll => 0x5e5371a4 => 14
	i32 1587447679, ; 136: Xamarin.Android.Arch.Core.Common.dll => 0x5e9e877f => 72
	i32 1592978981, ; 137: System.Runtime.Serialization.dll => 0x5ef2ee25 => 6
	i32 1622152042, ; 138: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 114
	i32 1624863272, ; 139: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 136
	i32 1635184631, ; 140: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 101
	i32 1636350590, ; 141: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 95
	i32 1639515021, ; 142: System.Net.Http.dll => 0x61b9038d => 62
	i32 1657153582, ; 143: System.Runtime => 0x62c6282e => 67
	i32 1658241508, ; 144: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 130
	i32 1658251792, ; 145: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 150
	i32 1664238415, ; 146: Xamarin.Firebase.Database.Collection => 0x6332434f => 142
	i32 1670060433, ; 147: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 91
	i32 1678093242, ; 148: Xamarin_Postep.dll => 0x6405abba => 177
	i32 1688112883, ; 149: Microsoft.Data.Sqlite => 0x649e8ef3 => 17
	i32 1689493916, ; 150: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 20
	i32 1698840827, ; 151: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 169
	i32 1711441057, ; 152: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 52
	i32 1722051300, ; 153: SkiaSharp.Views.Forms => 0x66a46ae4 => 48
	i32 1729485958, ; 154: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 87
	i32 1766324549, ; 155: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 129
	i32 1770582343, ; 156: Microsoft.Extensions.Logging.dll => 0x6988f147 => 30
	i32 1776026572, ; 157: System.Core.dll => 0x69dc03cc => 58
	i32 1785684415, ; 158: Xamarin.Io.OpenCensus.OpenCensusContribGrpcMetrics.dll => 0x6a6f61bf => 167
	i32 1788241197, ; 159: Xamarin.AndroidX.Fragment => 0x6a96652d => 102
	i32 1796167890, ; 160: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 15
	i32 1808609942, ; 161: Xamarin.AndroidX.Loader => 0x6bcd3296 => 114
	i32 1812481981, ; 162: Xamarin.Plugin.Calendar.dll => 0x6c0847bd => 175
	i32 1813058853, ; 163: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 170
	i32 1813201214, ; 164: Xamarin.Google.Android.Material => 0x6c13413e => 150
	i32 1818569960, ; 165: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 120
	i32 1828688058, ; 166: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 29
	i32 1849271627, ; 167: Prism.Forms.dll => 0x6e39a54b => 43
	i32 1867746548, ; 168: Xamarin.Essentials.dll => 0x6f538cf4 => 138
	i32 1875053220, ; 169: Xamarin.Firebase.Auth.Interop => 0x6fc30aa4 => 139
	i32 1878053835, ; 170: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 149
	i32 1885316902, ; 171: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 84
	i32 1886040351, ; 172: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x706ab11f => 22
	i32 1894524299, ; 173: Microsoft.DotNet.PlatformAbstractions.dll => 0x70ec258b => 18
	i32 1904755420, ; 174: System.Runtime.InteropServices.WindowsRuntime.dll => 0x718842dc => 5
	i32 1908813208, ; 175: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 156
	i32 1919157823, ; 176: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 117
	i32 1983156543, ; 177: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 169
	i32 2011961780, ; 178: System.Buffers.dll => 0x77ec19b4 => 56
	i32 2012836262, ; 179: Plugin.Messaging => 0x77f971a6 => 41
	i32 2014489277, ; 180: Microsoft.EntityFrameworkCore.Sqlite => 0x7812aabd => 22
	i32 2019465201, ; 181: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 112
	i32 2055257422, ; 182: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 108
	i32 2066202781, ; 183: Prism => 0x7b27c09d => 42
	i32 2079903147, ; 184: System.Runtime.dll => 0x7bf8cdab => 67
	i32 2083657273, ; 185: Xamarin.Firebase.ProtoliteWellKnownTypes => 0x7c321639 => 144
	i32 2090596640, ; 186: System.Numerics.Vectors => 0x7c9bf920 => 64
	i32 2097448633, ; 187: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 104
	i32 2103459038, ; 188: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 53
	i32 2126786730, ; 189: Xamarin.Forms.Platform.Android => 0x7ec430aa => 147
	i32 2129483829, ; 190: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 155
	i32 2162265494, ; 191: NativeMedia.dll => 0x80e18d96 => 35
	i32 2166116741, ; 192: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 77
	i32 2181898931, ; 193: Microsoft.Extensions.Options.dll => 0x820d22b3 => 31
	i32 2192057212, ; 194: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 29
	i32 2195564014, ; 195: Xamarin.Grpc.Context => 0x82dda5ee => 161
	i32 2197979891, ; 196: Microsoft.Extensions.DependencyModel.dll => 0x830282f3 => 28
	i32 2201107256, ; 197: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 174
	i32 2201231467, ; 198: System.Net.Http => 0x8334206b => 62
	i32 2217644978, ; 199: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 132
	i32 2232960810, ; 200: Spire.Email => 0x8518472a => 49
	i32 2244775296, ; 201: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 115
	i32 2252897993, ; 202: Microsoft.EntityFrameworkCore => 0x86487ec9 => 20
	i32 2256548716, ; 203: Xamarin.AndroidX.MultiDex => 0x8680336c => 117
	i32 2261435625, ; 204: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 106
	i32 2266799131, ; 205: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 25
	i32 2279755925, ; 206: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 124
	i32 2307769286, ; 207: Square.OkHttp.dll => 0x898dc3c6 => 54
	i32 2315684594, ; 208: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 79
	i32 2403452196, ; 209: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 100
	i32 2409053734, ; 210: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 121
	i32 2435904999, ; 211: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 185
	i32 2465273461, ; 212: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 50
	i32 2465532216, ; 213: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 90
	i32 2471841756, ; 214: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 215: Java.Interop.dll => 0x93918882 => 11
	i32 2501346920, ; 216: System.Data.DataSetExtensions => 0x95178668 => 178
	i32 2505896520, ; 217: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 111
	i32 2570120770, ; 218: System.Text.Encodings.Web => 0x9930ee42 => 68
	i32 2581819634, ; 219: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 133
	i32 2591433303, ; 220: Xamarin.Grpc.Core.dll => 0x9a762257 => 162
	i32 2605712449, ; 221: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 174
	i32 2620871830, ; 222: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 95
	i32 2624644809, ; 223: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 99
	i32 2633051222, ; 224: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 109
	i32 2634653062, ; 225: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 21
	i32 2640452924, ; 226: Xamarin.Grpc.Protobuf.Lite => 0x9d621d3c => 164
	i32 2701096212, ; 227: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 130
	i32 2708713469, ; 228: NativeMedia.Permision.dll => 0xa173affd => 36
	i32 2715831284, ; 229: Xamarin.Firebase.ProtoliteWellKnownTypes.dll => 0xa1e04bf4 => 144
	i32 2732626843, ; 230: Xamarin.AndroidX.Activity => 0xa2e0939b => 78
	i32 2737747696, ; 231: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 81
	i32 2752363754, ; 232: Xamarin.Firebase.Firestore.dll => 0xa40dbcea => 143
	i32 2765824710, ; 233: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 4
	i32 2766581644, ; 234: Xamarin.Forms.Core => 0xa4e6af8c => 145
	i32 2770495804, ; 235: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 168
	i32 2778768386, ; 236: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 135
	i32 2779977773, ; 237: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 125
	i32 2795602088, ; 238: SkiaSharp.Views.Android.dll => 0xa6a180a8 => 47
	i32 2804607052, ; 239: Xamarin.Firebase.Components.dll => 0xa72ae84c => 141
	i32 2810250172, ; 240: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 92
	i32 2819470561, ; 241: System.Xml.dll => 0xa80db4e1 => 70
	i32 2821294376, ; 242: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 125
	i32 2847418871, ; 243: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 155
	i32 2847789619, ; 244: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 21
	i32 2853208004, ; 245: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 135
	i32 2855708567, ; 246: Xamarin.AndroidX.Transition => 0xaa36a797 => 131
	i32 2856624150, ; 247: Xamarin.Grpc.Core => 0xaa44a016 => 162
	i32 2885620179, ; 248: Plugin.CloudFirestore => 0xabff11d3 => 38
	i32 2903344695, ; 249: System.ComponentModel.Composition => 0xad0d8637 => 182
	i32 2905242038, ; 250: mscorlib.dll => 0xad2a79b6 => 34
	i32 2912489636, ; 251: SkiaSharp.Views.Android => 0xad9910a4 => 47
	i32 2916838712, ; 252: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 136
	i32 2919462931, ; 253: System.Numerics.Vectors.dll => 0xae037813 => 64
	i32 2921128767, ; 254: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 80
	i32 2943219317, ; 255: Square.OkIO => 0xaf6df675 => 55
	i32 2960379616, ; 256: Xamarin.Google.Guava => 0xb073cee0 => 152
	i32 2974793899, ; 257: SkiaSharp.Views.Forms.dll => 0xb14fc0ab => 48
	i32 2978675010, ; 258: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 98
	i32 2996846495, ; 259: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 110
	i32 3016983068, ; 260: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 128
	i32 3024354802, ; 261: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 105
	i32 3036068679, ; 262: Microcharts.Droid.dll => 0xb4f6bb47 => 13
	i32 3044182254, ; 263: FormsViewGroup => 0xb57288ee => 8
	i32 3057625584, ; 264: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 118
	i32 3058099980, ; 265: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 158
	i32 3068715062, ; 266: Xamarin.Android.Arch.Lifecycle.Common => 0xb6e8e036 => 73
	i32 3069363400, ; 267: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 23
	i32 3071899978, ; 268: Xamarin.Firebase.Common.dll => 0xb719794a => 140
	i32 3111772706, ; 269: System.Runtime.Serialization => 0xb979e222 => 6
	i32 3115974355, ; 270: IconFontHelper => 0xb9b9fed3 => 10
	i32 3124832203, ; 271: System.Threading.Tasks.Extensions => 0xba4127cb => 187
	i32 3195844289, ; 272: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 23
	i32 3204380047, ; 273: System.Data.dll => 0xbefef58f => 3
	i32 3211777861, ; 274: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 97
	i32 3230466174, ; 275: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 156
	i32 3247949154, ; 276: Mono.Security => 0xc197c562 => 189
	i32 3258312781, ; 277: Xamarin.AndroidX.CardView => 0xc235e84d => 87
	i32 3265893370, ; 278: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 187
	i32 3267021929, ; 279: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 85
	i32 3280506390, ; 280: System.ComponentModel.Annotations.dll => 0xc3888e16 => 2
	i32 3317135071, ; 281: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 96
	i32 3317144872, ; 282: System.Data => 0xc5b79d28 => 3
	i32 3340387945, ; 283: SkiaSharp => 0xc71a4669 => 45
	i32 3340431453, ; 284: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 84
	i32 3345895724, ; 285: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 123
	i32 3346324047, ; 286: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 119
	i32 3353484488, ; 287: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 104
	i32 3353544232, ; 288: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 137
	i32 3358260929, ; 289: System.Text.Json => 0xc82afec1 => 69
	i32 3360279109, ; 290: SQLitePCLRaw.core => 0xc849ca45 => 51
	i32 3362522851, ; 291: Xamarin.AndroidX.Core => 0xc86c06e3 => 94
	i32 3366347497, ; 292: Java.Interop => 0xc8a662e9 => 11
	i32 3374999561, ; 293: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 124
	i32 3395150330, ; 294: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 66
	i32 3401615630, ; 295: IconFontHelper.dll => 0xcac0890e => 10
	i32 3404865022, ; 296: System.ServiceModel.Internals => 0xcaf21dfe => 186
	i32 3407215217, ; 297: Xamarin.CommunityToolkit => 0xcb15fa71 => 137
	i32 3428513518, ; 298: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 27
	i32 3429136800, ; 299: System.Xml => 0xcc6479a0 => 70
	i32 3430777524, ; 300: netstandard => 0xcc7d82b4 => 1
	i32 3439690031, ; 301: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 75
	i32 3441283291, ; 302: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 99
	i32 3455791806, ; 303: Microcharts => 0xcdfb32be => 12
	i32 3473879593, ; 304: Xamarin.Grpc.OkHttp.dll => 0xcf0f3229 => 163
	i32 3476120550, ; 305: Mono.Android => 0xcf3163e6 => 33
	i32 3485117614, ; 306: System.Text.Json.dll => 0xcfbaacae => 69
	i32 3486566296, ; 307: System.Transactions => 0xcfd0c798 => 183
	i32 3493954962, ; 308: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 89
	i32 3494395880, ; 309: Xamarin.GooglePlayServices.Location.dll => 0xd0483fe8 => 157
	i32 3501239056, ; 310: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 85
	i32 3509114376, ; 311: System.Xml.Linq => 0xd128d608 => 71
	i32 3536029504, ; 312: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 147
	i32 3567349600, ; 313: System.ComponentModel.Composition.dll => 0xd4a16f60 => 182
	i32 3597794883, ; 314: Xamarin.Firebase.Firestore => 0xd671fe43 => 143
	i32 3618140916, ; 315: Xamarin.AndroidX.Preference => 0xd7a872f4 => 121
	i32 3627220390, ; 316: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 122
	i32 3632359727, ; 317: Xamarin.Forms.Platform => 0xd881692f => 148
	i32 3633644679, ; 318: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 80
	i32 3641597786, ; 319: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 108
	i32 3645089577, ; 320: System.ComponentModel.DataAnnotations => 0xd943a729 => 185
	i32 3657292374, ; 321: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 25
	i32 3668042751, ; 322: Microcharts.dll => 0xdaa1e3ff => 12
	i32 3672681054, ; 323: Mono.Android.dll => 0xdae8aa5e => 33
	i32 3676310014, ; 324: System.Web.Services.dll => 0xdb2009fe => 184
	i32 3681174138, ; 325: Xamarin.Android.Arch.Lifecycle.Common.dll => 0xdb6a427a => 73
	i32 3682565725, ; 326: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 86
	i32 3684561358, ; 327: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 89
	i32 3684933406, ; 328: System.Runtime.InteropServices.WindowsRuntime => 0xdba39f1e => 5
	i32 3689375977, ; 329: System.Drawing.Common => 0xdbe768e9 => 179
	i32 3706696989, ; 330: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 93
	i32 3718780102, ; 331: Xamarin.AndroidX.Annotation => 0xdda814c6 => 79
	i32 3724971120, ; 332: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 118
	i32 3731644420, ; 333: System.Reactive => 0xde6c6004 => 65
	i32 3748608112, ; 334: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 59
	i32 3754567612, ; 335: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 53
	i32 3758932259, ; 336: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 106
	i32 3771698872, ; 337: Xamarin.Io.OpenCensus.OpenCensusApi => 0xe0cf8eb8 => 166
	i32 3780807376, ; 338: NativeMedia => 0xe15a8ad0 => 35
	i32 3786282454, ; 339: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 88
	i32 3792835768, ; 340: HarfBuzzSharp => 0xe21214b8 => 9
	i32 3822602673, ; 341: Xamarin.AndroidX.Media => 0xe3d849b1 => 116
	i32 3829621856, ; 342: System.Numerics.dll => 0xe4436460 => 63
	i32 3841636137, ; 343: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 26
	i32 3862817207, ; 344: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0xe63de9b7 => 74
	i32 3874897629, ; 345: Xamarin.Android.Arch.Lifecycle.Runtime => 0xe6f63edd => 74
	i32 3885922214, ; 346: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 131
	i32 3888767677, ; 347: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 123
	i32 3894448521, ; 348: Microsoft.Bcl.HashCode => 0xe8209189 => 16
	i32 3896760992, ; 349: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 94
	i32 3903721208, ; 350: Microcharts.Forms => 0xe8ae0ef8 => 14
	i32 3920810846, ; 351: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 181
	i32 3921031405, ; 352: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 134
	i32 3931092270, ; 353: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 120
	i32 3943739589, ; 354: Xamarin.Grpc.Context.dll => 0xeb10b0c5 => 161
	i32 3945713374, ; 355: System.Data.DataSetExtensions.dll => 0xeb2ecede => 178
	i32 3953953790, ; 356: System.Text.Encoding.CodePages => 0xebac8bfe => 4
	i32 3955647286, ; 357: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 82
	i32 3959773229, ; 358: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 110
	i32 3967165417, ; 359: Xamarin.GooglePlayServices.Location => 0xec7623e9 => 157
	i32 3968844647, ; 360: Xamarin.Protobuf.Lite.dll => 0xec8fc367 => 176
	i32 3970018735, ; 361: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 158
	i32 4003906742, ; 362: HarfBuzzSharp.dll => 0xeea6c4b6 => 9
	i32 4025784931, ; 363: System.Memory => 0xeff49a63 => 61
	i32 4066802364, ; 364: SkiaSharp.HarfBuzz => 0xf2667abc => 46
	i32 4085261167, ; 365: Prism.Forms => 0xf380236f => 43
	i32 4101593132, ; 366: Xamarin.AndroidX.Emoji2 => 0xf479582c => 100
	i32 4101842092, ; 367: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 24
	i32 4105002889, ; 368: Mono.Security.dll => 0xf4ad5f89 => 189
	i32 4126470640, ; 369: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 27
	i32 4151237749, ; 370: System.Core => 0xf76edc75 => 58
	i32 4171745578, ; 371: Xamarin_Postep.Android => 0xf8a7c92a => 0
	i32 4182413190, ; 372: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 113
	i32 4213026141, ; 373: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 59
	i32 4223148364, ; 374: Xamarin.Grpc.Android.dll => 0xfbb8214c => 159
	i32 4256097574, ; 375: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 93
	i32 4260525087, ; 376: System.Buffers => 0xfdf2741f => 56
	i32 4263658931, ; 377: Microsoft.Bcl.HashCode.dll => 0xfe2245b3 => 16
	i32 4284549794, ; 378: Xamarin.Firebase.Components => 0xff610aa2 => 141
	i32 4292120959 ; 379: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 113
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [380 x i32] [
	i32 164, i32 159, i32 28, i32 111, i32 154, i32 37, i32 145, i32 127, ; 0..7
	i32 36, i32 127, i32 171, i32 2, i32 72, i32 88, i32 76, i32 146, ; 8..15
	i32 129, i32 40, i32 86, i32 105, i32 184, i32 91, i32 153, i32 163, ; 16..23
	i32 109, i32 103, i32 78, i32 63, i32 107, i32 52, i32 61, i32 175, ; 24..31
	i32 90, i32 138, i32 188, i32 102, i32 142, i32 34, i32 60, i32 103, ; 32..39
	i32 115, i32 42, i32 39, i32 32, i32 76, i32 45, i32 183, i32 171, ; 40..47
	i32 30, i32 15, i32 181, i32 65, i32 7, i32 96, i32 101, i32 68, ; 48..55
	i32 134, i32 83, i32 71, i32 173, i32 75, i32 168, i32 160, i32 172, ; 56..63
	i32 50, i32 44, i32 180, i32 46, i32 151, i32 31, i32 179, i32 122, ; 64..71
	i32 177, i32 38, i32 13, i32 44, i32 154, i32 37, i32 172, i32 55, ; 72..79
	i32 107, i32 8, i32 188, i32 126, i32 26, i32 41, i32 82, i32 148, ; 80..87
	i32 166, i32 112, i32 151, i32 170, i32 60, i32 18, i32 146, i32 19, ; 88..95
	i32 165, i32 132, i32 119, i32 19, i32 83, i32 24, i32 54, i32 165, ; 96..103
	i32 176, i32 40, i32 152, i32 128, i32 133, i32 167, i32 173, i32 51, ; 104..111
	i32 98, i32 0, i32 140, i32 186, i32 126, i32 116, i32 92, i32 153, ; 112..119
	i32 66, i32 139, i32 49, i32 149, i32 57, i32 180, i32 81, i32 32, ; 120..127
	i32 57, i32 17, i32 7, i32 39, i32 160, i32 77, i32 97, i32 14, ; 128..135
	i32 72, i32 6, i32 114, i32 136, i32 101, i32 95, i32 62, i32 67, ; 136..143
	i32 130, i32 150, i32 142, i32 91, i32 177, i32 17, i32 20, i32 169, ; 144..151
	i32 52, i32 48, i32 87, i32 129, i32 30, i32 58, i32 167, i32 102, ; 152..159
	i32 15, i32 114, i32 175, i32 170, i32 150, i32 120, i32 29, i32 43, ; 160..167
	i32 138, i32 139, i32 149, i32 84, i32 22, i32 18, i32 5, i32 156, ; 168..175
	i32 117, i32 169, i32 56, i32 41, i32 22, i32 112, i32 108, i32 42, ; 176..183
	i32 67, i32 144, i32 64, i32 104, i32 53, i32 147, i32 155, i32 35, ; 184..191
	i32 77, i32 31, i32 29, i32 161, i32 28, i32 174, i32 62, i32 132, ; 192..199
	i32 49, i32 115, i32 20, i32 117, i32 106, i32 25, i32 124, i32 54, ; 200..207
	i32 79, i32 100, i32 121, i32 185, i32 50, i32 90, i32 1, i32 11, ; 208..215
	i32 178, i32 111, i32 68, i32 133, i32 162, i32 174, i32 95, i32 99, ; 216..223
	i32 109, i32 21, i32 164, i32 130, i32 36, i32 144, i32 78, i32 81, ; 224..231
	i32 143, i32 4, i32 145, i32 168, i32 135, i32 125, i32 47, i32 141, ; 232..239
	i32 92, i32 70, i32 125, i32 155, i32 21, i32 135, i32 131, i32 162, ; 240..247
	i32 38, i32 182, i32 34, i32 47, i32 136, i32 64, i32 80, i32 55, ; 248..255
	i32 152, i32 48, i32 98, i32 110, i32 128, i32 105, i32 13, i32 8, ; 256..263
	i32 118, i32 158, i32 73, i32 23, i32 140, i32 6, i32 10, i32 187, ; 264..271
	i32 23, i32 3, i32 97, i32 156, i32 189, i32 87, i32 187, i32 85, ; 272..279
	i32 2, i32 96, i32 3, i32 45, i32 84, i32 123, i32 119, i32 104, ; 280..287
	i32 137, i32 69, i32 51, i32 94, i32 11, i32 124, i32 66, i32 10, ; 288..295
	i32 186, i32 137, i32 27, i32 70, i32 1, i32 75, i32 99, i32 12, ; 296..303
	i32 163, i32 33, i32 69, i32 183, i32 89, i32 157, i32 85, i32 71, ; 304..311
	i32 147, i32 182, i32 143, i32 121, i32 122, i32 148, i32 80, i32 108, ; 312..319
	i32 185, i32 25, i32 12, i32 33, i32 184, i32 73, i32 86, i32 89, ; 320..327
	i32 5, i32 179, i32 93, i32 79, i32 118, i32 65, i32 59, i32 53, ; 328..335
	i32 106, i32 166, i32 35, i32 88, i32 9, i32 116, i32 63, i32 26, ; 336..343
	i32 74, i32 74, i32 131, i32 123, i32 16, i32 94, i32 14, i32 181, ; 344..351
	i32 134, i32 120, i32 161, i32 178, i32 4, i32 82, i32 110, i32 157, ; 352..359
	i32 176, i32 158, i32 9, i32 61, i32 46, i32 43, i32 100, i32 24, ; 360..367
	i32 189, i32 27, i32 58, i32 0, i32 113, i32 59, i32 159, i32 93, ; 368..375
	i32 56, i32 16, i32 141, i32 113 ; 376..379
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

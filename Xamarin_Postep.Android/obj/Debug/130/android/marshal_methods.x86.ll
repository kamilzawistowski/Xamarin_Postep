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
@assembly_image_cache_hashes = local_unnamed_addr constant [326 x i32] [
	i32 26230656, ; 0: Microsoft.Extensions.DependencyModel => 0x1903f80 => 33
	i32 32687329, ; 1: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 105
	i32 34715100, ; 2: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 138
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 132
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 121
	i32 117431740, ; 5: System.Runtime.InteropServices => 0x6ffddbc => 158
	i32 120558881, ; 6: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 121
	i32 134690465, ; 7: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 142
	i32 159306688, ; 8: System.ComponentModel.Annotations => 0x97ed3c0 => 2
	i32 160529393, ; 9: Xamarin.Android.Arch.Core.Common => 0x9917bf1 => 66
	i32 165246403, ; 10: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 82
	i32 166922606, ; 11: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 70
	i32 177794437, ; 12: Xamarin.Forms.DataGrid => 0xa98ed85 => 133
	i32 182336117, ; 13: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 123
	i32 194720069, ; 14: Plugin.Messaging.Abstractions => 0xb9b3145 => 40
	i32 209399409, ; 15: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 80
	i32 220171995, ; 16: System.Diagnostics.Debug => 0xd1f8edb => 9
	i32 230216969, ; 17: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 99
	i32 232815796, ; 18: System.Web.Services => 0xde07cb4 => 154
	i32 261689757, ; 19: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 85
	i32 278686392, ; 20: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 103
	i32 280482487, ; 21: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 97
	i32 318968648, ; 22: Xamarin.AndroidX.Activity.dll => 0x13031348 => 72
	i32 321597661, ; 23: System.Numerics => 0x132b30dd => 58
	i32 342366114, ; 24: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 101
	i32 347068432, ; 25: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 50
	i32 385762202, ; 26: System.Memory.dll => 0x16fe439a => 57
	i32 402672763, ; 27: Xamarin.Plugin.Calendar => 0x18004c7b => 146
	i32 441335492, ; 28: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 84
	i32 442521989, ; 29: Xamarin.Essentials => 0x1a605985 => 131
	i32 442565967, ; 30: System.Collections => 0x1a61054f => 7
	i32 450948140, ; 31: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 96
	i32 465846621, ; 32: mscorlib => 0x1bc4415d => 39
	i32 469710990, ; 33: System.dll => 0x1bff388e => 56
	i32 476646585, ; 34: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 97
	i32 486930444, ; 35: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 109
	i32 513247710, ; 36: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 37
	i32 514659665, ; 37: Xamarin.Android.Support.Compat => 0x1ead1551 => 70
	i32 525008092, ; 38: SkiaSharp.dll => 0x1f4afcdc => 43
	i32 526420162, ; 39: System.Transactions.dll => 0x1f6088c2 => 153
	i32 527452488, ; 40: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 142
	i32 539058512, ; 41: Microsoft.Extensions.Logging => 0x20216150 => 35
	i32 545304856, ; 42: System.Runtime.Extensions => 0x2080b118 => 161
	i32 548916678, ; 43: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 18
	i32 605376203, ; 44: System.IO.Compression.FileSystem => 0x24154ecb => 151
	i32 627609679, ; 45: Xamarin.AndroidX.CustomView => 0x2568904f => 90
	i32 639843206, ; 46: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 95
	i32 662205335, ; 47: System.Text.Encodings.Web.dll => 0x27787397 => 62
	i32 663517072, ; 48: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 128
	i32 666292255, ; 49: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 77
	i32 672442732, ; 50: System.Collections.Concurrent => 0x2814a96c => 6
	i32 690569205, ; 51: System.Xml.Linq.dll => 0x29293ff5 => 65
	i32 691348768, ; 52: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 144
	i32 692692150, ; 53: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 69
	i32 700284507, ; 54: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 139
	i32 720511267, ; 55: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 143
	i32 748832960, ; 56: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 48
	i32 772835674, ; 57: QuestPDF.dll => 0x2e10895a => 42
	i32 775507847, ; 58: System.IO.Compression => 0x2e394f87 => 150
	i32 778756650, ; 59: SkiaSharp.HarfBuzz.dll => 0x2e6ae22a => 44
	i32 789151979, ; 60: Microsoft.Extensions.Options => 0x2f0980eb => 36
	i32 809851609, ; 61: System.Drawing.Common.dll => 0x30455ad9 => 149
	i32 843511501, ; 62: Xamarin.AndroidX.Print => 0x3246f6cd => 116
	i32 881234337, ; 63: Xamarin_Postep => 0x348691a1 => 147
	i32 886248193, ; 64: Microcharts.Droid => 0x34d31301 => 16
	i32 906948815, ; 65: QuestPDF => 0x360ef0cf => 42
	i32 928116545, ; 66: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 138
	i32 956575887, ; 67: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 143
	i32 967690846, ; 68: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 101
	i32 974778368, ; 69: FormsViewGroup.dll => 0x3a19f000 => 12
	i32 975236339, ; 70: System.Diagnostics.Tracing => 0x3a20ecf3 => 159
	i32 992768348, ; 71: System.Collections.dll => 0x3b2c715c => 7
	i32 1012816738, ; 72: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 120
	i32 1028951442, ; 73: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 31
	i32 1032266309, ; 74: Plugin.Messaging.dll => 0x3d872245 => 41
	i32 1035644815, ; 75: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 76
	i32 1042160112, ; 76: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 135
	i32 1052210849, ; 77: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 106
	i32 1084122840, ; 78: Xamarin.Kotlin.StdLib => 0x409e66d8 => 141
	i32 1098259244, ; 79: System => 0x41761b2c => 56
	i32 1099692271, ; 80: Microsoft.DotNet.PlatformAbstractions => 0x418bf8ef => 21
	i32 1134910725, ; 81: Xamarin.Forms.DataGrid.dll => 0x43a55d05 => 133
	i32 1157931901, ; 82: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 22
	i32 1175144683, ; 83: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 126
	i32 1178241025, ; 84: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 113
	i32 1202000627, ; 85: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 22
	i32 1204270330, ; 86: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 77
	i32 1204575371, ; 87: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 27
	i32 1257494309, ; 88: Plugin.Messaging.Abstractions.dll => 0x4af3d725 => 40
	i32 1264511973, ; 89: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 122
	i32 1267360935, ; 90: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 127
	i32 1275534314, ; 91: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 144
	i32 1292207520, ; 92: SQLitePCLRaw.core.dll => 0x4d0585a0 => 49
	i32 1293217323, ; 93: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 92
	i32 1324995046, ; 94: Xamarin_Postep.Android.dll => 0x4ef9d1e6 => 0
	i32 1365406463, ; 95: System.ServiceModel.Internals.dll => 0x516272ff => 156
	i32 1376866003, ; 96: Xamarin.AndroidX.SavedState => 0x52114ed3 => 120
	i32 1379779777, ; 97: System.Resources.ResourceManager => 0x523dc4c1 => 5
	i32 1395857551, ; 98: Xamarin.AndroidX.Media.dll => 0x5333188f => 110
	i32 1406073936, ; 99: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 86
	i32 1411638395, ; 100: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 60
	i32 1421105759, ; 101: Spire.Email.dll => 0x54b45a5f => 47
	i32 1457743152, ; 102: System.Runtime.Extensions.dll => 0x56e36530 => 161
	i32 1460219004, ; 103: Xamarin.Forms.Xaml => 0x57092c7c => 136
	i32 1461234159, ; 104: System.Collections.Immutable.dll => 0x5718a9ef => 53
	i32 1462112819, ; 105: System.IO.Compression.dll => 0x57261233 => 150
	i32 1469204771, ; 106: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 75
	i32 1470490898, ; 107: Microsoft.Extensions.Primitives => 0x57a5e912 => 37
	i32 1479771757, ; 108: System.Collections.Immutable => 0x5833866d => 53
	i32 1490351284, ; 109: Microsoft.Data.Sqlite.dll => 0x58d4f4b4 => 20
	i32 1574652163, ; 110: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 71
	i32 1582372066, ; 111: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 91
	i32 1582526884, ; 112: Microcharts.Forms.dll => 0x5e5371a4 => 17
	i32 1587447679, ; 113: Xamarin.Android.Arch.Core.Common.dll => 0x5e9e877f => 66
	i32 1592978981, ; 114: System.Runtime.Serialization.dll => 0x5ef2ee25 => 11
	i32 1622152042, ; 115: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 108
	i32 1624863272, ; 116: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 130
	i32 1635184631, ; 117: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 95
	i32 1636350590, ; 118: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 89
	i32 1639515021, ; 119: System.Net.Http.dll => 0x61b9038d => 10
	i32 1657153582, ; 120: System.Runtime => 0x62c6282e => 61
	i32 1658241508, ; 121: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 124
	i32 1658251792, ; 122: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 137
	i32 1670060433, ; 123: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 85
	i32 1678093242, ; 124: Xamarin_Postep.dll => 0x6405abba => 147
	i32 1688112883, ; 125: Microsoft.Data.Sqlite => 0x649e8ef3 => 20
	i32 1689493916, ; 126: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 23
	i32 1698840827, ; 127: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 140
	i32 1701541528, ; 128: System.Diagnostics.Debug.dll => 0x656b7698 => 9
	i32 1711441057, ; 129: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 50
	i32 1722051300, ; 130: SkiaSharp.Views.Forms => 0x66a46ae4 => 46
	i32 1726116996, ; 131: System.Reflection.dll => 0x66e27484 => 160
	i32 1729485958, ; 132: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 81
	i32 1766324549, ; 133: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 123
	i32 1770582343, ; 134: Microsoft.Extensions.Logging.dll => 0x6988f147 => 35
	i32 1776026572, ; 135: System.Core.dll => 0x69dc03cc => 54
	i32 1788241197, ; 136: Xamarin.AndroidX.Fragment => 0x6a96652d => 96
	i32 1796167890, ; 137: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 18
	i32 1808609942, ; 138: Xamarin.AndroidX.Loader => 0x6bcd3296 => 108
	i32 1812481981, ; 139: Xamarin.Plugin.Calendar.dll => 0x6c0847bd => 146
	i32 1813058853, ; 140: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 141
	i32 1813201214, ; 141: Xamarin.Google.Android.Material => 0x6c13413e => 137
	i32 1818569960, ; 142: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 114
	i32 1828688058, ; 143: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 34
	i32 1867746548, ; 144: Xamarin.Essentials.dll => 0x6f538cf4 => 131
	i32 1878053835, ; 145: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 136
	i32 1885316902, ; 146: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 78
	i32 1886040351, ; 147: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x706ab11f => 25
	i32 1894524299, ; 148: Microsoft.DotNet.PlatformAbstractions.dll => 0x70ec258b => 21
	i32 1900610850, ; 149: System.Resources.ResourceManager.dll => 0x71490522 => 5
	i32 1919157823, ; 150: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 111
	i32 1968388702, ; 151: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 30
	i32 1983156543, ; 152: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 140
	i32 2011961780, ; 153: System.Buffers.dll => 0x77ec19b4 => 52
	i32 2012836262, ; 154: Plugin.Messaging => 0x77f971a6 => 41
	i32 2014489277, ; 155: Microsoft.EntityFrameworkCore.Sqlite => 0x7812aabd => 25
	i32 2019465201, ; 156: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 106
	i32 2048278909, ; 157: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 29
	i32 2055257422, ; 158: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 102
	i32 2079903147, ; 159: System.Runtime.dll => 0x7bf8cdab => 61
	i32 2090596640, ; 160: System.Numerics.Vectors => 0x7c9bf920 => 59
	i32 2097448633, ; 161: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 98
	i32 2103459038, ; 162: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 51
	i32 2126786730, ; 163: Xamarin.Forms.Platform.Android => 0x7ec430aa => 134
	i32 2166116741, ; 164: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 71
	i32 2181898931, ; 165: Microsoft.Extensions.Options.dll => 0x820d22b3 => 36
	i32 2192057212, ; 166: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 34
	i32 2197979891, ; 167: Microsoft.Extensions.DependencyModel.dll => 0x830282f3 => 33
	i32 2201107256, ; 168: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 145
	i32 2201231467, ; 169: System.Net.Http => 0x8334206b => 10
	i32 2217644978, ; 170: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 126
	i32 2232960810, ; 171: Spire.Email => 0x8518472a => 47
	i32 2244775296, ; 172: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 109
	i32 2252897993, ; 173: Microsoft.EntityFrameworkCore => 0x86487ec9 => 23
	i32 2256548716, ; 174: Xamarin.AndroidX.MultiDex => 0x8680336c => 111
	i32 2261435625, ; 175: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 100
	i32 2266799131, ; 176: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 28
	i32 2279755925, ; 177: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 118
	i32 2315684594, ; 178: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 73
	i32 2371007202, ; 179: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 30
	i32 2403452196, ; 180: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 94
	i32 2409053734, ; 181: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 115
	i32 2435904999, ; 182: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 155
	i32 2465273461, ; 183: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 48
	i32 2465532216, ; 184: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 84
	i32 2471841756, ; 185: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 186: Java.Interop.dll => 0x93918882 => 14
	i32 2501346920, ; 187: System.Data.DataSetExtensions => 0x95178668 => 148
	i32 2505896520, ; 188: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 105
	i32 2570120770, ; 189: System.Text.Encodings.Web => 0x9930ee42 => 62
	i32 2581819634, ; 190: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 127
	i32 2605712449, ; 191: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 145
	i32 2620871830, ; 192: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 89
	i32 2624644809, ; 193: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 93
	i32 2633051222, ; 194: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 103
	i32 2634653062, ; 195: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 24
	i32 2701096212, ; 196: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 124
	i32 2732626843, ; 197: Xamarin.AndroidX.Activity => 0xa2e0939b => 72
	i32 2737747696, ; 198: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 75
	i32 2765824710, ; 199: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 4
	i32 2766581644, ; 200: Xamarin.Forms.Core => 0xa4e6af8c => 132
	i32 2770495804, ; 201: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 139
	i32 2778768386, ; 202: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 129
	i32 2779977773, ; 203: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 119
	i32 2795602088, ; 204: SkiaSharp.Views.Android.dll => 0xa6a180a8 => 45
	i32 2810250172, ; 205: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 86
	i32 2819470561, ; 206: System.Xml.dll => 0xa80db4e1 => 64
	i32 2821294376, ; 207: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 119
	i32 2847789619, ; 208: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 24
	i32 2853208004, ; 209: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 129
	i32 2855708567, ; 210: Xamarin.AndroidX.Transition => 0xaa36a797 => 125
	i32 2901442782, ; 211: System.Reflection => 0xacf080de => 160
	i32 2903344695, ; 212: System.ComponentModel.Composition => 0xad0d8637 => 152
	i32 2905242038, ; 213: mscorlib.dll => 0xad2a79b6 => 39
	i32 2912489636, ; 214: SkiaSharp.Views.Android => 0xad9910a4 => 45
	i32 2916838712, ; 215: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 130
	i32 2919462931, ; 216: System.Numerics.Vectors.dll => 0xae037813 => 59
	i32 2921128767, ; 217: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 74
	i32 2974793899, ; 218: SkiaSharp.Views.Forms.dll => 0xb14fc0ab => 46
	i32 2978675010, ; 219: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 92
	i32 2996846495, ; 220: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 104
	i32 3016983068, ; 221: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 122
	i32 3024354802, ; 222: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 99
	i32 3036068679, ; 223: Microcharts.Droid.dll => 0xb4f6bb47 => 16
	i32 3044182254, ; 224: FormsViewGroup => 0xb57288ee => 12
	i32 3057625584, ; 225: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 112
	i32 3068715062, ; 226: Xamarin.Android.Arch.Lifecycle.Common => 0xb6e8e036 => 67
	i32 3069363400, ; 227: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 26
	i32 3111772706, ; 228: System.Runtime.Serialization => 0xb979e222 => 11
	i32 3124832203, ; 229: System.Threading.Tasks.Extensions => 0xba4127cb => 157
	i32 3147165239, ; 230: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 159
	i32 3195844289, ; 231: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 26
	i32 3204380047, ; 232: System.Data.dll => 0xbefef58f => 3
	i32 3211777861, ; 233: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 91
	i32 3220365878, ; 234: System.Threading => 0xbff2e236 => 8
	i32 3247949154, ; 235: Mono.Security => 0xc197c562 => 162
	i32 3258312781, ; 236: Xamarin.AndroidX.CardView => 0xc235e84d => 81
	i32 3265893370, ; 237: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 157
	i32 3267021929, ; 238: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 79
	i32 3280506390, ; 239: System.ComponentModel.Annotations.dll => 0xc3888e16 => 2
	i32 3317135071, ; 240: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 90
	i32 3317144872, ; 241: System.Data => 0xc5b79d28 => 3
	i32 3340387945, ; 242: SkiaSharp => 0xc71a4669 => 43
	i32 3340431453, ; 243: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 78
	i32 3345895724, ; 244: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 117
	i32 3346324047, ; 245: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 113
	i32 3353484488, ; 246: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 98
	i32 3358260929, ; 247: System.Text.Json => 0xc82afec1 => 63
	i32 3360279109, ; 248: SQLitePCLRaw.core => 0xc849ca45 => 49
	i32 3362522851, ; 249: Xamarin.AndroidX.Core => 0xc86c06e3 => 88
	i32 3366347497, ; 250: Java.Interop => 0xc8a662e9 => 14
	i32 3374999561, ; 251: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 118
	i32 3395150330, ; 252: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 60
	i32 3404865022, ; 253: System.ServiceModel.Internals => 0xcaf21dfe => 156
	i32 3421170118, ; 254: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 29
	i32 3428513518, ; 255: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 32
	i32 3429136800, ; 256: System.Xml => 0xcc6479a0 => 64
	i32 3430777524, ; 257: netstandard => 0xcc7d82b4 => 1
	i32 3439690031, ; 258: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 69
	i32 3441283291, ; 259: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 93
	i32 3455791806, ; 260: Microcharts => 0xcdfb32be => 15
	i32 3476120550, ; 261: Mono.Android => 0xcf3163e6 => 38
	i32 3485117614, ; 262: System.Text.Json.dll => 0xcfbaacae => 63
	i32 3486566296, ; 263: System.Transactions => 0xcfd0c798 => 153
	i32 3493954962, ; 264: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 83
	i32 3501239056, ; 265: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 79
	i32 3509114376, ; 266: System.Xml.Linq => 0xd128d608 => 65
	i32 3536029504, ; 267: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 134
	i32 3567349600, ; 268: System.ComponentModel.Composition.dll => 0xd4a16f60 => 152
	i32 3618140916, ; 269: Xamarin.AndroidX.Preference => 0xd7a872f4 => 115
	i32 3627220390, ; 270: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 116
	i32 3632359727, ; 271: Xamarin.Forms.Platform => 0xd881692f => 135
	i32 3633644679, ; 272: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 74
	i32 3641597786, ; 273: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 102
	i32 3645089577, ; 274: System.ComponentModel.DataAnnotations => 0xd943a729 => 155
	i32 3657292374, ; 275: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 28
	i32 3668042751, ; 276: Microcharts.dll => 0xdaa1e3ff => 15
	i32 3672681054, ; 277: Mono.Android.dll => 0xdae8aa5e => 38
	i32 3676310014, ; 278: System.Web.Services.dll => 0xdb2009fe => 154
	i32 3681174138, ; 279: Xamarin.Android.Arch.Lifecycle.Common.dll => 0xdb6a427a => 67
	i32 3682565725, ; 280: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 80
	i32 3684561358, ; 281: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 83
	i32 3689375977, ; 282: System.Drawing.Common => 0xdbe768e9 => 149
	i32 3706696989, ; 283: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 87
	i32 3718780102, ; 284: Xamarin.AndroidX.Annotation => 0xdda814c6 => 73
	i32 3724971120, ; 285: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 112
	i32 3748608112, ; 286: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 55
	i32 3754567612, ; 287: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 51
	i32 3758932259, ; 288: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 100
	i32 3786282454, ; 289: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 82
	i32 3792835768, ; 290: HarfBuzzSharp => 0xe21214b8 => 13
	i32 3822602673, ; 291: Xamarin.AndroidX.Media => 0xe3d849b1 => 110
	i32 3829621856, ; 292: System.Numerics.dll => 0xe4436460 => 58
	i32 3841636137, ; 293: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 31
	i32 3849253459, ; 294: System.Runtime.InteropServices.dll => 0xe56ef253 => 158
	i32 3862817207, ; 295: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0xe63de9b7 => 68
	i32 3874897629, ; 296: Xamarin.Android.Arch.Lifecycle.Runtime => 0xe6f63edd => 68
	i32 3885922214, ; 297: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 125
	i32 3888767677, ; 298: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 117
	i32 3894448521, ; 299: Microsoft.Bcl.HashCode => 0xe8209189 => 19
	i32 3896106733, ; 300: System.Collections.Concurrent.dll => 0xe839deed => 6
	i32 3896760992, ; 301: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 88
	i32 3903721208, ; 302: Microcharts.Forms => 0xe8ae0ef8 => 17
	i32 3920810846, ; 303: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 151
	i32 3921031405, ; 304: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 128
	i32 3931092270, ; 305: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 114
	i32 3945713374, ; 306: System.Data.DataSetExtensions.dll => 0xeb2ecede => 148
	i32 3953953790, ; 307: System.Text.Encoding.CodePages => 0xebac8bfe => 4
	i32 3955647286, ; 308: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 76
	i32 3959773229, ; 309: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 104
	i32 4003906742, ; 310: HarfBuzzSharp.dll => 0xeea6c4b6 => 13
	i32 4025784931, ; 311: System.Memory => 0xeff49a63 => 57
	i32 4066802364, ; 312: SkiaSharp.HarfBuzz => 0xf2667abc => 44
	i32 4073602200, ; 313: System.Threading.dll => 0xf2ce3c98 => 8
	i32 4101593132, ; 314: Xamarin.AndroidX.Emoji2 => 0xf479582c => 94
	i32 4101842092, ; 315: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 27
	i32 4105002889, ; 316: Mono.Security.dll => 0xf4ad5f89 => 162
	i32 4126470640, ; 317: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 32
	i32 4151237749, ; 318: System.Core => 0xf76edc75 => 54
	i32 4171745578, ; 319: Xamarin_Postep.Android => 0xf8a7c92a => 0
	i32 4182413190, ; 320: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 107
	i32 4213026141, ; 321: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 55
	i32 4256097574, ; 322: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 87
	i32 4260525087, ; 323: System.Buffers => 0xfdf2741f => 52
	i32 4263658931, ; 324: Microsoft.Bcl.HashCode.dll => 0xfe2245b3 => 19
	i32 4292120959 ; 325: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 107
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [326 x i32] [
	i32 33, i32 105, i32 138, i32 132, i32 121, i32 158, i32 121, i32 142, ; 0..7
	i32 2, i32 66, i32 82, i32 70, i32 133, i32 123, i32 40, i32 80, ; 8..15
	i32 9, i32 99, i32 154, i32 85, i32 103, i32 97, i32 72, i32 58, ; 16..23
	i32 101, i32 50, i32 57, i32 146, i32 84, i32 131, i32 7, i32 96, ; 24..31
	i32 39, i32 56, i32 97, i32 109, i32 37, i32 70, i32 43, i32 153, ; 32..39
	i32 142, i32 35, i32 161, i32 18, i32 151, i32 90, i32 95, i32 62, ; 40..47
	i32 128, i32 77, i32 6, i32 65, i32 144, i32 69, i32 139, i32 143, ; 48..55
	i32 48, i32 42, i32 150, i32 44, i32 36, i32 149, i32 116, i32 147, ; 56..63
	i32 16, i32 42, i32 138, i32 143, i32 101, i32 12, i32 159, i32 7, ; 64..71
	i32 120, i32 31, i32 41, i32 76, i32 135, i32 106, i32 141, i32 56, ; 72..79
	i32 21, i32 133, i32 22, i32 126, i32 113, i32 22, i32 77, i32 27, ; 80..87
	i32 40, i32 122, i32 127, i32 144, i32 49, i32 92, i32 0, i32 156, ; 88..95
	i32 120, i32 5, i32 110, i32 86, i32 60, i32 47, i32 161, i32 136, ; 96..103
	i32 53, i32 150, i32 75, i32 37, i32 53, i32 20, i32 71, i32 91, ; 104..111
	i32 17, i32 66, i32 11, i32 108, i32 130, i32 95, i32 89, i32 10, ; 112..119
	i32 61, i32 124, i32 137, i32 85, i32 147, i32 20, i32 23, i32 140, ; 120..127
	i32 9, i32 50, i32 46, i32 160, i32 81, i32 123, i32 35, i32 54, ; 128..135
	i32 96, i32 18, i32 108, i32 146, i32 141, i32 137, i32 114, i32 34, ; 136..143
	i32 131, i32 136, i32 78, i32 25, i32 21, i32 5, i32 111, i32 30, ; 144..151
	i32 140, i32 52, i32 41, i32 25, i32 106, i32 29, i32 102, i32 61, ; 152..159
	i32 59, i32 98, i32 51, i32 134, i32 71, i32 36, i32 34, i32 33, ; 160..167
	i32 145, i32 10, i32 126, i32 47, i32 109, i32 23, i32 111, i32 100, ; 168..175
	i32 28, i32 118, i32 73, i32 30, i32 94, i32 115, i32 155, i32 48, ; 176..183
	i32 84, i32 1, i32 14, i32 148, i32 105, i32 62, i32 127, i32 145, ; 184..191
	i32 89, i32 93, i32 103, i32 24, i32 124, i32 72, i32 75, i32 4, ; 192..199
	i32 132, i32 139, i32 129, i32 119, i32 45, i32 86, i32 64, i32 119, ; 200..207
	i32 24, i32 129, i32 125, i32 160, i32 152, i32 39, i32 45, i32 130, ; 208..215
	i32 59, i32 74, i32 46, i32 92, i32 104, i32 122, i32 99, i32 16, ; 216..223
	i32 12, i32 112, i32 67, i32 26, i32 11, i32 157, i32 159, i32 26, ; 224..231
	i32 3, i32 91, i32 8, i32 162, i32 81, i32 157, i32 79, i32 2, ; 232..239
	i32 90, i32 3, i32 43, i32 78, i32 117, i32 113, i32 98, i32 63, ; 240..247
	i32 49, i32 88, i32 14, i32 118, i32 60, i32 156, i32 29, i32 32, ; 248..255
	i32 64, i32 1, i32 69, i32 93, i32 15, i32 38, i32 63, i32 153, ; 256..263
	i32 83, i32 79, i32 65, i32 134, i32 152, i32 115, i32 116, i32 135, ; 264..271
	i32 74, i32 102, i32 155, i32 28, i32 15, i32 38, i32 154, i32 67, ; 272..279
	i32 80, i32 83, i32 149, i32 87, i32 73, i32 112, i32 55, i32 51, ; 280..287
	i32 100, i32 82, i32 13, i32 110, i32 58, i32 31, i32 158, i32 68, ; 288..295
	i32 68, i32 125, i32 117, i32 19, i32 6, i32 88, i32 17, i32 151, ; 296..303
	i32 128, i32 114, i32 148, i32 4, i32 76, i32 104, i32 13, i32 57, ; 304..311
	i32 44, i32 8, i32 94, i32 27, i32 162, i32 32, i32 54, i32 0, ; 312..319
	i32 107, i32 55, i32 87, i32 52, i32 19, i32 107 ; 320..325
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

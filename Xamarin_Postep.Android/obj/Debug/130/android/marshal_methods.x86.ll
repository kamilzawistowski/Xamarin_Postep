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
@assembly_image_cache_hashes = local_unnamed_addr constant [322 x i32] [
	i32 26230656, ; 0: Microsoft.Extensions.DependencyModel => 0x1903f80 => 25
	i32 32687329, ; 1: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 102
	i32 34715100, ; 2: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 135
	i32 39109920, ; 3: Newtonsoft.Json.dll => 0x254c520 => 34
	i32 57263871, ; 4: Xamarin.Forms.Core.dll => 0x369c6ff => 129
	i32 101534019, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 118
	i32 118141284, ; 6: NativeMedia.Permision => 0x70ab164 => 33
	i32 120558881, ; 7: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 118
	i32 134690465, ; 8: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 143
	i32 159306688, ; 9: System.ComponentModel.Annotations => 0x97ed3c0 => 2
	i32 160529393, ; 10: Xamarin.Android.Arch.Core.Common => 0x9917bf1 => 63
	i32 165246403, ; 11: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 79
	i32 166922606, ; 12: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 67
	i32 177794437, ; 13: Xamarin.Forms.DataGrid => 0xa98ed85 => 130
	i32 182336117, ; 14: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 120
	i32 194720069, ; 15: Plugin.Messaging.Abstractions => 0xb9b3145 => 36
	i32 209399409, ; 16: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 77
	i32 230216969, ; 17: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 96
	i32 232815796, ; 18: System.Web.Services => 0xde07cb4 => 155
	i32 261689757, ; 19: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 82
	i32 278686392, ; 20: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 100
	i32 280482487, ; 21: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 94
	i32 318968648, ; 22: Xamarin.AndroidX.Activity.dll => 0x13031348 => 69
	i32 321597661, ; 23: System.Numerics => 0x132b30dd => 55
	i32 342366114, ; 24: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 98
	i32 347068432, ; 25: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 46
	i32 385762202, ; 26: System.Memory.dll => 0x16fe439a => 53
	i32 402672763, ; 27: Xamarin.Plugin.Calendar => 0x18004c7b => 147
	i32 441335492, ; 28: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 81
	i32 442521989, ; 29: Xamarin.Essentials => 0x1a605985 => 128
	i32 442565967, ; 30: System.Collections => 0x1a61054f => 159
	i32 450948140, ; 31: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 93
	i32 465846621, ; 32: mscorlib => 0x1bc4415d => 31
	i32 469710990, ; 33: System.dll => 0x1bff388e => 52
	i32 476646585, ; 34: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 94
	i32 486930444, ; 35: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 106
	i32 504143952, ; 36: Plugin.LocalNotification.dll => 0x1e0ca050 => 35
	i32 513247710, ; 37: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 29
	i32 514659665, ; 38: Xamarin.Android.Support.Compat => 0x1ead1551 => 67
	i32 525008092, ; 39: SkiaSharp.dll => 0x1f4afcdc => 39
	i32 526420162, ; 40: System.Transactions.dll => 0x1f6088c2 => 154
	i32 527452488, ; 41: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 143
	i32 539058512, ; 42: Microsoft.Extensions.Logging => 0x20216150 => 27
	i32 548916678, ; 43: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 12
	i32 605376203, ; 44: System.IO.Compression.FileSystem => 0x24154ecb => 152
	i32 627609679, ; 45: Xamarin.AndroidX.CustomView => 0x2568904f => 87
	i32 639843206, ; 46: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 92
	i32 662205335, ; 47: System.Text.Encodings.Web.dll => 0x27787397 => 59
	i32 663517072, ; 48: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 125
	i32 666292255, ; 49: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 74
	i32 690569205, ; 50: System.Xml.Linq.dll => 0x29293ff5 => 62
	i32 691348768, ; 51: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 145
	i32 692692150, ; 52: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 66
	i32 700284507, ; 53: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 140
	i32 720511267, ; 54: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 144
	i32 748832960, ; 55: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 44
	i32 772835674, ; 56: QuestPDF.dll => 0x2e10895a => 38
	i32 775507847, ; 57: System.IO.Compression => 0x2e394f87 => 151
	i32 778756650, ; 58: SkiaSharp.HarfBuzz.dll => 0x2e6ae22a => 40
	i32 789151979, ; 59: Microsoft.Extensions.Options => 0x2f0980eb => 28
	i32 809851609, ; 60: System.Drawing.Common.dll => 0x30455ad9 => 150
	i32 843511501, ; 61: Xamarin.AndroidX.Print => 0x3246f6cd => 113
	i32 881234337, ; 62: Xamarin_Postep => 0x348691a1 => 148
	i32 886248193, ; 63: Microcharts.Droid => 0x34d31301 => 10
	i32 906948815, ; 64: QuestPDF => 0x360ef0cf => 38
	i32 928116545, ; 65: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 135
	i32 955402788, ; 66: Newtonsoft.Json => 0x38f24a24 => 34
	i32 956575887, ; 67: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 144
	i32 967690846, ; 68: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 98
	i32 974778368, ; 69: FormsViewGroup.dll => 0x3a19f000 => 6
	i32 992768348, ; 70: System.Collections.dll => 0x3b2c715c => 159
	i32 1012816738, ; 71: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 117
	i32 1028951442, ; 72: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 23
	i32 1032266309, ; 73: Plugin.Messaging.dll => 0x3d872245 => 37
	i32 1035644815, ; 74: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 73
	i32 1042160112, ; 75: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 132
	i32 1052210849, ; 76: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 103
	i32 1084122840, ; 77: Xamarin.Kotlin.StdLib => 0x409e66d8 => 142
	i32 1098259244, ; 78: System => 0x41761b2c => 52
	i32 1099692271, ; 79: Microsoft.DotNet.PlatformAbstractions => 0x418bf8ef => 15
	i32 1134910725, ; 80: Xamarin.Forms.DataGrid.dll => 0x43a55d05 => 130
	i32 1157931901, ; 81: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 16
	i32 1175144683, ; 82: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 123
	i32 1178241025, ; 83: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 110
	i32 1202000627, ; 84: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 16
	i32 1204270330, ; 85: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 74
	i32 1204575371, ; 86: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 21
	i32 1257494309, ; 87: Plugin.Messaging.Abstractions.dll => 0x4af3d725 => 36
	i32 1264511973, ; 88: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 119
	i32 1267360935, ; 89: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 124
	i32 1275534314, ; 90: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 145
	i32 1292207520, ; 91: SQLitePCLRaw.core.dll => 0x4d0585a0 => 45
	i32 1293217323, ; 92: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 89
	i32 1324995046, ; 93: Xamarin_Postep.Android.dll => 0x4ef9d1e6 => 0
	i32 1365406463, ; 94: System.ServiceModel.Internals.dll => 0x516272ff => 157
	i32 1376866003, ; 95: Xamarin.AndroidX.SavedState => 0x52114ed3 => 117
	i32 1395857551, ; 96: Xamarin.AndroidX.Media.dll => 0x5333188f => 107
	i32 1406073936, ; 97: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 83
	i32 1411638395, ; 98: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 57
	i32 1421105759, ; 99: Spire.Email.dll => 0x54b45a5f => 43
	i32 1460219004, ; 100: Xamarin.Forms.Xaml => 0x57092c7c => 133
	i32 1461234159, ; 101: System.Collections.Immutable.dll => 0x5718a9ef => 49
	i32 1462112819, ; 102: System.IO.Compression.dll => 0x57261233 => 151
	i32 1469204771, ; 103: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 72
	i32 1470490898, ; 104: Microsoft.Extensions.Primitives => 0x57a5e912 => 29
	i32 1479771757, ; 105: System.Collections.Immutable => 0x5833866d => 49
	i32 1490351284, ; 106: Microsoft.Data.Sqlite.dll => 0x58d4f4b4 => 14
	i32 1524747670, ; 107: Plugin.LocalNotification => 0x5ae1cd96 => 35
	i32 1574652163, ; 108: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 68
	i32 1582372066, ; 109: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 88
	i32 1582526884, ; 110: Microcharts.Forms.dll => 0x5e5371a4 => 11
	i32 1587447679, ; 111: Xamarin.Android.Arch.Core.Common.dll => 0x5e9e877f => 63
	i32 1592978981, ; 112: System.Runtime.Serialization.dll => 0x5ef2ee25 => 5
	i32 1622152042, ; 113: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 105
	i32 1624863272, ; 114: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 127
	i32 1635184631, ; 115: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 92
	i32 1636350590, ; 116: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 86
	i32 1639515021, ; 117: System.Net.Http.dll => 0x61b9038d => 54
	i32 1657153582, ; 118: System.Runtime => 0x62c6282e => 58
	i32 1658241508, ; 119: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 121
	i32 1658251792, ; 120: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 134
	i32 1670060433, ; 121: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 82
	i32 1678093242, ; 122: Xamarin_Postep.dll => 0x6405abba => 148
	i32 1688112883, ; 123: Microsoft.Data.Sqlite => 0x649e8ef3 => 14
	i32 1689493916, ; 124: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 17
	i32 1698840827, ; 125: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 141
	i32 1711441057, ; 126: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 46
	i32 1722051300, ; 127: SkiaSharp.Views.Forms => 0x66a46ae4 => 42
	i32 1729485958, ; 128: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 78
	i32 1766324549, ; 129: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 120
	i32 1770582343, ; 130: Microsoft.Extensions.Logging.dll => 0x6988f147 => 27
	i32 1776026572, ; 131: System.Core.dll => 0x69dc03cc => 50
	i32 1788241197, ; 132: Xamarin.AndroidX.Fragment => 0x6a96652d => 93
	i32 1796167890, ; 133: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 12
	i32 1808609942, ; 134: Xamarin.AndroidX.Loader => 0x6bcd3296 => 105
	i32 1812481981, ; 135: Xamarin.Plugin.Calendar.dll => 0x6c0847bd => 147
	i32 1813058853, ; 136: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 142
	i32 1813201214, ; 137: Xamarin.Google.Android.Material => 0x6c13413e => 134
	i32 1818569960, ; 138: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 111
	i32 1828688058, ; 139: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 26
	i32 1867746548, ; 140: Xamarin.Essentials.dll => 0x6f538cf4 => 128
	i32 1878053835, ; 141: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 133
	i32 1885316902, ; 142: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 75
	i32 1886040351, ; 143: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x706ab11f => 19
	i32 1894524299, ; 144: Microsoft.DotNet.PlatformAbstractions.dll => 0x70ec258b => 15
	i32 1908813208, ; 145: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 137
	i32 1919157823, ; 146: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 108
	i32 1983156543, ; 147: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 141
	i32 2011961780, ; 148: System.Buffers.dll => 0x77ec19b4 => 48
	i32 2012836262, ; 149: Plugin.Messaging => 0x77f971a6 => 37
	i32 2014489277, ; 150: Microsoft.EntityFrameworkCore.Sqlite => 0x7812aabd => 19
	i32 2019465201, ; 151: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 103
	i32 2055257422, ; 152: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 99
	i32 2079903147, ; 153: System.Runtime.dll => 0x7bf8cdab => 58
	i32 2090596640, ; 154: System.Numerics.Vectors => 0x7c9bf920 => 56
	i32 2097448633, ; 155: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 95
	i32 2103459038, ; 156: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 47
	i32 2126786730, ; 157: Xamarin.Forms.Platform.Android => 0x7ec430aa => 131
	i32 2129483829, ; 158: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 136
	i32 2162265494, ; 159: NativeMedia.dll => 0x80e18d96 => 32
	i32 2166116741, ; 160: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 68
	i32 2181898931, ; 161: Microsoft.Extensions.Options.dll => 0x820d22b3 => 28
	i32 2192057212, ; 162: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 26
	i32 2197979891, ; 163: Microsoft.Extensions.DependencyModel.dll => 0x830282f3 => 25
	i32 2201107256, ; 164: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 146
	i32 2201231467, ; 165: System.Net.Http => 0x8334206b => 54
	i32 2217644978, ; 166: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 123
	i32 2232960810, ; 167: Spire.Email => 0x8518472a => 43
	i32 2244775296, ; 168: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 106
	i32 2252897993, ; 169: Microsoft.EntityFrameworkCore => 0x86487ec9 => 17
	i32 2256548716, ; 170: Xamarin.AndroidX.MultiDex => 0x8680336c => 108
	i32 2261435625, ; 171: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 97
	i32 2266799131, ; 172: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 22
	i32 2279755925, ; 173: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 115
	i32 2315684594, ; 174: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 70
	i32 2403452196, ; 175: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 91
	i32 2409053734, ; 176: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 112
	i32 2435904999, ; 177: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 156
	i32 2465273461, ; 178: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 44
	i32 2465532216, ; 179: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 81
	i32 2471841756, ; 180: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 181: Java.Interop.dll => 0x93918882 => 8
	i32 2501346920, ; 182: System.Data.DataSetExtensions => 0x95178668 => 149
	i32 2505896520, ; 183: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 102
	i32 2570120770, ; 184: System.Text.Encodings.Web => 0x9930ee42 => 59
	i32 2581819634, ; 185: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 124
	i32 2605712449, ; 186: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 146
	i32 2620871830, ; 187: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 86
	i32 2624644809, ; 188: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 90
	i32 2633051222, ; 189: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 100
	i32 2634653062, ; 190: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 18
	i32 2701096212, ; 191: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 121
	i32 2708713469, ; 192: NativeMedia.Permision.dll => 0xa173affd => 33
	i32 2732626843, ; 193: Xamarin.AndroidX.Activity => 0xa2e0939b => 69
	i32 2737747696, ; 194: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 72
	i32 2765824710, ; 195: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 4
	i32 2766581644, ; 196: Xamarin.Forms.Core => 0xa4e6af8c => 129
	i32 2770495804, ; 197: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 140
	i32 2778768386, ; 198: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 126
	i32 2779977773, ; 199: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 116
	i32 2795602088, ; 200: SkiaSharp.Views.Android.dll => 0xa6a180a8 => 41
	i32 2810250172, ; 201: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 83
	i32 2819470561, ; 202: System.Xml.dll => 0xa80db4e1 => 61
	i32 2821294376, ; 203: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 116
	i32 2847418871, ; 204: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 136
	i32 2847789619, ; 205: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 18
	i32 2853208004, ; 206: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 126
	i32 2855708567, ; 207: Xamarin.AndroidX.Transition => 0xaa36a797 => 122
	i32 2903344695, ; 208: System.ComponentModel.Composition => 0xad0d8637 => 153
	i32 2905242038, ; 209: mscorlib.dll => 0xad2a79b6 => 31
	i32 2912489636, ; 210: SkiaSharp.Views.Android => 0xad9910a4 => 41
	i32 2916838712, ; 211: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 127
	i32 2919462931, ; 212: System.Numerics.Vectors.dll => 0xae037813 => 56
	i32 2921128767, ; 213: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 71
	i32 2974793899, ; 214: SkiaSharp.Views.Forms.dll => 0xb14fc0ab => 42
	i32 2978675010, ; 215: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 89
	i32 2996846495, ; 216: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 101
	i32 3016983068, ; 217: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 119
	i32 3024354802, ; 218: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 96
	i32 3036068679, ; 219: Microcharts.Droid.dll => 0xb4f6bb47 => 10
	i32 3044182254, ; 220: FormsViewGroup => 0xb57288ee => 6
	i32 3057625584, ; 221: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 109
	i32 3058099980, ; 222: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 139
	i32 3068715062, ; 223: Xamarin.Android.Arch.Lifecycle.Common => 0xb6e8e036 => 64
	i32 3069363400, ; 224: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 20
	i32 3111772706, ; 225: System.Runtime.Serialization => 0xb979e222 => 5
	i32 3124832203, ; 226: System.Threading.Tasks.Extensions => 0xba4127cb => 158
	i32 3195844289, ; 227: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 20
	i32 3204380047, ; 228: System.Data.dll => 0xbefef58f => 3
	i32 3211777861, ; 229: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 88
	i32 3230466174, ; 230: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 137
	i32 3247949154, ; 231: Mono.Security => 0xc197c562 => 160
	i32 3258312781, ; 232: Xamarin.AndroidX.CardView => 0xc235e84d => 78
	i32 3265893370, ; 233: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 158
	i32 3267021929, ; 234: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 76
	i32 3280506390, ; 235: System.ComponentModel.Annotations.dll => 0xc3888e16 => 2
	i32 3317135071, ; 236: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 87
	i32 3317144872, ; 237: System.Data => 0xc5b79d28 => 3
	i32 3340387945, ; 238: SkiaSharp => 0xc71a4669 => 39
	i32 3340431453, ; 239: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 75
	i32 3345895724, ; 240: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 114
	i32 3346324047, ; 241: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 110
	i32 3353484488, ; 242: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 95
	i32 3358260929, ; 243: System.Text.Json => 0xc82afec1 => 60
	i32 3360279109, ; 244: SQLitePCLRaw.core => 0xc849ca45 => 45
	i32 3362522851, ; 245: Xamarin.AndroidX.Core => 0xc86c06e3 => 85
	i32 3366347497, ; 246: Java.Interop => 0xc8a662e9 => 8
	i32 3374999561, ; 247: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 115
	i32 3395150330, ; 248: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 57
	i32 3404865022, ; 249: System.ServiceModel.Internals => 0xcaf21dfe => 157
	i32 3428513518, ; 250: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 24
	i32 3429136800, ; 251: System.Xml => 0xcc6479a0 => 61
	i32 3430777524, ; 252: netstandard => 0xcc7d82b4 => 1
	i32 3439690031, ; 253: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 66
	i32 3441283291, ; 254: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 90
	i32 3455791806, ; 255: Microcharts => 0xcdfb32be => 9
	i32 3476120550, ; 256: Mono.Android => 0xcf3163e6 => 30
	i32 3485117614, ; 257: System.Text.Json.dll => 0xcfbaacae => 60
	i32 3486566296, ; 258: System.Transactions => 0xcfd0c798 => 154
	i32 3493954962, ; 259: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 80
	i32 3494395880, ; 260: Xamarin.GooglePlayServices.Location.dll => 0xd0483fe8 => 138
	i32 3501239056, ; 261: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 76
	i32 3509114376, ; 262: System.Xml.Linq => 0xd128d608 => 62
	i32 3536029504, ; 263: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 131
	i32 3567349600, ; 264: System.ComponentModel.Composition.dll => 0xd4a16f60 => 153
	i32 3618140916, ; 265: Xamarin.AndroidX.Preference => 0xd7a872f4 => 112
	i32 3627220390, ; 266: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 113
	i32 3632359727, ; 267: Xamarin.Forms.Platform => 0xd881692f => 132
	i32 3633644679, ; 268: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 71
	i32 3641597786, ; 269: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 99
	i32 3645089577, ; 270: System.ComponentModel.DataAnnotations => 0xd943a729 => 156
	i32 3657292374, ; 271: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 22
	i32 3668042751, ; 272: Microcharts.dll => 0xdaa1e3ff => 9
	i32 3672681054, ; 273: Mono.Android.dll => 0xdae8aa5e => 30
	i32 3676310014, ; 274: System.Web.Services.dll => 0xdb2009fe => 155
	i32 3681174138, ; 275: Xamarin.Android.Arch.Lifecycle.Common.dll => 0xdb6a427a => 64
	i32 3682565725, ; 276: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 77
	i32 3684561358, ; 277: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 80
	i32 3689375977, ; 278: System.Drawing.Common => 0xdbe768e9 => 150
	i32 3706696989, ; 279: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 84
	i32 3718780102, ; 280: Xamarin.AndroidX.Annotation => 0xdda814c6 => 70
	i32 3724971120, ; 281: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 109
	i32 3748608112, ; 282: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 51
	i32 3754567612, ; 283: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 47
	i32 3758932259, ; 284: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 97
	i32 3780807376, ; 285: NativeMedia => 0xe15a8ad0 => 32
	i32 3786282454, ; 286: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 79
	i32 3792835768, ; 287: HarfBuzzSharp => 0xe21214b8 => 7
	i32 3822602673, ; 288: Xamarin.AndroidX.Media => 0xe3d849b1 => 107
	i32 3829621856, ; 289: System.Numerics.dll => 0xe4436460 => 55
	i32 3841636137, ; 290: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 23
	i32 3862817207, ; 291: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0xe63de9b7 => 65
	i32 3874897629, ; 292: Xamarin.Android.Arch.Lifecycle.Runtime => 0xe6f63edd => 65
	i32 3885922214, ; 293: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 122
	i32 3888767677, ; 294: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 114
	i32 3894448521, ; 295: Microsoft.Bcl.HashCode => 0xe8209189 => 13
	i32 3896760992, ; 296: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 85
	i32 3903721208, ; 297: Microcharts.Forms => 0xe8ae0ef8 => 11
	i32 3920810846, ; 298: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 152
	i32 3921031405, ; 299: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 125
	i32 3931092270, ; 300: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 111
	i32 3945713374, ; 301: System.Data.DataSetExtensions.dll => 0xeb2ecede => 149
	i32 3953953790, ; 302: System.Text.Encoding.CodePages => 0xebac8bfe => 4
	i32 3955647286, ; 303: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 73
	i32 3959773229, ; 304: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 101
	i32 3967165417, ; 305: Xamarin.GooglePlayServices.Location => 0xec7623e9 => 138
	i32 3970018735, ; 306: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 139
	i32 4003906742, ; 307: HarfBuzzSharp.dll => 0xeea6c4b6 => 7
	i32 4025784931, ; 308: System.Memory => 0xeff49a63 => 53
	i32 4066802364, ; 309: SkiaSharp.HarfBuzz => 0xf2667abc => 40
	i32 4101593132, ; 310: Xamarin.AndroidX.Emoji2 => 0xf479582c => 91
	i32 4101842092, ; 311: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 21
	i32 4105002889, ; 312: Mono.Security.dll => 0xf4ad5f89 => 160
	i32 4126470640, ; 313: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 24
	i32 4151237749, ; 314: System.Core => 0xf76edc75 => 50
	i32 4171745578, ; 315: Xamarin_Postep.Android => 0xf8a7c92a => 0
	i32 4182413190, ; 316: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 104
	i32 4213026141, ; 317: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 51
	i32 4256097574, ; 318: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 84
	i32 4260525087, ; 319: System.Buffers => 0xfdf2741f => 48
	i32 4263658931, ; 320: Microsoft.Bcl.HashCode.dll => 0xfe2245b3 => 13
	i32 4292120959 ; 321: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 104
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [322 x i32] [
	i32 25, i32 102, i32 135, i32 34, i32 129, i32 118, i32 33, i32 118, ; 0..7
	i32 143, i32 2, i32 63, i32 79, i32 67, i32 130, i32 120, i32 36, ; 8..15
	i32 77, i32 96, i32 155, i32 82, i32 100, i32 94, i32 69, i32 55, ; 16..23
	i32 98, i32 46, i32 53, i32 147, i32 81, i32 128, i32 159, i32 93, ; 24..31
	i32 31, i32 52, i32 94, i32 106, i32 35, i32 29, i32 67, i32 39, ; 32..39
	i32 154, i32 143, i32 27, i32 12, i32 152, i32 87, i32 92, i32 59, ; 40..47
	i32 125, i32 74, i32 62, i32 145, i32 66, i32 140, i32 144, i32 44, ; 48..55
	i32 38, i32 151, i32 40, i32 28, i32 150, i32 113, i32 148, i32 10, ; 56..63
	i32 38, i32 135, i32 34, i32 144, i32 98, i32 6, i32 159, i32 117, ; 64..71
	i32 23, i32 37, i32 73, i32 132, i32 103, i32 142, i32 52, i32 15, ; 72..79
	i32 130, i32 16, i32 123, i32 110, i32 16, i32 74, i32 21, i32 36, ; 80..87
	i32 119, i32 124, i32 145, i32 45, i32 89, i32 0, i32 157, i32 117, ; 88..95
	i32 107, i32 83, i32 57, i32 43, i32 133, i32 49, i32 151, i32 72, ; 96..103
	i32 29, i32 49, i32 14, i32 35, i32 68, i32 88, i32 11, i32 63, ; 104..111
	i32 5, i32 105, i32 127, i32 92, i32 86, i32 54, i32 58, i32 121, ; 112..119
	i32 134, i32 82, i32 148, i32 14, i32 17, i32 141, i32 46, i32 42, ; 120..127
	i32 78, i32 120, i32 27, i32 50, i32 93, i32 12, i32 105, i32 147, ; 128..135
	i32 142, i32 134, i32 111, i32 26, i32 128, i32 133, i32 75, i32 19, ; 136..143
	i32 15, i32 137, i32 108, i32 141, i32 48, i32 37, i32 19, i32 103, ; 144..151
	i32 99, i32 58, i32 56, i32 95, i32 47, i32 131, i32 136, i32 32, ; 152..159
	i32 68, i32 28, i32 26, i32 25, i32 146, i32 54, i32 123, i32 43, ; 160..167
	i32 106, i32 17, i32 108, i32 97, i32 22, i32 115, i32 70, i32 91, ; 168..175
	i32 112, i32 156, i32 44, i32 81, i32 1, i32 8, i32 149, i32 102, ; 176..183
	i32 59, i32 124, i32 146, i32 86, i32 90, i32 100, i32 18, i32 121, ; 184..191
	i32 33, i32 69, i32 72, i32 4, i32 129, i32 140, i32 126, i32 116, ; 192..199
	i32 41, i32 83, i32 61, i32 116, i32 136, i32 18, i32 126, i32 122, ; 200..207
	i32 153, i32 31, i32 41, i32 127, i32 56, i32 71, i32 42, i32 89, ; 208..215
	i32 101, i32 119, i32 96, i32 10, i32 6, i32 109, i32 139, i32 64, ; 216..223
	i32 20, i32 5, i32 158, i32 20, i32 3, i32 88, i32 137, i32 160, ; 224..231
	i32 78, i32 158, i32 76, i32 2, i32 87, i32 3, i32 39, i32 75, ; 232..239
	i32 114, i32 110, i32 95, i32 60, i32 45, i32 85, i32 8, i32 115, ; 240..247
	i32 57, i32 157, i32 24, i32 61, i32 1, i32 66, i32 90, i32 9, ; 248..255
	i32 30, i32 60, i32 154, i32 80, i32 138, i32 76, i32 62, i32 131, ; 256..263
	i32 153, i32 112, i32 113, i32 132, i32 71, i32 99, i32 156, i32 22, ; 264..271
	i32 9, i32 30, i32 155, i32 64, i32 77, i32 80, i32 150, i32 84, ; 272..279
	i32 70, i32 109, i32 51, i32 47, i32 97, i32 32, i32 79, i32 7, ; 280..287
	i32 107, i32 55, i32 23, i32 65, i32 65, i32 122, i32 114, i32 13, ; 288..295
	i32 85, i32 11, i32 152, i32 125, i32 111, i32 149, i32 4, i32 73, ; 296..303
	i32 101, i32 138, i32 139, i32 7, i32 53, i32 40, i32 91, i32 21, ; 304..311
	i32 160, i32 24, i32 50, i32 0, i32 104, i32 51, i32 84, i32 48, ; 312..319
	i32 13, i32 104 ; 320..321
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

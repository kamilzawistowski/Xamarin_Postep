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
@assembly_image_cache_hashes = local_unnamed_addr constant [318 x i32] [
	i32 26230656, ; 0: Microsoft.Extensions.DependencyModel => 0x1903f80 => 25
	i32 32687329, ; 1: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 100
	i32 34715100, ; 2: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 133
	i32 39109920, ; 3: Newtonsoft.Json.dll => 0x254c520 => 32
	i32 57263871, ; 4: Xamarin.Forms.Core.dll => 0x369c6ff => 127
	i32 101534019, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 116
	i32 120558881, ; 6: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 116
	i32 134690465, ; 7: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 141
	i32 159306688, ; 8: System.ComponentModel.Annotations => 0x97ed3c0 => 2
	i32 160529393, ; 9: Xamarin.Android.Arch.Core.Common => 0x9917bf1 => 61
	i32 165246403, ; 10: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 77
	i32 166922606, ; 11: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 65
	i32 177794437, ; 12: Xamarin.Forms.DataGrid => 0xa98ed85 => 128
	i32 182336117, ; 13: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 118
	i32 194720069, ; 14: Plugin.Messaging.Abstractions => 0xb9b3145 => 34
	i32 209399409, ; 15: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 75
	i32 230216969, ; 16: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 94
	i32 232815796, ; 17: System.Web.Services => 0xde07cb4 => 153
	i32 261689757, ; 18: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 80
	i32 278686392, ; 19: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 98
	i32 280482487, ; 20: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 92
	i32 318968648, ; 21: Xamarin.AndroidX.Activity.dll => 0x13031348 => 67
	i32 321597661, ; 22: System.Numerics => 0x132b30dd => 53
	i32 342366114, ; 23: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 96
	i32 347068432, ; 24: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 44
	i32 385762202, ; 25: System.Memory.dll => 0x16fe439a => 51
	i32 402672763, ; 26: Xamarin.Plugin.Calendar => 0x18004c7b => 145
	i32 441335492, ; 27: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 79
	i32 442521989, ; 28: Xamarin.Essentials => 0x1a605985 => 126
	i32 442565967, ; 29: System.Collections => 0x1a61054f => 157
	i32 450948140, ; 30: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 91
	i32 465846621, ; 31: mscorlib => 0x1bc4415d => 31
	i32 469710990, ; 32: System.dll => 0x1bff388e => 50
	i32 476646585, ; 33: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 92
	i32 486930444, ; 34: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 104
	i32 504143952, ; 35: Plugin.LocalNotification.dll => 0x1e0ca050 => 33
	i32 513247710, ; 36: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 29
	i32 514659665, ; 37: Xamarin.Android.Support.Compat => 0x1ead1551 => 65
	i32 525008092, ; 38: SkiaSharp.dll => 0x1f4afcdc => 37
	i32 526420162, ; 39: System.Transactions.dll => 0x1f6088c2 => 152
	i32 527452488, ; 40: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 141
	i32 539058512, ; 41: Microsoft.Extensions.Logging => 0x20216150 => 27
	i32 548916678, ; 42: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 12
	i32 605376203, ; 43: System.IO.Compression.FileSystem => 0x24154ecb => 150
	i32 627609679, ; 44: Xamarin.AndroidX.CustomView => 0x2568904f => 85
	i32 639843206, ; 45: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 90
	i32 662205335, ; 46: System.Text.Encodings.Web.dll => 0x27787397 => 57
	i32 663517072, ; 47: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 123
	i32 666292255, ; 48: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 72
	i32 690569205, ; 49: System.Xml.Linq.dll => 0x29293ff5 => 60
	i32 691348768, ; 50: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 143
	i32 692692150, ; 51: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 64
	i32 700284507, ; 52: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 138
	i32 720511267, ; 53: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 142
	i32 748832960, ; 54: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 42
	i32 772835674, ; 55: QuestPDF.dll => 0x2e10895a => 36
	i32 775507847, ; 56: System.IO.Compression => 0x2e394f87 => 149
	i32 778756650, ; 57: SkiaSharp.HarfBuzz.dll => 0x2e6ae22a => 38
	i32 789151979, ; 58: Microsoft.Extensions.Options => 0x2f0980eb => 28
	i32 809851609, ; 59: System.Drawing.Common.dll => 0x30455ad9 => 148
	i32 843511501, ; 60: Xamarin.AndroidX.Print => 0x3246f6cd => 111
	i32 881234337, ; 61: Xamarin_Postep => 0x348691a1 => 146
	i32 886248193, ; 62: Microcharts.Droid => 0x34d31301 => 10
	i32 906948815, ; 63: QuestPDF => 0x360ef0cf => 36
	i32 928116545, ; 64: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 133
	i32 955402788, ; 65: Newtonsoft.Json => 0x38f24a24 => 32
	i32 956575887, ; 66: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 142
	i32 967690846, ; 67: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 96
	i32 974778368, ; 68: FormsViewGroup.dll => 0x3a19f000 => 6
	i32 992768348, ; 69: System.Collections.dll => 0x3b2c715c => 157
	i32 1012816738, ; 70: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 115
	i32 1028951442, ; 71: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 23
	i32 1032266309, ; 72: Plugin.Messaging.dll => 0x3d872245 => 35
	i32 1035644815, ; 73: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 71
	i32 1042160112, ; 74: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 130
	i32 1052210849, ; 75: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 101
	i32 1084122840, ; 76: Xamarin.Kotlin.StdLib => 0x409e66d8 => 140
	i32 1098259244, ; 77: System => 0x41761b2c => 50
	i32 1099692271, ; 78: Microsoft.DotNet.PlatformAbstractions => 0x418bf8ef => 15
	i32 1134910725, ; 79: Xamarin.Forms.DataGrid.dll => 0x43a55d05 => 128
	i32 1157931901, ; 80: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 16
	i32 1175144683, ; 81: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 121
	i32 1178241025, ; 82: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 108
	i32 1202000627, ; 83: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 16
	i32 1204270330, ; 84: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 72
	i32 1204575371, ; 85: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 21
	i32 1257494309, ; 86: Plugin.Messaging.Abstractions.dll => 0x4af3d725 => 34
	i32 1264511973, ; 87: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 117
	i32 1267360935, ; 88: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 122
	i32 1275534314, ; 89: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 143
	i32 1292207520, ; 90: SQLitePCLRaw.core.dll => 0x4d0585a0 => 43
	i32 1293217323, ; 91: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 87
	i32 1324995046, ; 92: Xamarin_Postep.Android.dll => 0x4ef9d1e6 => 0
	i32 1365406463, ; 93: System.ServiceModel.Internals.dll => 0x516272ff => 155
	i32 1376866003, ; 94: Xamarin.AndroidX.SavedState => 0x52114ed3 => 115
	i32 1395857551, ; 95: Xamarin.AndroidX.Media.dll => 0x5333188f => 105
	i32 1406073936, ; 96: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 81
	i32 1411638395, ; 97: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 55
	i32 1421105759, ; 98: Spire.Email.dll => 0x54b45a5f => 41
	i32 1460219004, ; 99: Xamarin.Forms.Xaml => 0x57092c7c => 131
	i32 1461234159, ; 100: System.Collections.Immutable.dll => 0x5718a9ef => 47
	i32 1462112819, ; 101: System.IO.Compression.dll => 0x57261233 => 149
	i32 1469204771, ; 102: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 70
	i32 1470490898, ; 103: Microsoft.Extensions.Primitives => 0x57a5e912 => 29
	i32 1479771757, ; 104: System.Collections.Immutable => 0x5833866d => 47
	i32 1490351284, ; 105: Microsoft.Data.Sqlite.dll => 0x58d4f4b4 => 14
	i32 1524747670, ; 106: Plugin.LocalNotification => 0x5ae1cd96 => 33
	i32 1574652163, ; 107: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 66
	i32 1582372066, ; 108: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 86
	i32 1582526884, ; 109: Microcharts.Forms.dll => 0x5e5371a4 => 11
	i32 1587447679, ; 110: Xamarin.Android.Arch.Core.Common.dll => 0x5e9e877f => 61
	i32 1592978981, ; 111: System.Runtime.Serialization.dll => 0x5ef2ee25 => 5
	i32 1622152042, ; 112: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 103
	i32 1624863272, ; 113: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 125
	i32 1635184631, ; 114: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 90
	i32 1636350590, ; 115: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 84
	i32 1639515021, ; 116: System.Net.Http.dll => 0x61b9038d => 52
	i32 1657153582, ; 117: System.Runtime => 0x62c6282e => 56
	i32 1658241508, ; 118: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 119
	i32 1658251792, ; 119: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 132
	i32 1670060433, ; 120: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 80
	i32 1678093242, ; 121: Xamarin_Postep.dll => 0x6405abba => 146
	i32 1688112883, ; 122: Microsoft.Data.Sqlite => 0x649e8ef3 => 14
	i32 1689493916, ; 123: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 17
	i32 1698840827, ; 124: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 139
	i32 1711441057, ; 125: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 44
	i32 1722051300, ; 126: SkiaSharp.Views.Forms => 0x66a46ae4 => 40
	i32 1729485958, ; 127: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 76
	i32 1766324549, ; 128: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 118
	i32 1770582343, ; 129: Microsoft.Extensions.Logging.dll => 0x6988f147 => 27
	i32 1776026572, ; 130: System.Core.dll => 0x69dc03cc => 48
	i32 1788241197, ; 131: Xamarin.AndroidX.Fragment => 0x6a96652d => 91
	i32 1796167890, ; 132: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 12
	i32 1808609942, ; 133: Xamarin.AndroidX.Loader => 0x6bcd3296 => 103
	i32 1812481981, ; 134: Xamarin.Plugin.Calendar.dll => 0x6c0847bd => 145
	i32 1813058853, ; 135: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 140
	i32 1813201214, ; 136: Xamarin.Google.Android.Material => 0x6c13413e => 132
	i32 1818569960, ; 137: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 109
	i32 1828688058, ; 138: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 26
	i32 1867746548, ; 139: Xamarin.Essentials.dll => 0x6f538cf4 => 126
	i32 1878053835, ; 140: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 131
	i32 1885316902, ; 141: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 73
	i32 1886040351, ; 142: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x706ab11f => 19
	i32 1894524299, ; 143: Microsoft.DotNet.PlatformAbstractions.dll => 0x70ec258b => 15
	i32 1908813208, ; 144: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 135
	i32 1919157823, ; 145: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 106
	i32 1983156543, ; 146: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 139
	i32 2011961780, ; 147: System.Buffers.dll => 0x77ec19b4 => 46
	i32 2012836262, ; 148: Plugin.Messaging => 0x77f971a6 => 35
	i32 2014489277, ; 149: Microsoft.EntityFrameworkCore.Sqlite => 0x7812aabd => 19
	i32 2019465201, ; 150: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 101
	i32 2055257422, ; 151: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 97
	i32 2079903147, ; 152: System.Runtime.dll => 0x7bf8cdab => 56
	i32 2090596640, ; 153: System.Numerics.Vectors => 0x7c9bf920 => 54
	i32 2097448633, ; 154: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 93
	i32 2103459038, ; 155: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 45
	i32 2126786730, ; 156: Xamarin.Forms.Platform.Android => 0x7ec430aa => 129
	i32 2129483829, ; 157: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 134
	i32 2166116741, ; 158: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 66
	i32 2181898931, ; 159: Microsoft.Extensions.Options.dll => 0x820d22b3 => 28
	i32 2192057212, ; 160: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 26
	i32 2197979891, ; 161: Microsoft.Extensions.DependencyModel.dll => 0x830282f3 => 25
	i32 2201107256, ; 162: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 144
	i32 2201231467, ; 163: System.Net.Http => 0x8334206b => 52
	i32 2217644978, ; 164: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 121
	i32 2232960810, ; 165: Spire.Email => 0x8518472a => 41
	i32 2244775296, ; 166: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 104
	i32 2252897993, ; 167: Microsoft.EntityFrameworkCore => 0x86487ec9 => 17
	i32 2256548716, ; 168: Xamarin.AndroidX.MultiDex => 0x8680336c => 106
	i32 2261435625, ; 169: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 95
	i32 2266799131, ; 170: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 22
	i32 2279755925, ; 171: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 113
	i32 2315684594, ; 172: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 68
	i32 2403452196, ; 173: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 89
	i32 2409053734, ; 174: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 110
	i32 2435904999, ; 175: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 154
	i32 2465273461, ; 176: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 42
	i32 2465532216, ; 177: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 79
	i32 2471841756, ; 178: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 179: Java.Interop.dll => 0x93918882 => 8
	i32 2501346920, ; 180: System.Data.DataSetExtensions => 0x95178668 => 147
	i32 2505896520, ; 181: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 100
	i32 2570120770, ; 182: System.Text.Encodings.Web => 0x9930ee42 => 57
	i32 2581819634, ; 183: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 122
	i32 2605712449, ; 184: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 144
	i32 2620871830, ; 185: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 84
	i32 2624644809, ; 186: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 88
	i32 2633051222, ; 187: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 98
	i32 2634653062, ; 188: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 18
	i32 2701096212, ; 189: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 119
	i32 2732626843, ; 190: Xamarin.AndroidX.Activity => 0xa2e0939b => 67
	i32 2737747696, ; 191: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 70
	i32 2765824710, ; 192: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 4
	i32 2766581644, ; 193: Xamarin.Forms.Core => 0xa4e6af8c => 127
	i32 2770495804, ; 194: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 138
	i32 2778768386, ; 195: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 124
	i32 2779977773, ; 196: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 114
	i32 2795602088, ; 197: SkiaSharp.Views.Android.dll => 0xa6a180a8 => 39
	i32 2810250172, ; 198: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 81
	i32 2819470561, ; 199: System.Xml.dll => 0xa80db4e1 => 59
	i32 2821294376, ; 200: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 114
	i32 2847418871, ; 201: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 134
	i32 2847789619, ; 202: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 18
	i32 2853208004, ; 203: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 124
	i32 2855708567, ; 204: Xamarin.AndroidX.Transition => 0xaa36a797 => 120
	i32 2903344695, ; 205: System.ComponentModel.Composition => 0xad0d8637 => 151
	i32 2905242038, ; 206: mscorlib.dll => 0xad2a79b6 => 31
	i32 2912489636, ; 207: SkiaSharp.Views.Android => 0xad9910a4 => 39
	i32 2916838712, ; 208: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 125
	i32 2919462931, ; 209: System.Numerics.Vectors.dll => 0xae037813 => 54
	i32 2921128767, ; 210: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 69
	i32 2974793899, ; 211: SkiaSharp.Views.Forms.dll => 0xb14fc0ab => 40
	i32 2978675010, ; 212: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 87
	i32 2996846495, ; 213: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 99
	i32 3016983068, ; 214: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 117
	i32 3024354802, ; 215: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 94
	i32 3036068679, ; 216: Microcharts.Droid.dll => 0xb4f6bb47 => 10
	i32 3044182254, ; 217: FormsViewGroup => 0xb57288ee => 6
	i32 3057625584, ; 218: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 107
	i32 3058099980, ; 219: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 137
	i32 3068715062, ; 220: Xamarin.Android.Arch.Lifecycle.Common => 0xb6e8e036 => 62
	i32 3069363400, ; 221: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 20
	i32 3111772706, ; 222: System.Runtime.Serialization => 0xb979e222 => 5
	i32 3124832203, ; 223: System.Threading.Tasks.Extensions => 0xba4127cb => 156
	i32 3195844289, ; 224: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 20
	i32 3204380047, ; 225: System.Data.dll => 0xbefef58f => 3
	i32 3211777861, ; 226: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 86
	i32 3230466174, ; 227: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 135
	i32 3247949154, ; 228: Mono.Security => 0xc197c562 => 158
	i32 3258312781, ; 229: Xamarin.AndroidX.CardView => 0xc235e84d => 76
	i32 3265893370, ; 230: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 156
	i32 3267021929, ; 231: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 74
	i32 3280506390, ; 232: System.ComponentModel.Annotations.dll => 0xc3888e16 => 2
	i32 3317135071, ; 233: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 85
	i32 3317144872, ; 234: System.Data => 0xc5b79d28 => 3
	i32 3340387945, ; 235: SkiaSharp => 0xc71a4669 => 37
	i32 3340431453, ; 236: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 73
	i32 3345895724, ; 237: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 112
	i32 3346324047, ; 238: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 108
	i32 3353484488, ; 239: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 93
	i32 3358260929, ; 240: System.Text.Json => 0xc82afec1 => 58
	i32 3360279109, ; 241: SQLitePCLRaw.core => 0xc849ca45 => 43
	i32 3362522851, ; 242: Xamarin.AndroidX.Core => 0xc86c06e3 => 83
	i32 3366347497, ; 243: Java.Interop => 0xc8a662e9 => 8
	i32 3374999561, ; 244: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 113
	i32 3395150330, ; 245: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 55
	i32 3404865022, ; 246: System.ServiceModel.Internals => 0xcaf21dfe => 155
	i32 3428513518, ; 247: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 24
	i32 3429136800, ; 248: System.Xml => 0xcc6479a0 => 59
	i32 3430777524, ; 249: netstandard => 0xcc7d82b4 => 1
	i32 3439690031, ; 250: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 64
	i32 3441283291, ; 251: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 88
	i32 3455791806, ; 252: Microcharts => 0xcdfb32be => 9
	i32 3476120550, ; 253: Mono.Android => 0xcf3163e6 => 30
	i32 3485117614, ; 254: System.Text.Json.dll => 0xcfbaacae => 58
	i32 3486566296, ; 255: System.Transactions => 0xcfd0c798 => 152
	i32 3493954962, ; 256: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 78
	i32 3494395880, ; 257: Xamarin.GooglePlayServices.Location.dll => 0xd0483fe8 => 136
	i32 3501239056, ; 258: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 74
	i32 3509114376, ; 259: System.Xml.Linq => 0xd128d608 => 60
	i32 3536029504, ; 260: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 129
	i32 3567349600, ; 261: System.ComponentModel.Composition.dll => 0xd4a16f60 => 151
	i32 3618140916, ; 262: Xamarin.AndroidX.Preference => 0xd7a872f4 => 110
	i32 3627220390, ; 263: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 111
	i32 3632359727, ; 264: Xamarin.Forms.Platform => 0xd881692f => 130
	i32 3633644679, ; 265: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 69
	i32 3641597786, ; 266: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 97
	i32 3645089577, ; 267: System.ComponentModel.DataAnnotations => 0xd943a729 => 154
	i32 3657292374, ; 268: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 22
	i32 3668042751, ; 269: Microcharts.dll => 0xdaa1e3ff => 9
	i32 3672681054, ; 270: Mono.Android.dll => 0xdae8aa5e => 30
	i32 3676310014, ; 271: System.Web.Services.dll => 0xdb2009fe => 153
	i32 3681174138, ; 272: Xamarin.Android.Arch.Lifecycle.Common.dll => 0xdb6a427a => 62
	i32 3682565725, ; 273: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 75
	i32 3684561358, ; 274: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 78
	i32 3689375977, ; 275: System.Drawing.Common => 0xdbe768e9 => 148
	i32 3706696989, ; 276: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 82
	i32 3718780102, ; 277: Xamarin.AndroidX.Annotation => 0xdda814c6 => 68
	i32 3724971120, ; 278: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 107
	i32 3748608112, ; 279: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 49
	i32 3754567612, ; 280: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 45
	i32 3758932259, ; 281: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 95
	i32 3786282454, ; 282: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 77
	i32 3792835768, ; 283: HarfBuzzSharp => 0xe21214b8 => 7
	i32 3822602673, ; 284: Xamarin.AndroidX.Media => 0xe3d849b1 => 105
	i32 3829621856, ; 285: System.Numerics.dll => 0xe4436460 => 53
	i32 3841636137, ; 286: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 23
	i32 3862817207, ; 287: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0xe63de9b7 => 63
	i32 3874897629, ; 288: Xamarin.Android.Arch.Lifecycle.Runtime => 0xe6f63edd => 63
	i32 3885922214, ; 289: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 120
	i32 3888767677, ; 290: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 112
	i32 3894448521, ; 291: Microsoft.Bcl.HashCode => 0xe8209189 => 13
	i32 3896760992, ; 292: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 83
	i32 3903721208, ; 293: Microcharts.Forms => 0xe8ae0ef8 => 11
	i32 3920810846, ; 294: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 150
	i32 3921031405, ; 295: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 123
	i32 3931092270, ; 296: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 109
	i32 3945713374, ; 297: System.Data.DataSetExtensions.dll => 0xeb2ecede => 147
	i32 3953953790, ; 298: System.Text.Encoding.CodePages => 0xebac8bfe => 4
	i32 3955647286, ; 299: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 71
	i32 3959773229, ; 300: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 99
	i32 3967165417, ; 301: Xamarin.GooglePlayServices.Location => 0xec7623e9 => 136
	i32 3970018735, ; 302: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 137
	i32 4003906742, ; 303: HarfBuzzSharp.dll => 0xeea6c4b6 => 7
	i32 4025784931, ; 304: System.Memory => 0xeff49a63 => 51
	i32 4066802364, ; 305: SkiaSharp.HarfBuzz => 0xf2667abc => 38
	i32 4101593132, ; 306: Xamarin.AndroidX.Emoji2 => 0xf479582c => 89
	i32 4101842092, ; 307: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 21
	i32 4105002889, ; 308: Mono.Security.dll => 0xf4ad5f89 => 158
	i32 4126470640, ; 309: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 24
	i32 4151237749, ; 310: System.Core => 0xf76edc75 => 48
	i32 4171745578, ; 311: Xamarin_Postep.Android => 0xf8a7c92a => 0
	i32 4182413190, ; 312: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 102
	i32 4213026141, ; 313: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 49
	i32 4256097574, ; 314: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 82
	i32 4260525087, ; 315: System.Buffers => 0xfdf2741f => 46
	i32 4263658931, ; 316: Microsoft.Bcl.HashCode.dll => 0xfe2245b3 => 13
	i32 4292120959 ; 317: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 102
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [318 x i32] [
	i32 25, i32 100, i32 133, i32 32, i32 127, i32 116, i32 116, i32 141, ; 0..7
	i32 2, i32 61, i32 77, i32 65, i32 128, i32 118, i32 34, i32 75, ; 8..15
	i32 94, i32 153, i32 80, i32 98, i32 92, i32 67, i32 53, i32 96, ; 16..23
	i32 44, i32 51, i32 145, i32 79, i32 126, i32 157, i32 91, i32 31, ; 24..31
	i32 50, i32 92, i32 104, i32 33, i32 29, i32 65, i32 37, i32 152, ; 32..39
	i32 141, i32 27, i32 12, i32 150, i32 85, i32 90, i32 57, i32 123, ; 40..47
	i32 72, i32 60, i32 143, i32 64, i32 138, i32 142, i32 42, i32 36, ; 48..55
	i32 149, i32 38, i32 28, i32 148, i32 111, i32 146, i32 10, i32 36, ; 56..63
	i32 133, i32 32, i32 142, i32 96, i32 6, i32 157, i32 115, i32 23, ; 64..71
	i32 35, i32 71, i32 130, i32 101, i32 140, i32 50, i32 15, i32 128, ; 72..79
	i32 16, i32 121, i32 108, i32 16, i32 72, i32 21, i32 34, i32 117, ; 80..87
	i32 122, i32 143, i32 43, i32 87, i32 0, i32 155, i32 115, i32 105, ; 88..95
	i32 81, i32 55, i32 41, i32 131, i32 47, i32 149, i32 70, i32 29, ; 96..103
	i32 47, i32 14, i32 33, i32 66, i32 86, i32 11, i32 61, i32 5, ; 104..111
	i32 103, i32 125, i32 90, i32 84, i32 52, i32 56, i32 119, i32 132, ; 112..119
	i32 80, i32 146, i32 14, i32 17, i32 139, i32 44, i32 40, i32 76, ; 120..127
	i32 118, i32 27, i32 48, i32 91, i32 12, i32 103, i32 145, i32 140, ; 128..135
	i32 132, i32 109, i32 26, i32 126, i32 131, i32 73, i32 19, i32 15, ; 136..143
	i32 135, i32 106, i32 139, i32 46, i32 35, i32 19, i32 101, i32 97, ; 144..151
	i32 56, i32 54, i32 93, i32 45, i32 129, i32 134, i32 66, i32 28, ; 152..159
	i32 26, i32 25, i32 144, i32 52, i32 121, i32 41, i32 104, i32 17, ; 160..167
	i32 106, i32 95, i32 22, i32 113, i32 68, i32 89, i32 110, i32 154, ; 168..175
	i32 42, i32 79, i32 1, i32 8, i32 147, i32 100, i32 57, i32 122, ; 176..183
	i32 144, i32 84, i32 88, i32 98, i32 18, i32 119, i32 67, i32 70, ; 184..191
	i32 4, i32 127, i32 138, i32 124, i32 114, i32 39, i32 81, i32 59, ; 192..199
	i32 114, i32 134, i32 18, i32 124, i32 120, i32 151, i32 31, i32 39, ; 200..207
	i32 125, i32 54, i32 69, i32 40, i32 87, i32 99, i32 117, i32 94, ; 208..215
	i32 10, i32 6, i32 107, i32 137, i32 62, i32 20, i32 5, i32 156, ; 216..223
	i32 20, i32 3, i32 86, i32 135, i32 158, i32 76, i32 156, i32 74, ; 224..231
	i32 2, i32 85, i32 3, i32 37, i32 73, i32 112, i32 108, i32 93, ; 232..239
	i32 58, i32 43, i32 83, i32 8, i32 113, i32 55, i32 155, i32 24, ; 240..247
	i32 59, i32 1, i32 64, i32 88, i32 9, i32 30, i32 58, i32 152, ; 248..255
	i32 78, i32 136, i32 74, i32 60, i32 129, i32 151, i32 110, i32 111, ; 256..263
	i32 130, i32 69, i32 97, i32 154, i32 22, i32 9, i32 30, i32 153, ; 264..271
	i32 62, i32 75, i32 78, i32 148, i32 82, i32 68, i32 107, i32 49, ; 272..279
	i32 45, i32 95, i32 77, i32 7, i32 105, i32 53, i32 23, i32 63, ; 280..287
	i32 63, i32 120, i32 112, i32 13, i32 83, i32 11, i32 150, i32 123, ; 288..295
	i32 109, i32 147, i32 4, i32 71, i32 99, i32 136, i32 137, i32 7, ; 296..303
	i32 51, i32 38, i32 89, i32 21, i32 158, i32 24, i32 48, i32 0, ; 304..311
	i32 102, i32 49, i32 82, i32 46, i32 13, i32 102 ; 312..317
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

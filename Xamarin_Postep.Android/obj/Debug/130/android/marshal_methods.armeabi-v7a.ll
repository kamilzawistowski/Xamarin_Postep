; ModuleID = 'obj\Debug\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [304 x i32] [
	i32 26230656, ; 0: Microsoft.Extensions.DependencyModel => 0x1903f80 => 32
	i32 32687329, ; 1: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 94
	i32 34715100, ; 2: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 127
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 121
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 110
	i32 117431740, ; 5: System.Runtime.InteropServices => 0x6ffddbc => 147
	i32 120558881, ; 6: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 110
	i32 134690465, ; 7: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 131
	i32 159306688, ; 8: System.ComponentModel.Annotations => 0x97ed3c0 => 2
	i32 165246403, ; 9: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 71
	i32 177794437, ; 10: Xamarin.Forms.DataGrid => 0xa98ed85 => 122
	i32 182336117, ; 11: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 112
	i32 209399409, ; 12: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 69
	i32 220171995, ; 13: System.Diagnostics.Debug => 0xd1f8edb => 9
	i32 230216969, ; 14: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 88
	i32 232815796, ; 15: System.Web.Services => 0xde07cb4 => 143
	i32 261689757, ; 16: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 74
	i32 278686392, ; 17: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 92
	i32 280482487, ; 18: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 86
	i32 318968648, ; 19: Xamarin.AndroidX.Activity.dll => 0x13031348 => 61
	i32 321597661, ; 20: System.Numerics => 0x132b30dd => 53
	i32 342366114, ; 21: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 90
	i32 347068432, ; 22: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 45
	i32 385762202, ; 23: System.Memory.dll => 0x16fe439a => 52
	i32 402672763, ; 24: Xamarin.Plugin.Calendar => 0x18004c7b => 135
	i32 441335492, ; 25: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 73
	i32 442521989, ; 26: Xamarin.Essentials => 0x1a605985 => 120
	i32 442565967, ; 27: System.Collections => 0x1a61054f => 7
	i32 450948140, ; 28: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 85
	i32 465846621, ; 29: mscorlib => 0x1bc4415d => 38
	i32 469710990, ; 30: System.dll => 0x1bff388e => 51
	i32 476646585, ; 31: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 86
	i32 486930444, ; 32: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 98
	i32 513247710, ; 33: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 36
	i32 525008092, ; 34: SkiaSharp.dll => 0x1f4afcdc => 39
	i32 526420162, ; 35: System.Transactions.dll => 0x1f6088c2 => 142
	i32 527452488, ; 36: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 131
	i32 539058512, ; 37: Microsoft.Extensions.Logging => 0x20216150 => 34
	i32 545304856, ; 38: System.Runtime.Extensions => 0x2080b118 => 150
	i32 548916678, ; 39: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 17
	i32 605376203, ; 40: System.IO.Compression.FileSystem => 0x24154ecb => 140
	i32 627609679, ; 41: Xamarin.AndroidX.CustomView => 0x2568904f => 79
	i32 639843206, ; 42: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 84
	i32 662205335, ; 43: System.Text.Encodings.Web.dll => 0x27787397 => 57
	i32 663517072, ; 44: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 117
	i32 666292255, ; 45: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 66
	i32 672442732, ; 46: System.Collections.Concurrent => 0x2814a96c => 6
	i32 690569205, ; 47: System.Xml.Linq.dll => 0x29293ff5 => 60
	i32 691348768, ; 48: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 133
	i32 700284507, ; 49: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 128
	i32 720511267, ; 50: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 132
	i32 748832960, ; 51: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 43
	i32 775507847, ; 52: System.IO.Compression => 0x2e394f87 => 139
	i32 789151979, ; 53: Microsoft.Extensions.Options => 0x2f0980eb => 35
	i32 809851609, ; 54: System.Drawing.Common.dll => 0x30455ad9 => 138
	i32 843511501, ; 55: Xamarin.AndroidX.Print => 0x3246f6cd => 105
	i32 881234337, ; 56: Xamarin_Postep => 0x348691a1 => 136
	i32 886248193, ; 57: Microcharts.Droid => 0x34d31301 => 15
	i32 928116545, ; 58: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 127
	i32 956575887, ; 59: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 132
	i32 967690846, ; 60: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 90
	i32 974778368, ; 61: FormsViewGroup.dll => 0x3a19f000 => 12
	i32 975236339, ; 62: System.Diagnostics.Tracing => 0x3a20ecf3 => 148
	i32 992768348, ; 63: System.Collections.dll => 0x3b2c715c => 7
	i32 1012816738, ; 64: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 109
	i32 1028951442, ; 65: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 30
	i32 1035644815, ; 66: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 65
	i32 1042160112, ; 67: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 124
	i32 1052210849, ; 68: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 95
	i32 1084122840, ; 69: Xamarin.Kotlin.StdLib => 0x409e66d8 => 130
	i32 1098259244, ; 70: System => 0x41761b2c => 51
	i32 1099692271, ; 71: Microsoft.DotNet.PlatformAbstractions => 0x418bf8ef => 20
	i32 1134910725, ; 72: Xamarin.Forms.DataGrid.dll => 0x43a55d05 => 122
	i32 1157931901, ; 73: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 21
	i32 1175144683, ; 74: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 115
	i32 1178241025, ; 75: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 102
	i32 1202000627, ; 76: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 21
	i32 1204270330, ; 77: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 66
	i32 1204575371, ; 78: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 26
	i32 1264511973, ; 79: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 111
	i32 1267360935, ; 80: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 116
	i32 1275534314, ; 81: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 133
	i32 1292207520, ; 82: SQLitePCLRaw.core.dll => 0x4d0585a0 => 44
	i32 1293217323, ; 83: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 81
	i32 1324995046, ; 84: Xamarin_Postep.Android.dll => 0x4ef9d1e6 => 0
	i32 1365406463, ; 85: System.ServiceModel.Internals.dll => 0x516272ff => 145
	i32 1376866003, ; 86: Xamarin.AndroidX.SavedState => 0x52114ed3 => 109
	i32 1379779777, ; 87: System.Resources.ResourceManager => 0x523dc4c1 => 5
	i32 1395857551, ; 88: Xamarin.AndroidX.Media.dll => 0x5333188f => 99
	i32 1406073936, ; 89: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 75
	i32 1411638395, ; 90: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 55
	i32 1421105759, ; 91: Spire.Email.dll => 0x54b45a5f => 42
	i32 1457743152, ; 92: System.Runtime.Extensions.dll => 0x56e36530 => 150
	i32 1460219004, ; 93: Xamarin.Forms.Xaml => 0x57092c7c => 125
	i32 1461234159, ; 94: System.Collections.Immutable.dll => 0x5718a9ef => 48
	i32 1462112819, ; 95: System.IO.Compression.dll => 0x57261233 => 139
	i32 1469204771, ; 96: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 64
	i32 1470490898, ; 97: Microsoft.Extensions.Primitives => 0x57a5e912 => 36
	i32 1479771757, ; 98: System.Collections.Immutable => 0x5833866d => 48
	i32 1490351284, ; 99: Microsoft.Data.Sqlite.dll => 0x58d4f4b4 => 19
	i32 1582372066, ; 100: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 80
	i32 1582526884, ; 101: Microcharts.Forms.dll => 0x5e5371a4 => 16
	i32 1592978981, ; 102: System.Runtime.Serialization.dll => 0x5ef2ee25 => 11
	i32 1622152042, ; 103: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 97
	i32 1624863272, ; 104: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 119
	i32 1635184631, ; 105: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 84
	i32 1636350590, ; 106: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 78
	i32 1639515021, ; 107: System.Net.Http.dll => 0x61b9038d => 10
	i32 1657153582, ; 108: System.Runtime => 0x62c6282e => 56
	i32 1658241508, ; 109: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 113
	i32 1658251792, ; 110: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 126
	i32 1670060433, ; 111: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 74
	i32 1678093242, ; 112: Xamarin_Postep.dll => 0x6405abba => 136
	i32 1688112883, ; 113: Microsoft.Data.Sqlite => 0x649e8ef3 => 19
	i32 1689493916, ; 114: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 22
	i32 1698840827, ; 115: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 129
	i32 1701541528, ; 116: System.Diagnostics.Debug.dll => 0x656b7698 => 9
	i32 1711441057, ; 117: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 45
	i32 1722051300, ; 118: SkiaSharp.Views.Forms => 0x66a46ae4 => 41
	i32 1726116996, ; 119: System.Reflection.dll => 0x66e27484 => 149
	i32 1729485958, ; 120: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 70
	i32 1766324549, ; 121: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 112
	i32 1770582343, ; 122: Microsoft.Extensions.Logging.dll => 0x6988f147 => 34
	i32 1776026572, ; 123: System.Core.dll => 0x69dc03cc => 49
	i32 1788241197, ; 124: Xamarin.AndroidX.Fragment => 0x6a96652d => 85
	i32 1796167890, ; 125: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 17
	i32 1808609942, ; 126: Xamarin.AndroidX.Loader => 0x6bcd3296 => 97
	i32 1812481981, ; 127: Xamarin.Plugin.Calendar.dll => 0x6c0847bd => 135
	i32 1813058853, ; 128: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 130
	i32 1813201214, ; 129: Xamarin.Google.Android.Material => 0x6c13413e => 126
	i32 1818569960, ; 130: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 103
	i32 1828688058, ; 131: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 33
	i32 1867746548, ; 132: Xamarin.Essentials.dll => 0x6f538cf4 => 120
	i32 1878053835, ; 133: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 125
	i32 1885316902, ; 134: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 67
	i32 1886040351, ; 135: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x706ab11f => 24
	i32 1894524299, ; 136: Microsoft.DotNet.PlatformAbstractions.dll => 0x70ec258b => 20
	i32 1900610850, ; 137: System.Resources.ResourceManager.dll => 0x71490522 => 5
	i32 1919157823, ; 138: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 100
	i32 1968388702, ; 139: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 29
	i32 1983156543, ; 140: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 129
	i32 2011961780, ; 141: System.Buffers.dll => 0x77ec19b4 => 47
	i32 2014489277, ; 142: Microsoft.EntityFrameworkCore.Sqlite => 0x7812aabd => 24
	i32 2019465201, ; 143: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 95
	i32 2048278909, ; 144: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 28
	i32 2055257422, ; 145: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 91
	i32 2079903147, ; 146: System.Runtime.dll => 0x7bf8cdab => 56
	i32 2090596640, ; 147: System.Numerics.Vectors => 0x7c9bf920 => 54
	i32 2097448633, ; 148: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 87
	i32 2103459038, ; 149: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 46
	i32 2126786730, ; 150: Xamarin.Forms.Platform.Android => 0x7ec430aa => 123
	i32 2181898931, ; 151: Microsoft.Extensions.Options.dll => 0x820d22b3 => 35
	i32 2192057212, ; 152: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 33
	i32 2197979891, ; 153: Microsoft.Extensions.DependencyModel.dll => 0x830282f3 => 32
	i32 2201107256, ; 154: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 134
	i32 2201231467, ; 155: System.Net.Http => 0x8334206b => 10
	i32 2217644978, ; 156: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 115
	i32 2232960810, ; 157: Spire.Email => 0x8518472a => 42
	i32 2244775296, ; 158: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 98
	i32 2252897993, ; 159: Microsoft.EntityFrameworkCore => 0x86487ec9 => 22
	i32 2256548716, ; 160: Xamarin.AndroidX.MultiDex => 0x8680336c => 100
	i32 2261435625, ; 161: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 89
	i32 2266799131, ; 162: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 27
	i32 2279755925, ; 163: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 107
	i32 2315684594, ; 164: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 62
	i32 2371007202, ; 165: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 29
	i32 2403452196, ; 166: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 83
	i32 2409053734, ; 167: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 104
	i32 2435904999, ; 168: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 144
	i32 2465273461, ; 169: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 43
	i32 2465532216, ; 170: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 73
	i32 2471841756, ; 171: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 172: Java.Interop.dll => 0x93918882 => 13
	i32 2501346920, ; 173: System.Data.DataSetExtensions => 0x95178668 => 137
	i32 2505896520, ; 174: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 94
	i32 2570120770, ; 175: System.Text.Encodings.Web => 0x9930ee42 => 57
	i32 2581819634, ; 176: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 116
	i32 2605712449, ; 177: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 134
	i32 2620871830, ; 178: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 78
	i32 2624644809, ; 179: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 82
	i32 2633051222, ; 180: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 92
	i32 2634653062, ; 181: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 23
	i32 2701096212, ; 182: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 113
	i32 2732626843, ; 183: Xamarin.AndroidX.Activity => 0xa2e0939b => 61
	i32 2737747696, ; 184: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 64
	i32 2765824710, ; 185: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 4
	i32 2766581644, ; 186: Xamarin.Forms.Core => 0xa4e6af8c => 121
	i32 2770495804, ; 187: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 128
	i32 2778768386, ; 188: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 118
	i32 2779977773, ; 189: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 108
	i32 2795602088, ; 190: SkiaSharp.Views.Android.dll => 0xa6a180a8 => 40
	i32 2810250172, ; 191: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 75
	i32 2819470561, ; 192: System.Xml.dll => 0xa80db4e1 => 59
	i32 2821294376, ; 193: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 108
	i32 2847789619, ; 194: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 23
	i32 2853208004, ; 195: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 118
	i32 2855708567, ; 196: Xamarin.AndroidX.Transition => 0xaa36a797 => 114
	i32 2901442782, ; 197: System.Reflection => 0xacf080de => 149
	i32 2903344695, ; 198: System.ComponentModel.Composition => 0xad0d8637 => 141
	i32 2905242038, ; 199: mscorlib.dll => 0xad2a79b6 => 38
	i32 2912489636, ; 200: SkiaSharp.Views.Android => 0xad9910a4 => 40
	i32 2916838712, ; 201: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 119
	i32 2919462931, ; 202: System.Numerics.Vectors.dll => 0xae037813 => 54
	i32 2921128767, ; 203: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 63
	i32 2974793899, ; 204: SkiaSharp.Views.Forms.dll => 0xb14fc0ab => 41
	i32 2978675010, ; 205: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 81
	i32 2996846495, ; 206: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 93
	i32 3016983068, ; 207: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 111
	i32 3024354802, ; 208: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 88
	i32 3036068679, ; 209: Microcharts.Droid.dll => 0xb4f6bb47 => 15
	i32 3044182254, ; 210: FormsViewGroup => 0xb57288ee => 12
	i32 3057625584, ; 211: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 101
	i32 3069363400, ; 212: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 25
	i32 3111772706, ; 213: System.Runtime.Serialization => 0xb979e222 => 11
	i32 3124832203, ; 214: System.Threading.Tasks.Extensions => 0xba4127cb => 146
	i32 3147165239, ; 215: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 148
	i32 3195844289, ; 216: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 25
	i32 3204380047, ; 217: System.Data.dll => 0xbefef58f => 3
	i32 3211777861, ; 218: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 80
	i32 3220365878, ; 219: System.Threading => 0xbff2e236 => 8
	i32 3247949154, ; 220: Mono.Security => 0xc197c562 => 151
	i32 3258312781, ; 221: Xamarin.AndroidX.CardView => 0xc235e84d => 70
	i32 3265893370, ; 222: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 146
	i32 3267021929, ; 223: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 68
	i32 3280506390, ; 224: System.ComponentModel.Annotations.dll => 0xc3888e16 => 2
	i32 3317135071, ; 225: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 79
	i32 3317144872, ; 226: System.Data => 0xc5b79d28 => 3
	i32 3340387945, ; 227: SkiaSharp => 0xc71a4669 => 39
	i32 3340431453, ; 228: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 67
	i32 3345895724, ; 229: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 106
	i32 3346324047, ; 230: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 102
	i32 3353484488, ; 231: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 87
	i32 3358260929, ; 232: System.Text.Json => 0xc82afec1 => 58
	i32 3360279109, ; 233: SQLitePCLRaw.core => 0xc849ca45 => 44
	i32 3362522851, ; 234: Xamarin.AndroidX.Core => 0xc86c06e3 => 77
	i32 3366347497, ; 235: Java.Interop => 0xc8a662e9 => 13
	i32 3374999561, ; 236: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 107
	i32 3395150330, ; 237: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 55
	i32 3404865022, ; 238: System.ServiceModel.Internals => 0xcaf21dfe => 145
	i32 3421170118, ; 239: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 28
	i32 3428513518, ; 240: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 31
	i32 3429136800, ; 241: System.Xml => 0xcc6479a0 => 59
	i32 3430777524, ; 242: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 243: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 82
	i32 3455791806, ; 244: Microcharts => 0xcdfb32be => 14
	i32 3476120550, ; 245: Mono.Android => 0xcf3163e6 => 37
	i32 3485117614, ; 246: System.Text.Json.dll => 0xcfbaacae => 58
	i32 3486566296, ; 247: System.Transactions => 0xcfd0c798 => 142
	i32 3493954962, ; 248: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 72
	i32 3501239056, ; 249: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 68
	i32 3509114376, ; 250: System.Xml.Linq => 0xd128d608 => 60
	i32 3536029504, ; 251: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 123
	i32 3567349600, ; 252: System.ComponentModel.Composition.dll => 0xd4a16f60 => 141
	i32 3618140916, ; 253: Xamarin.AndroidX.Preference => 0xd7a872f4 => 104
	i32 3627220390, ; 254: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 105
	i32 3632359727, ; 255: Xamarin.Forms.Platform => 0xd881692f => 124
	i32 3633644679, ; 256: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 63
	i32 3641597786, ; 257: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 91
	i32 3645089577, ; 258: System.ComponentModel.DataAnnotations => 0xd943a729 => 144
	i32 3657292374, ; 259: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 27
	i32 3668042751, ; 260: Microcharts.dll => 0xdaa1e3ff => 14
	i32 3672681054, ; 261: Mono.Android.dll => 0xdae8aa5e => 37
	i32 3676310014, ; 262: System.Web.Services.dll => 0xdb2009fe => 143
	i32 3682565725, ; 263: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 69
	i32 3684561358, ; 264: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 72
	i32 3689375977, ; 265: System.Drawing.Common => 0xdbe768e9 => 138
	i32 3706696989, ; 266: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 76
	i32 3718780102, ; 267: Xamarin.AndroidX.Annotation => 0xdda814c6 => 62
	i32 3724971120, ; 268: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 101
	i32 3748608112, ; 269: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 50
	i32 3754567612, ; 270: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 46
	i32 3758932259, ; 271: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 89
	i32 3786282454, ; 272: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 71
	i32 3822602673, ; 273: Xamarin.AndroidX.Media => 0xe3d849b1 => 99
	i32 3829621856, ; 274: System.Numerics.dll => 0xe4436460 => 53
	i32 3841636137, ; 275: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 30
	i32 3849253459, ; 276: System.Runtime.InteropServices.dll => 0xe56ef253 => 147
	i32 3885922214, ; 277: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 114
	i32 3888767677, ; 278: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 106
	i32 3894448521, ; 279: Microsoft.Bcl.HashCode => 0xe8209189 => 18
	i32 3896106733, ; 280: System.Collections.Concurrent.dll => 0xe839deed => 6
	i32 3896760992, ; 281: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 77
	i32 3903721208, ; 282: Microcharts.Forms => 0xe8ae0ef8 => 16
	i32 3920810846, ; 283: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 140
	i32 3921031405, ; 284: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 117
	i32 3931092270, ; 285: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 103
	i32 3945713374, ; 286: System.Data.DataSetExtensions.dll => 0xeb2ecede => 137
	i32 3953953790, ; 287: System.Text.Encoding.CodePages => 0xebac8bfe => 4
	i32 3955647286, ; 288: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 65
	i32 3959773229, ; 289: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 93
	i32 4025784931, ; 290: System.Memory => 0xeff49a63 => 52
	i32 4073602200, ; 291: System.Threading.dll => 0xf2ce3c98 => 8
	i32 4101593132, ; 292: Xamarin.AndroidX.Emoji2 => 0xf479582c => 83
	i32 4101842092, ; 293: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 26
	i32 4105002889, ; 294: Mono.Security.dll => 0xf4ad5f89 => 151
	i32 4126470640, ; 295: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 31
	i32 4151237749, ; 296: System.Core => 0xf76edc75 => 49
	i32 4171745578, ; 297: Xamarin_Postep.Android => 0xf8a7c92a => 0
	i32 4182413190, ; 298: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 96
	i32 4213026141, ; 299: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 50
	i32 4256097574, ; 300: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 76
	i32 4260525087, ; 301: System.Buffers => 0xfdf2741f => 47
	i32 4263658931, ; 302: Microsoft.Bcl.HashCode.dll => 0xfe2245b3 => 18
	i32 4292120959 ; 303: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 96
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [304 x i32] [
	i32 32, i32 94, i32 127, i32 121, i32 110, i32 147, i32 110, i32 131, ; 0..7
	i32 2, i32 71, i32 122, i32 112, i32 69, i32 9, i32 88, i32 143, ; 8..15
	i32 74, i32 92, i32 86, i32 61, i32 53, i32 90, i32 45, i32 52, ; 16..23
	i32 135, i32 73, i32 120, i32 7, i32 85, i32 38, i32 51, i32 86, ; 24..31
	i32 98, i32 36, i32 39, i32 142, i32 131, i32 34, i32 150, i32 17, ; 32..39
	i32 140, i32 79, i32 84, i32 57, i32 117, i32 66, i32 6, i32 60, ; 40..47
	i32 133, i32 128, i32 132, i32 43, i32 139, i32 35, i32 138, i32 105, ; 48..55
	i32 136, i32 15, i32 127, i32 132, i32 90, i32 12, i32 148, i32 7, ; 56..63
	i32 109, i32 30, i32 65, i32 124, i32 95, i32 130, i32 51, i32 20, ; 64..71
	i32 122, i32 21, i32 115, i32 102, i32 21, i32 66, i32 26, i32 111, ; 72..79
	i32 116, i32 133, i32 44, i32 81, i32 0, i32 145, i32 109, i32 5, ; 80..87
	i32 99, i32 75, i32 55, i32 42, i32 150, i32 125, i32 48, i32 139, ; 88..95
	i32 64, i32 36, i32 48, i32 19, i32 80, i32 16, i32 11, i32 97, ; 96..103
	i32 119, i32 84, i32 78, i32 10, i32 56, i32 113, i32 126, i32 74, ; 104..111
	i32 136, i32 19, i32 22, i32 129, i32 9, i32 45, i32 41, i32 149, ; 112..119
	i32 70, i32 112, i32 34, i32 49, i32 85, i32 17, i32 97, i32 135, ; 120..127
	i32 130, i32 126, i32 103, i32 33, i32 120, i32 125, i32 67, i32 24, ; 128..135
	i32 20, i32 5, i32 100, i32 29, i32 129, i32 47, i32 24, i32 95, ; 136..143
	i32 28, i32 91, i32 56, i32 54, i32 87, i32 46, i32 123, i32 35, ; 144..151
	i32 33, i32 32, i32 134, i32 10, i32 115, i32 42, i32 98, i32 22, ; 152..159
	i32 100, i32 89, i32 27, i32 107, i32 62, i32 29, i32 83, i32 104, ; 160..167
	i32 144, i32 43, i32 73, i32 1, i32 13, i32 137, i32 94, i32 57, ; 168..175
	i32 116, i32 134, i32 78, i32 82, i32 92, i32 23, i32 113, i32 61, ; 176..183
	i32 64, i32 4, i32 121, i32 128, i32 118, i32 108, i32 40, i32 75, ; 184..191
	i32 59, i32 108, i32 23, i32 118, i32 114, i32 149, i32 141, i32 38, ; 192..199
	i32 40, i32 119, i32 54, i32 63, i32 41, i32 81, i32 93, i32 111, ; 200..207
	i32 88, i32 15, i32 12, i32 101, i32 25, i32 11, i32 146, i32 148, ; 208..215
	i32 25, i32 3, i32 80, i32 8, i32 151, i32 70, i32 146, i32 68, ; 216..223
	i32 2, i32 79, i32 3, i32 39, i32 67, i32 106, i32 102, i32 87, ; 224..231
	i32 58, i32 44, i32 77, i32 13, i32 107, i32 55, i32 145, i32 28, ; 232..239
	i32 31, i32 59, i32 1, i32 82, i32 14, i32 37, i32 58, i32 142, ; 240..247
	i32 72, i32 68, i32 60, i32 123, i32 141, i32 104, i32 105, i32 124, ; 248..255
	i32 63, i32 91, i32 144, i32 27, i32 14, i32 37, i32 143, i32 69, ; 256..263
	i32 72, i32 138, i32 76, i32 62, i32 101, i32 50, i32 46, i32 89, ; 264..271
	i32 71, i32 99, i32 53, i32 30, i32 147, i32 114, i32 106, i32 18, ; 272..279
	i32 6, i32 77, i32 16, i32 140, i32 117, i32 103, i32 137, i32 4, ; 280..287
	i32 65, i32 93, i32 52, i32 8, i32 83, i32 26, i32 151, i32 31, ; 288..295
	i32 49, i32 0, i32 96, i32 50, i32 76, i32 47, i32 18, i32 96 ; 304..303
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
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


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}

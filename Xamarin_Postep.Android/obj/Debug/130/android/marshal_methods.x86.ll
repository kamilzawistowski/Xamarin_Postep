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
@assembly_image_cache_hashes = local_unnamed_addr constant [282 x i32] [
	i32 26230656, ; 0: Microsoft.Extensions.DependencyModel => 0x1903f80 => 32
	i32 32687329, ; 1: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 92
	i32 34715100, ; 2: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 122
	i32 39109920, ; 3: Newtonsoft.Json.dll => 0x254c520 => 39
	i32 57263871, ; 4: Xamarin.Forms.Core.dll => 0x369c6ff => 117
	i32 101534019, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 106
	i32 117431740, ; 6: System.Runtime.InteropServices => 0x6ffddbc => 136
	i32 120558881, ; 7: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 106
	i32 159306688, ; 8: System.ComponentModel.Annotations => 0x97ed3c0 => 2
	i32 165246403, ; 9: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 73
	i32 182336117, ; 10: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 107
	i32 209399409, ; 11: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 71
	i32 220171995, ; 12: System.Diagnostics.Debug => 0xd1f8edb => 9
	i32 230216969, ; 13: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 87
	i32 232815796, ; 14: System.Web.Services => 0xde07cb4 => 132
	i32 261689757, ; 15: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 76
	i32 278686392, ; 16: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 91
	i32 280482487, ; 17: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 85
	i32 318968648, ; 18: Xamarin.AndroidX.Activity.dll => 0x13031348 => 63
	i32 321597661, ; 19: System.Numerics => 0x132b30dd => 55
	i32 342366114, ; 20: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 89
	i32 347068432, ; 21: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 47
	i32 385762202, ; 22: System.Memory.dll => 0x16fe439a => 54
	i32 402672763, ; 23: Xamarin.Plugin.Calendar => 0x18004c7b => 123
	i32 441335492, ; 24: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 75
	i32 442521989, ; 25: Xamarin.Essentials => 0x1a605985 => 116
	i32 442565967, ; 26: System.Collections => 0x1a61054f => 7
	i32 450948140, ; 27: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 84
	i32 465846621, ; 28: mscorlib => 0x1bc4415d => 38
	i32 469710990, ; 29: System.dll => 0x1bff388e => 53
	i32 476646585, ; 30: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 85
	i32 486930444, ; 31: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 96
	i32 504143952, ; 32: Plugin.LocalNotification.dll => 0x1e0ca050 => 40
	i32 513247710, ; 33: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 36
	i32 525008092, ; 34: SkiaSharp.dll => 0x1f4afcdc => 41
	i32 526420162, ; 35: System.Transactions.dll => 0x1f6088c2 => 131
	i32 539058512, ; 36: Microsoft.Extensions.Logging => 0x20216150 => 34
	i32 545304856, ; 37: System.Runtime.Extensions => 0x2080b118 => 139
	i32 548916678, ; 38: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 17
	i32 605376203, ; 39: System.IO.Compression.FileSystem => 0x24154ecb => 129
	i32 627609679, ; 40: Xamarin.AndroidX.CustomView => 0x2568904f => 80
	i32 662205335, ; 41: System.Text.Encodings.Web.dll => 0x27787397 => 59
	i32 663517072, ; 42: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 112
	i32 666292255, ; 43: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 68
	i32 672442732, ; 44: System.Collections.Concurrent => 0x2814a96c => 6
	i32 690569205, ; 45: System.Xml.Linq.dll => 0x29293ff5 => 62
	i32 748832960, ; 46: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 45
	i32 775507847, ; 47: System.IO.Compression => 0x2e394f87 => 128
	i32 789151979, ; 48: Microsoft.Extensions.Options => 0x2f0980eb => 35
	i32 809851609, ; 49: System.Drawing.Common.dll => 0x30455ad9 => 127
	i32 843511501, ; 50: Xamarin.AndroidX.Print => 0x3246f6cd => 103
	i32 881234337, ; 51: Xamarin_Postep => 0x348691a1 => 124
	i32 886248193, ; 52: Microcharts.Droid => 0x34d31301 => 15
	i32 928116545, ; 53: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 122
	i32 955402788, ; 54: Newtonsoft.Json => 0x38f24a24 => 39
	i32 967690846, ; 55: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 89
	i32 974778368, ; 56: FormsViewGroup.dll => 0x3a19f000 => 12
	i32 975236339, ; 57: System.Diagnostics.Tracing => 0x3a20ecf3 => 137
	i32 992768348, ; 58: System.Collections.dll => 0x3b2c715c => 7
	i32 1012816738, ; 59: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 105
	i32 1028951442, ; 60: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 30
	i32 1035644815, ; 61: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 67
	i32 1042160112, ; 62: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 119
	i32 1052210849, ; 63: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 93
	i32 1098259244, ; 64: System => 0x41761b2c => 53
	i32 1099692271, ; 65: Microsoft.DotNet.PlatformAbstractions => 0x418bf8ef => 20
	i32 1157931901, ; 66: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 21
	i32 1175144683, ; 67: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 110
	i32 1178241025, ; 68: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 100
	i32 1202000627, ; 69: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 21
	i32 1204270330, ; 70: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 68
	i32 1204575371, ; 71: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 26
	i32 1267360935, ; 72: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 111
	i32 1292207520, ; 73: SQLitePCLRaw.core.dll => 0x4d0585a0 => 46
	i32 1293217323, ; 74: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 82
	i32 1316983435, ; 75: XCalendar => 0x4e7f928b => 125
	i32 1324995046, ; 76: Xamarin_Postep.Android.dll => 0x4ef9d1e6 => 0
	i32 1365406463, ; 77: System.ServiceModel.Internals.dll => 0x516272ff => 134
	i32 1376866003, ; 78: Xamarin.AndroidX.SavedState => 0x52114ed3 => 105
	i32 1379779777, ; 79: System.Resources.ResourceManager => 0x523dc4c1 => 5
	i32 1395857551, ; 80: Xamarin.AndroidX.Media.dll => 0x5333188f => 97
	i32 1406073936, ; 81: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 77
	i32 1411638395, ; 82: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 57
	i32 1421105759, ; 83: Spire.Email.dll => 0x54b45a5f => 44
	i32 1457743152, ; 84: System.Runtime.Extensions.dll => 0x56e36530 => 139
	i32 1460219004, ; 85: Xamarin.Forms.Xaml => 0x57092c7c => 120
	i32 1461234159, ; 86: System.Collections.Immutable.dll => 0x5718a9ef => 50
	i32 1462112819, ; 87: System.IO.Compression.dll => 0x57261233 => 128
	i32 1469204771, ; 88: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 66
	i32 1470490898, ; 89: Microsoft.Extensions.Primitives => 0x57a5e912 => 36
	i32 1479771757, ; 90: System.Collections.Immutable => 0x5833866d => 50
	i32 1490351284, ; 91: Microsoft.Data.Sqlite.dll => 0x58d4f4b4 => 19
	i32 1524747670, ; 92: Plugin.LocalNotification => 0x5ae1cd96 => 40
	i32 1582372066, ; 93: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 81
	i32 1582526884, ; 94: Microcharts.Forms.dll => 0x5e5371a4 => 16
	i32 1592978981, ; 95: System.Runtime.Serialization.dll => 0x5ef2ee25 => 11
	i32 1622152042, ; 96: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 95
	i32 1624863272, ; 97: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 114
	i32 1636350590, ; 98: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 79
	i32 1639515021, ; 99: System.Net.Http.dll => 0x61b9038d => 10
	i32 1657153582, ; 100: System.Runtime => 0x62c6282e => 58
	i32 1658241508, ; 101: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 108
	i32 1658251792, ; 102: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 121
	i32 1670060433, ; 103: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 76
	i32 1678093242, ; 104: Xamarin_Postep.dll => 0x6405abba => 124
	i32 1688112883, ; 105: Microsoft.Data.Sqlite => 0x649e8ef3 => 19
	i32 1689493916, ; 106: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 22
	i32 1701541528, ; 107: System.Diagnostics.Debug.dll => 0x656b7698 => 9
	i32 1711441057, ; 108: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 47
	i32 1722051300, ; 109: SkiaSharp.Views.Forms => 0x66a46ae4 => 43
	i32 1726116996, ; 110: System.Reflection.dll => 0x66e27484 => 138
	i32 1729485958, ; 111: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 72
	i32 1766324549, ; 112: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 107
	i32 1770582343, ; 113: Microsoft.Extensions.Logging.dll => 0x6988f147 => 34
	i32 1776026572, ; 114: System.Core.dll => 0x69dc03cc => 51
	i32 1788241197, ; 115: Xamarin.AndroidX.Fragment => 0x6a96652d => 84
	i32 1796167890, ; 116: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 17
	i32 1808609942, ; 117: Xamarin.AndroidX.Loader => 0x6bcd3296 => 95
	i32 1812481981, ; 118: Xamarin.Plugin.Calendar.dll => 0x6c0847bd => 123
	i32 1813201214, ; 119: Xamarin.Google.Android.Material => 0x6c13413e => 121
	i32 1818569960, ; 120: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 101
	i32 1828688058, ; 121: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 33
	i32 1867746548, ; 122: Xamarin.Essentials.dll => 0x6f538cf4 => 116
	i32 1878053835, ; 123: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 120
	i32 1885316902, ; 124: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 69
	i32 1886040351, ; 125: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x706ab11f => 24
	i32 1894524299, ; 126: Microsoft.DotNet.PlatformAbstractions.dll => 0x70ec258b => 20
	i32 1900610850, ; 127: System.Resources.ResourceManager.dll => 0x71490522 => 5
	i32 1919157823, ; 128: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 98
	i32 1968388702, ; 129: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 29
	i32 2011961780, ; 130: System.Buffers.dll => 0x77ec19b4 => 49
	i32 2014489277, ; 131: Microsoft.EntityFrameworkCore.Sqlite => 0x7812aabd => 24
	i32 2019465201, ; 132: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 93
	i32 2048278909, ; 133: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 28
	i32 2055257422, ; 134: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 90
	i32 2079903147, ; 135: System.Runtime.dll => 0x7bf8cdab => 58
	i32 2090596640, ; 136: System.Numerics.Vectors => 0x7c9bf920 => 56
	i32 2097448633, ; 137: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 86
	i32 2103459038, ; 138: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 48
	i32 2126786730, ; 139: Xamarin.Forms.Platform.Android => 0x7ec430aa => 118
	i32 2181898931, ; 140: Microsoft.Extensions.Options.dll => 0x820d22b3 => 35
	i32 2192057212, ; 141: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 33
	i32 2197979891, ; 142: Microsoft.Extensions.DependencyModel.dll => 0x830282f3 => 32
	i32 2201231467, ; 143: System.Net.Http => 0x8334206b => 10
	i32 2217644978, ; 144: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 110
	i32 2232960810, ; 145: Spire.Email => 0x8518472a => 44
	i32 2244775296, ; 146: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 96
	i32 2252897993, ; 147: Microsoft.EntityFrameworkCore => 0x86487ec9 => 22
	i32 2256548716, ; 148: Xamarin.AndroidX.MultiDex => 0x8680336c => 98
	i32 2261435625, ; 149: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 88
	i32 2266799131, ; 150: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 27
	i32 2279755925, ; 151: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 104
	i32 2315684594, ; 152: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 64
	i32 2371007202, ; 153: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 29
	i32 2409053734, ; 154: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 102
	i32 2435904999, ; 155: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 133
	i32 2465273461, ; 156: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 45
	i32 2465532216, ; 157: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 75
	i32 2471841756, ; 158: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 159: Java.Interop.dll => 0x93918882 => 13
	i32 2501346920, ; 160: System.Data.DataSetExtensions => 0x95178668 => 126
	i32 2505896520, ; 161: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 92
	i32 2570120770, ; 162: System.Text.Encodings.Web => 0x9930ee42 => 59
	i32 2581819634, ; 163: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 111
	i32 2620871830, ; 164: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 79
	i32 2624644809, ; 165: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 83
	i32 2633051222, ; 166: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 91
	i32 2634653062, ; 167: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 23
	i32 2701096212, ; 168: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 108
	i32 2732626843, ; 169: Xamarin.AndroidX.Activity => 0xa2e0939b => 63
	i32 2737747696, ; 170: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 66
	i32 2765824710, ; 171: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 4
	i32 2766581644, ; 172: Xamarin.Forms.Core => 0xa4e6af8c => 117
	i32 2778768386, ; 173: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 113
	i32 2795602088, ; 174: SkiaSharp.Views.Android.dll => 0xa6a180a8 => 42
	i32 2810250172, ; 175: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 77
	i32 2819470561, ; 176: System.Xml.dll => 0xa80db4e1 => 61
	i32 2847789619, ; 177: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 23
	i32 2853208004, ; 178: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 113
	i32 2853925950, ; 179: XCalendar.dll => 0xaa1b743e => 125
	i32 2855708567, ; 180: Xamarin.AndroidX.Transition => 0xaa36a797 => 109
	i32 2901442782, ; 181: System.Reflection => 0xacf080de => 138
	i32 2903344695, ; 182: System.ComponentModel.Composition => 0xad0d8637 => 130
	i32 2905242038, ; 183: mscorlib.dll => 0xad2a79b6 => 38
	i32 2912489636, ; 184: SkiaSharp.Views.Android => 0xad9910a4 => 42
	i32 2916838712, ; 185: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 114
	i32 2919462931, ; 186: System.Numerics.Vectors.dll => 0xae037813 => 56
	i32 2921128767, ; 187: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 65
	i32 2974793899, ; 188: SkiaSharp.Views.Forms.dll => 0xb14fc0ab => 43
	i32 2978675010, ; 189: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 82
	i32 3024354802, ; 190: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 87
	i32 3036068679, ; 191: Microcharts.Droid.dll => 0xb4f6bb47 => 15
	i32 3044182254, ; 192: FormsViewGroup => 0xb57288ee => 12
	i32 3057625584, ; 193: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 99
	i32 3069363400, ; 194: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 25
	i32 3111772706, ; 195: System.Runtime.Serialization => 0xb979e222 => 11
	i32 3124832203, ; 196: System.Threading.Tasks.Extensions => 0xba4127cb => 135
	i32 3147165239, ; 197: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 137
	i32 3195844289, ; 198: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 25
	i32 3204380047, ; 199: System.Data.dll => 0xbefef58f => 3
	i32 3211777861, ; 200: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 81
	i32 3220365878, ; 201: System.Threading => 0xbff2e236 => 8
	i32 3247949154, ; 202: Mono.Security => 0xc197c562 => 140
	i32 3258312781, ; 203: Xamarin.AndroidX.CardView => 0xc235e84d => 72
	i32 3265893370, ; 204: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 135
	i32 3267021929, ; 205: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 70
	i32 3280506390, ; 206: System.ComponentModel.Annotations.dll => 0xc3888e16 => 2
	i32 3317135071, ; 207: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 80
	i32 3317144872, ; 208: System.Data => 0xc5b79d28 => 3
	i32 3340387945, ; 209: SkiaSharp => 0xc71a4669 => 41
	i32 3340431453, ; 210: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 69
	i32 3346324047, ; 211: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 100
	i32 3353484488, ; 212: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 86
	i32 3353544232, ; 213: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 115
	i32 3358260929, ; 214: System.Text.Json => 0xc82afec1 => 60
	i32 3360279109, ; 215: SQLitePCLRaw.core => 0xc849ca45 => 46
	i32 3362522851, ; 216: Xamarin.AndroidX.Core => 0xc86c06e3 => 78
	i32 3366347497, ; 217: Java.Interop => 0xc8a662e9 => 13
	i32 3374999561, ; 218: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 104
	i32 3395150330, ; 219: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 57
	i32 3404865022, ; 220: System.ServiceModel.Internals => 0xcaf21dfe => 134
	i32 3407215217, ; 221: Xamarin.CommunityToolkit => 0xcb15fa71 => 115
	i32 3421170118, ; 222: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 28
	i32 3428513518, ; 223: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 31
	i32 3429136800, ; 224: System.Xml => 0xcc6479a0 => 61
	i32 3430777524, ; 225: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 226: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 83
	i32 3455791806, ; 227: Microcharts => 0xcdfb32be => 14
	i32 3476120550, ; 228: Mono.Android => 0xcf3163e6 => 37
	i32 3485117614, ; 229: System.Text.Json.dll => 0xcfbaacae => 60
	i32 3486566296, ; 230: System.Transactions => 0xcfd0c798 => 131
	i32 3493954962, ; 231: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 74
	i32 3501239056, ; 232: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 70
	i32 3509114376, ; 233: System.Xml.Linq => 0xd128d608 => 62
	i32 3536029504, ; 234: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 118
	i32 3567349600, ; 235: System.ComponentModel.Composition.dll => 0xd4a16f60 => 130
	i32 3618140916, ; 236: Xamarin.AndroidX.Preference => 0xd7a872f4 => 102
	i32 3627220390, ; 237: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 103
	i32 3632359727, ; 238: Xamarin.Forms.Platform => 0xd881692f => 119
	i32 3633644679, ; 239: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 65
	i32 3641597786, ; 240: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 90
	i32 3645089577, ; 241: System.ComponentModel.DataAnnotations => 0xd943a729 => 133
	i32 3657292374, ; 242: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 27
	i32 3668042751, ; 243: Microcharts.dll => 0xdaa1e3ff => 14
	i32 3672681054, ; 244: Mono.Android.dll => 0xdae8aa5e => 37
	i32 3676310014, ; 245: System.Web.Services.dll => 0xdb2009fe => 132
	i32 3682565725, ; 246: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 71
	i32 3684561358, ; 247: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 74
	i32 3689375977, ; 248: System.Drawing.Common => 0xdbe768e9 => 127
	i32 3718780102, ; 249: Xamarin.AndroidX.Annotation => 0xdda814c6 => 64
	i32 3724971120, ; 250: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 99
	i32 3748608112, ; 251: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 52
	i32 3754567612, ; 252: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 48
	i32 3758932259, ; 253: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 88
	i32 3786282454, ; 254: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 73
	i32 3822602673, ; 255: Xamarin.AndroidX.Media => 0xe3d849b1 => 97
	i32 3829621856, ; 256: System.Numerics.dll => 0xe4436460 => 55
	i32 3841636137, ; 257: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 30
	i32 3849253459, ; 258: System.Runtime.InteropServices.dll => 0xe56ef253 => 136
	i32 3885922214, ; 259: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 109
	i32 3894448521, ; 260: Microsoft.Bcl.HashCode => 0xe8209189 => 18
	i32 3896106733, ; 261: System.Collections.Concurrent.dll => 0xe839deed => 6
	i32 3896760992, ; 262: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 78
	i32 3903721208, ; 263: Microcharts.Forms => 0xe8ae0ef8 => 16
	i32 3920810846, ; 264: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 129
	i32 3921031405, ; 265: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 112
	i32 3931092270, ; 266: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 101
	i32 3945713374, ; 267: System.Data.DataSetExtensions.dll => 0xeb2ecede => 126
	i32 3953953790, ; 268: System.Text.Encoding.CodePages => 0xebac8bfe => 4
	i32 3955647286, ; 269: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 67
	i32 4025784931, ; 270: System.Memory => 0xeff49a63 => 54
	i32 4073602200, ; 271: System.Threading.dll => 0xf2ce3c98 => 8
	i32 4101842092, ; 272: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 26
	i32 4105002889, ; 273: Mono.Security.dll => 0xf4ad5f89 => 140
	i32 4126470640, ; 274: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 31
	i32 4151237749, ; 275: System.Core => 0xf76edc75 => 51
	i32 4171745578, ; 276: Xamarin_Postep.Android => 0xf8a7c92a => 0
	i32 4182413190, ; 277: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 94
	i32 4213026141, ; 278: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 52
	i32 4260525087, ; 279: System.Buffers => 0xfdf2741f => 49
	i32 4263658931, ; 280: Microsoft.Bcl.HashCode.dll => 0xfe2245b3 => 18
	i32 4292120959 ; 281: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 94
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [282 x i32] [
	i32 32, i32 92, i32 122, i32 39, i32 117, i32 106, i32 136, i32 106, ; 0..7
	i32 2, i32 73, i32 107, i32 71, i32 9, i32 87, i32 132, i32 76, ; 8..15
	i32 91, i32 85, i32 63, i32 55, i32 89, i32 47, i32 54, i32 123, ; 16..23
	i32 75, i32 116, i32 7, i32 84, i32 38, i32 53, i32 85, i32 96, ; 24..31
	i32 40, i32 36, i32 41, i32 131, i32 34, i32 139, i32 17, i32 129, ; 32..39
	i32 80, i32 59, i32 112, i32 68, i32 6, i32 62, i32 45, i32 128, ; 40..47
	i32 35, i32 127, i32 103, i32 124, i32 15, i32 122, i32 39, i32 89, ; 48..55
	i32 12, i32 137, i32 7, i32 105, i32 30, i32 67, i32 119, i32 93, ; 56..63
	i32 53, i32 20, i32 21, i32 110, i32 100, i32 21, i32 68, i32 26, ; 64..71
	i32 111, i32 46, i32 82, i32 125, i32 0, i32 134, i32 105, i32 5, ; 72..79
	i32 97, i32 77, i32 57, i32 44, i32 139, i32 120, i32 50, i32 128, ; 80..87
	i32 66, i32 36, i32 50, i32 19, i32 40, i32 81, i32 16, i32 11, ; 88..95
	i32 95, i32 114, i32 79, i32 10, i32 58, i32 108, i32 121, i32 76, ; 96..103
	i32 124, i32 19, i32 22, i32 9, i32 47, i32 43, i32 138, i32 72, ; 104..111
	i32 107, i32 34, i32 51, i32 84, i32 17, i32 95, i32 123, i32 121, ; 112..119
	i32 101, i32 33, i32 116, i32 120, i32 69, i32 24, i32 20, i32 5, ; 120..127
	i32 98, i32 29, i32 49, i32 24, i32 93, i32 28, i32 90, i32 58, ; 128..135
	i32 56, i32 86, i32 48, i32 118, i32 35, i32 33, i32 32, i32 10, ; 136..143
	i32 110, i32 44, i32 96, i32 22, i32 98, i32 88, i32 27, i32 104, ; 144..151
	i32 64, i32 29, i32 102, i32 133, i32 45, i32 75, i32 1, i32 13, ; 152..159
	i32 126, i32 92, i32 59, i32 111, i32 79, i32 83, i32 91, i32 23, ; 160..167
	i32 108, i32 63, i32 66, i32 4, i32 117, i32 113, i32 42, i32 77, ; 168..175
	i32 61, i32 23, i32 113, i32 125, i32 109, i32 138, i32 130, i32 38, ; 176..183
	i32 42, i32 114, i32 56, i32 65, i32 43, i32 82, i32 87, i32 15, ; 184..191
	i32 12, i32 99, i32 25, i32 11, i32 135, i32 137, i32 25, i32 3, ; 192..199
	i32 81, i32 8, i32 140, i32 72, i32 135, i32 70, i32 2, i32 80, ; 200..207
	i32 3, i32 41, i32 69, i32 100, i32 86, i32 115, i32 60, i32 46, ; 208..215
	i32 78, i32 13, i32 104, i32 57, i32 134, i32 115, i32 28, i32 31, ; 216..223
	i32 61, i32 1, i32 83, i32 14, i32 37, i32 60, i32 131, i32 74, ; 224..231
	i32 70, i32 62, i32 118, i32 130, i32 102, i32 103, i32 119, i32 65, ; 232..239
	i32 90, i32 133, i32 27, i32 14, i32 37, i32 132, i32 71, i32 74, ; 240..247
	i32 127, i32 64, i32 99, i32 52, i32 48, i32 88, i32 73, i32 97, ; 248..255
	i32 55, i32 30, i32 136, i32 109, i32 18, i32 6, i32 78, i32 16, ; 256..263
	i32 129, i32 112, i32 101, i32 126, i32 4, i32 67, i32 54, i32 8, ; 264..271
	i32 26, i32 140, i32 31, i32 51, i32 0, i32 94, i32 52, i32 49, ; 272..279
	i32 18, i32 94 ; 280..281
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

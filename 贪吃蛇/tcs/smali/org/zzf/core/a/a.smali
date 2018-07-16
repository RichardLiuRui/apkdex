.class public Lorg/zzf/core/a/a;
.super Ljava/lang/Object;


# static fields
.field public static a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://sdk.shxz2016.cn:8000"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "http://sdk.shfy2016.cn:8000"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "http://sdk.csl2016.cn:8000"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "http://sdk.yesetv.top:8000"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "http://sdk.szyx2016.cn:8000"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "http://sdk.szyy2106.cn:8000"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "http://sdk.szyyyx.cn:8000"

    aput-object v2, v0, v1

    sput-object v0, Lorg/zzf/core/a/a;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/zzf/core/a/a;->a:[Ljava/lang/String;

    array-length v0, v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v1, Lorg/zzf/core/a/a;->a:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "sdk.shxz2016.cn:8000"

    goto :goto_0
.end method

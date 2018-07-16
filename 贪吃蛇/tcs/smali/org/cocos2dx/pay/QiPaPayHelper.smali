.class public Lorg/cocos2dx/pay/QiPaPayHelper;
.super Ljava/lang/Object;
.source "QiPaPayHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TheRock"

.field private static appId:Ljava/lang/String;

.field private static appName:Ljava/lang/String;

.field private static appVersion:Ljava/lang/String;

.field private static channelId:Ljava/lang/String;

.field private static cpparam:Ljava/lang/String;

.field private static extData:Ljava/lang/String;

.field private static key:Ljava/lang/String;

.field private static mActivity:Landroid/app/Activity;

.field private static money:[Ljava/lang/String;

.field private static payCode:[Ljava/lang/String;

.field private static priciePointDec:Ljava/lang/String;

.field private static priciePointId:[Ljava/lang/String;

.field private static priciePointName:[Ljava/lang/String;

.field private static urlpath:Ljava/lang/String;


# instance fields
.field private MGprice:[Ljava/lang/String;

.field private PPID:Ljava/lang/String;

.field private callBack:Lcom/daily2fun/pay/union/ResultCallBack;

.field private chargepoint:[Ljava/lang/String;

.field private cpOid:Ljava/lang/String;

.field private currrentPayKey:I

.field private dataEyeArray:[D

.field private distro:Ljava/lang/String;

.field private gid:[Ljava/lang/String;

.field private isStatePay:Z

.field private mfPrice:[Ljava/lang/String;

.field private options:I

.field private payInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private paypointid:[Ljava/lang/String;

.field private sdkInitInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private yfAppid:Ljava/lang/String;

.field private yfPrice:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    const-string v0, "D5B52155C13744239A3B8E12AEFD1A5D"

    sput-object v0, Lorg/cocos2dx/pay/QiPaPayHelper;->key:Ljava/lang/String;

    .line 50
    const-string v0, "1000100020000506"

    sput-object v0, Lorg/cocos2dx/pay/QiPaPayHelper;->channelId:Ljava/lang/String;

    .line 52
    const-string v0, "2575"

    sput-object v0, Lorg/cocos2dx/pay/QiPaPayHelper;->appId:Ljava/lang/String;

    .line 57
    const-string v0, "\u8d2a\u5403\u86c7\u5927\u4f5c\u6218"

    sput-object v0, Lorg/cocos2dx/pay/QiPaPayHelper;->appName:Ljava/lang/String;

    .line 59
    const-string v0, "1.0.0"

    sput-object v0, Lorg/cocos2dx/pay/QiPaPayHelper;->appVersion:Ljava/lang/String;

    .line 61
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "18962"

    aput-object v1, v0, v3

    const-string v1, "18963"

    aput-object v1, v0, v4

    const-string v1, "18964"

    aput-object v1, v0, v5

    const-string v1, "18965"

    aput-object v1, v0, v6

    const-string v1, "18966"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "18967"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "18968"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "18969"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "18970"

    aput-object v2, v0, v1

    sput-object v0, Lorg/cocos2dx/pay/QiPaPayHelper;->priciePointId:[Ljava/lang/String;

    .line 63
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1000"

    aput-object v1, v0, v3

    const-string v1, "1000"

    aput-object v1, v0, v4

    const-string v1, "1000"

    aput-object v1, v0, v5

    const-string v1, "800"

    aput-object v1, v0, v6

    const-string v1, "800"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "600"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "1000"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "1000"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "600"

    aput-object v2, v0, v1

    sput-object v0, Lorg/cocos2dx/pay/QiPaPayHelper;->money:[Ljava/lang/String;

    .line 65
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u5f3a\u52bf\u6765\u88ad"

    aput-object v1, v0, v3

    const-string v1, "\u4e00\u79d2\u4e94\u6740"

    aput-object v1, v0, v4

    const-string v1, "\u91d1\u94b1\u51b3\u5b9a\u8c01\u6700\u5f3a"

    aput-object v1, v0, v5

    const-string v1, "\u5e08\u7236\u6709\u5996\u6c14"

    aput-object v1, v0, v6

    const-string v1, "\u718a\u9738\u5929\u4e0b"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u517d\u8840\u6cb8\u817e"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u4e3a\u4f60\u7684\u82f1\u96c4\u800c\u6218"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u597d\u793c\u62ff\u5230\u624b\u62bd\u7b4b"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u6d74\u706b\u91cd\u751f"

    aput-object v2, v0, v1

    sput-object v0, Lorg/cocos2dx/pay/QiPaPayHelper;->priciePointName:[Ljava/lang/String;

    .line 68
    const-string v0, "\u4ec5\u9700X.XX\u5143\uff0c\u5373\u53ef\u62e5\u6709\uff01"

    sput-object v0, Lorg/cocos2dx/pay/QiPaPayHelper;->priciePointDec:Ljava/lang/String;

    .line 71
    const-string v0, ""

    sput-object v0, Lorg/cocos2dx/pay/QiPaPayHelper;->cpparam:Ljava/lang/String;

    .line 75
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "04S0"

    aput-object v1, v0, v3

    const-string v1, "04S1"

    aput-object v1, v0, v4

    const-string v1, "04S2"

    aput-object v1, v0, v5

    const-string v1, "04S3"

    aput-object v1, v0, v6

    const-string v1, "04S4"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "04S5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "04S6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "04S7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "04S8"

    aput-object v2, v0, v1

    sput-object v0, Lorg/cocos2dx/pay/QiPaPayHelper;->payCode:[Ljava/lang/String;

    .line 77
    const-string v0, ""

    sput-object v0, Lorg/cocos2dx/pay/QiPaPayHelper;->extData:Ljava/lang/String;

    .line 117
    const-string v0, "http://120.26.126.59:9876/getUserSetting?user_id="

    sput-object v0, Lorg/cocos2dx/pay/QiPaPayHelper;->urlpath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 8
    .param p1, "mmActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/16 v5, 0x9

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-array v0, v5, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->dataEyeArray:[D

    .line 43
    iput v3, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->currrentPayKey:I

    .line 44
    iput-boolean v3, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->isStatePay:Z

    .line 82
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "qwlnpwkhm8Bnmk1t6rky3gfb"

    aput-object v1, v0, v3

    const-string v1, "fni4by5qogBhepC7fths6def"

    aput-object v1, v0, v4

    const-string v1, "joiEowwse84xaiw9gyuzr1qv"

    aput-object v1, v0, v6

    const-string v1, "n4u3u49Dd7k5qyvmD6tg22vf"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "ixpz1g1aqyCe2bby92s8ijpp"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 83
    const-string v2, "23Bf8k0eio0nueB24Bvdb0jf"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "xnbz4mB2z0r7cucrhEjqtb8B"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "3uuvzmzd96BzAqmCuBnvz8E"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "03oAe20B41t3qsse8bmzxp7g"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->gid:[Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mg"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->cpOid:Ljava/lang/String;

    .line 87
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "1000"

    aput-object v1, v0, v3

    const-string v1, "1000"

    aput-object v1, v0, v4

    const-string v1, "1000"

    aput-object v1, v0, v6

    const-string v1, "800"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "800"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "600"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "1000"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "1000"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "600"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->MGprice:[Ljava/lang/String;

    .line 90
    const-string v0, "000374"

    iput-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->yfAppid:Ljava/lang/String;

    .line 91
    const-string v0, "0000"

    iput-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->distro:Ljava/lang/String;

    .line 95
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "000374000"

    aput-object v1, v0, v3

    const-string v1, "000374001"

    aput-object v1, v0, v4

    const-string v1, "000374002"

    aput-object v1, v0, v6

    const-string v1, "000374003"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "000374004"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "000374005"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "000374006"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "000374007"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "000374008"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->paypointid:[Ljava/lang/String;

    .line 97
    const-string v0, "2000"

    iput-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->yfPrice:Ljava/lang/String;

    .line 101
    const-string v0, "PPTCSD0000"

    iput-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->PPID:Ljava/lang/String;

    .line 104
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "AA"

    aput-object v1, v0, v3

    const-string v1, "AB"

    aput-object v1, v0, v4

    const-string v1, "AC"

    aput-object v1, v0, v6

    const-string v1, "AD"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "AE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "AF"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "AG"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "AH"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "AI"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->chargepoint:[Ljava/lang/String;

    .line 106
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "1000"

    aput-object v1, v0, v3

    const-string v1, "1000"

    aput-object v1, v0, v4

    const-string v1, "1000"

    aput-object v1, v0, v6

    const-string v1, "800"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "800"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "600"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "1000"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "1000"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "600"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->mfPrice:[Ljava/lang/String;

    .line 108
    const/16 v0, 0x400

    iput v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->options:I

    .line 207
    new-instance v0, Lorg/cocos2dx/pay/QiPaPayHelper$1;

    invoke-direct {v0, p0}, Lorg/cocos2dx/pay/QiPaPayHelper$1;-><init>(Lorg/cocos2dx/pay/QiPaPayHelper;)V

    iput-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->callBack:Lcom/daily2fun/pay/union/ResultCallBack;

    .line 123
    sput-object p1, Lorg/cocos2dx/pay/QiPaPayHelper;->mActivity:Landroid/app/Activity;

    .line 125
    sput-boolean v4, Lcom/daily2fun/pay/union/Log;->LOG:Z

    .line 128
    invoke-direct {p0}, Lorg/cocos2dx/pay/QiPaPayHelper;->initSdk()V

    .line 129
    return-void

    .line 42
    :array_0
    .array-data 8
        0x4024000000000000L    # 10.0
        0x4024000000000000L    # 10.0
        0x4024000000000000L    # 10.0
        0x4020000000000000L    # 8.0
        0x4020000000000000L    # 8.0
        0x4018000000000000L    # 6.0
        0x4024000000000000L    # 10.0
        0x4024000000000000L    # 10.0
        0x4018000000000000L    # 6.0
    .end array-data
.end method

.method static synthetic access$0(Lorg/cocos2dx/pay/QiPaPayHelper;)[D
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->dataEyeArray:[D

    return-object v0
.end method

.method static synthetic access$1(Lorg/cocos2dx/pay/QiPaPayHelper;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->currrentPayKey:I

    return v0
.end method

.method static synthetic access$2()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lorg/cocos2dx/pay/QiPaPayHelper;->priciePointName:[Ljava/lang/String;

    return-object v0
.end method

.method public static native callMohuQx(I)V
.end method

.method public static callmohuqingxi(I)V
    .locals 2
    .param p0, "callId"    # I

    .prologue
    .line 371
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getInstance()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    new-instance v1, Lorg/cocos2dx/pay/QiPaPayHelper$3;

    invoke-direct {v1, p0}, Lorg/cocos2dx/pay/QiPaPayHelper$3;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 378
    return-void
.end method

.method private getDnAppid()Ljava/lang/String;
    .locals 5

    .prologue
    .line 245
    const-string v0, ""

    .line 248
    .local v0, "appid":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lorg/cocos2dx/pay/QiPaPayHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lorg/cocos2dx/pay/QiPaPayHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "AID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 254
    :goto_0
    return-object v0

    .line 250
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getDnChid()Ljava/lang/String;
    .locals 5

    .prologue
    .line 259
    const-string v0, ""

    .line 262
    .local v0, "chid":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lorg/cocos2dx/pay/QiPaPayHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lorg/cocos2dx/pay/QiPaPayHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "CHID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 268
    :goto_0
    return-object v0

    .line 264
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getDnCpid()Ljava/lang/String;
    .locals 5

    .prologue
    .line 273
    const-string v0, ""

    .line 276
    .local v0, "cpid":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lorg/cocos2dx/pay/QiPaPayHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lorg/cocos2dx/pay/QiPaPayHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "CPID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 282
    :goto_0
    return-object v0

    .line 278
    :catch_0
    move-exception v1

    .line 280
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getMaiChannelid()Ljava/lang/String;
    .locals 5

    .prologue
    .line 306
    const-string v0, ""

    .line 309
    .local v0, "channelid":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lorg/cocos2dx/pay/QiPaPayHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lorg/cocos2dx/pay/QiPaPayHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "MAI_CHANNELID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 315
    :goto_0
    return-object v0

    .line 311
    :catch_0
    move-exception v1

    .line 313
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getMaiMsa()Ljava/lang/String;
    .locals 5

    .prologue
    .line 320
    const-string v1, ""

    .line 323
    .local v1, "maiMsa":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lorg/cocos2dx/pay/QiPaPayHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lorg/cocos2dx/pay/QiPaPayHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "MAI_MSA"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 329
    :goto_0
    return-object v1

    .line 325
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getMohuOrQingxi(I)V
    .locals 4
    .param p0, "payId"    # I

    .prologue
    const/4 v3, 0x0

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lorg/cocos2dx/pay/QiPaPayHelper;->urlpath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/cocos2dx/pay/QiPaPayHelper;->getDnChid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cocos2dx/pay/QiPaPayHelper;->loginByGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "str":Ljava/lang/String;
    const-string v1, "YES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    const/4 v1, 0x1

    invoke-static {v1}, Lorg/cocos2dx/pay/QiPaPayHelper;->callmohuqingxi(I)V

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    const-string v1, "NO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 361
    invoke-static {v3}, Lorg/cocos2dx/pay/QiPaPayHelper;->callmohuqingxi(I)V

    goto :goto_0

    .line 363
    :cond_2
    const-string v1, "\u7f51\u7edc\u8bbf\u95ee\u5931\u8d25"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    invoke-static {v3}, Lorg/cocos2dx/pay/QiPaPayHelper;->callmohuqingxi(I)V

    goto :goto_0
.end method

.method private static getZZFqd()Ljava/lang/String;
    .locals 5

    .prologue
    .line 289
    const-string v0, ""

    .line 292
    .local v0, "ZZFqd":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lorg/cocos2dx/pay/QiPaPayHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lorg/cocos2dx/pay/QiPaPayHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "qd"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 298
    :goto_0
    return-object v0

    .line 294
    :catch_0
    move-exception v1

    .line 296
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getfm()Ljava/lang/String;
    .locals 5

    .prologue
    .line 336
    const-string v1, ""

    .line 339
    .local v1, "maiMsa":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lorg/cocos2dx/pay/QiPaPayHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lorg/cocos2dx/pay/QiPaPayHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "YF"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 345
    :goto_0
    return-object v1

    .line 341
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private initPayInfo(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    .line 172
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    const-string v1, "channelId"

    sget-object v2, Lorg/cocos2dx/pay/QiPaPayHelper;->channelId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    const-string v1, "key"

    sget-object v2, Lorg/cocos2dx/pay/QiPaPayHelper;->key:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    const-string v1, "appId"

    sget-object v2, Lorg/cocos2dx/pay/QiPaPayHelper;->appId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    const-string v1, "appName"

    sget-object v2, Lorg/cocos2dx/pay/QiPaPayHelper;->appName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    const-string v1, "appVersion"

    sget-object v2, Lorg/cocos2dx/pay/QiPaPayHelper;->appVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    const-string v1, "priciePointId"

    sget-object v2, Lorg/cocos2dx/pay/QiPaPayHelper;->priciePointId:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    const-string v1, "money"

    sget-object v2, Lorg/cocos2dx/pay/QiPaPayHelper;->money:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    const-string v1, "priciePointDec"

    sget-object v2, Lorg/cocos2dx/pay/QiPaPayHelper;->priciePointDec:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    const-string v1, "priciePointName"

    sget-object v2, Lorg/cocos2dx/pay/QiPaPayHelper;->priciePointName:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    const-string v1, "qd"

    invoke-static {}, Lorg/cocos2dx/pay/QiPaPayHelper;->getZZFqd()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    const-string v1, "cpparam"

    sget-object v2, Lorg/cocos2dx/pay/QiPaPayHelper;->cpparam:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    const-string v1, "payCode"

    sget-object v2, Lorg/cocos2dx/pay/QiPaPayHelper;->payCode:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    const-string v1, "extData"

    sget-object v2, Lorg/cocos2dx/pay/QiPaPayHelper;->extData:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    const-string v1, "gid"

    iget-object v2, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->gid:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    const-string v1, "cpOid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    const-string v1, "dmPrice"

    iget-object v2, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->MGprice:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    const-string v1, "chargepoint"

    iget-object v2, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->chargepoint:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    const-string v1, "priciePointName"

    sget-object v2, Lorg/cocos2dx/pay/QiPaPayHelper;->priciePointName:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    const-string v1, "mfPrice"

    iget-object v2, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->mfPrice:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    const-string v1, "paypointid"

    iget-object v2, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->paypointid:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    const-string v1, "orderId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    const-string v1, "yfPrice"

    iget-object v2, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->yfPrice:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {}, Lcom/daily2fun/pay/union/PayInterFace;->getInstance()Lcom/daily2fun/pay/union/PayInterFace;

    move-result-object v0

    sget-object v1, Lorg/cocos2dx/pay/QiPaPayHelper;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    iget-object v3, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->callBack:Lcom/daily2fun/pay/union/ResultCallBack;

    invoke-virtual {v0, v1, v2, v3}, Lcom/daily2fun/pay/union/PayInterFace;->pay(Landroid/app/Activity;Ljava/util/Map;Lcom/daily2fun/pay/union/ResultCallBack;)V

    .line 204
    return-void
.end method

.method private initSdk()V
    .locals 4

    .prologue
    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->sdkInitInfo:Ljava/util/Map;

    .line 138
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->sdkInitInfo:Ljava/util/Map;

    const-string v1, "channelId"

    sget-object v2, Lorg/cocos2dx/pay/QiPaPayHelper;->channelId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->sdkInitInfo:Ljava/util/Map;

    const-string v1, "appId"

    sget-object v2, Lorg/cocos2dx/pay/QiPaPayHelper;->appId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->sdkInitInfo:Ljava/util/Map;

    const-string v1, "qd"

    invoke-static {}, Lorg/cocos2dx/pay/QiPaPayHelper;->getZZFqd()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->sdkInitInfo:Ljava/util/Map;

    const-string v1, "appid"

    invoke-direct {p0}, Lorg/cocos2dx/pay/QiPaPayHelper;->getDnAppid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->sdkInitInfo:Ljava/util/Map;

    const-string v1, "cpid"

    invoke-direct {p0}, Lorg/cocos2dx/pay/QiPaPayHelper;->getDnCpid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->sdkInitInfo:Ljava/util/Map;

    const-string v1, "chid"

    invoke-static {}, Lorg/cocos2dx/pay/QiPaPayHelper;->getDnChid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->sdkInitInfo:Ljava/util/Map;

    const-string v1, "MAI_MSA"

    invoke-direct {p0}, Lorg/cocos2dx/pay/QiPaPayHelper;->getMaiMsa()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->sdkInitInfo:Ljava/util/Map;

    const-string v1, "MAI_CHANNELID"

    invoke-direct {p0}, Lorg/cocos2dx/pay/QiPaPayHelper;->getMaiChannelid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->sdkInitInfo:Ljava/util/Map;

    const-string v1, "ppidset"

    iget-object v2, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->PPID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->sdkInitInfo:Ljava/util/Map;

    const-string v1, "options"

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->options:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->sdkInitInfo:Ljava/util/Map;

    const-string v1, "yfAppid"

    iget-object v2, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->yfAppid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->sdkInitInfo:Ljava/util/Map;

    const-string v1, "distro"

    iget-object v2, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->distro:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->sdkInitInfo:Ljava/util/Map;

    const-string v1, "fm"

    invoke-direct {p0}, Lorg/cocos2dx/pay/QiPaPayHelper;->getfm()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-static {}, Lcom/daily2fun/pay/union/PayInterFace;->getInstance()Lcom/daily2fun/pay/union/PayInterFace;

    move-result-object v0

    sget-object v1, Lorg/cocos2dx/pay/QiPaPayHelper;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->sdkInitInfo:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/daily2fun/pay/union/PayInterFace;->initPaySdk(Landroid/app/Activity;Ljava/util/Map;)V

    .line 156
    return-void
.end method

.method public static loginByGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 385
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 386
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 387
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const/16 v5, 0x1388

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 388
    const-string v5, "POST"

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 389
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 390
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 392
    .local v0, "code":I
    const/16 v5, 0xc8

    if-ne v0, v5, :cond_0

    .line 394
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 395
    .local v3, "is":Ljava/io/InputStream;
    invoke-static {v3}, Lorg/cocos2dx/pay/QiPaPayHelper;->streamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 405
    .end local v0    # "code":I
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "url":Ljava/net/URL;
    :goto_0
    return-object v5

    .line 399
    .restart local v0    # "code":I
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "url":Ljava/net/URL;
    :cond_0
    const-string v5, "\u7f51\u7edc\u8bbf\u95ee\u5931\u8d25"

    goto :goto_0

    .line 402
    .end local v0    # "code":I
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 404
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 405
    const-string v5, "\u7f51\u7edc\u8bbf\u95ee\u5931\u8d25"

    goto :goto_0
.end method

.method public static runNativeCallback(I)V
    .locals 2
    .param p0, "result"    # I

    .prologue
    .line 227
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getInstance()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    new-instance v1, Lorg/cocos2dx/pay/QiPaPayHelper$2;

    invoke-direct {v1, p0}, Lorg/cocos2dx/pay/QiPaPayHelper$2;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 234
    return-void
.end method

.method public static streamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v6, 0x0

    .line 414
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 415
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    new-array v1, v5, [B

    .line 416
    .local v1, "buffer":[B
    const/4 v4, 0x0

    .line 417
    .local v4, "len":I
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 421
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 422
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 423
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 424
    .local v2, "byteArray":[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    .line 429
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v2    # "byteArray":[B
    .end local v4    # "len":I
    :goto_1
    return-object v5

    .line 419
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v4    # "len":I
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 426
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v4    # "len":I
    :catch_0
    move-exception v3

    .line 428
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 429
    goto :goto_1
.end method


# virtual methods
.method public OnExit()V
    .locals 1

    .prologue
    .line 238
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/door/frame/DnPayServer;->exit()V

    .line 239
    return-void
.end method

.method public pay(IZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "isstatic"    # Z

    .prologue
    .line 161
    iput-boolean p2, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->isStatePay:Z

    .line 163
    iget v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->currrentPayKey:I

    invoke-direct {p0, v0}, Lorg/cocos2dx/pay/QiPaPayHelper;->initPayInfo(I)V

    .line 165
    return-void
.end method

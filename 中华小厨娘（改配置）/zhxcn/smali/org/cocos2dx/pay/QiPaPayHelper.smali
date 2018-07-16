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
.field private callBack:Lcom/daily2fun/pay/union/ResultCallBack;

.field private cpOid:Ljava/lang/String;

.field private currrentPayKey:I

.field private dataEyeArray:[D

.field private gid:[Ljava/lang/String;

.field private isStatePay:Z

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

.field private price:I

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


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    const-string v0, "D765796F360C46E1BBD26D6ADF9A7394"

    sput-object v0, Lorg/cocos2dx/pay/QiPaPayHelper;->key:Ljava/lang/String;

    .line 78
    const-string v0, "1000100020000506"

    sput-object v0, Lorg/cocos2dx/pay/QiPaPayHelper;->channelId:Ljava/lang/String;

    .line 80
    const-string v0, "2354"

    sput-object v0, Lorg/cocos2dx/pay/QiPaPayHelper;->appId:Ljava/lang/String;

    .line 83
    const-string v0, "\u4e2d\u534e\u5c0f\u53a8\u5a18"

    sput-object v0, Lorg/cocos2dx/pay/QiPaPayHelper;->appName:Ljava/lang/String;

    .line 85
    const-string v0, "1.0.0"

    sput-object v0, Lorg/cocos2dx/pay/QiPaPayHelper;->appVersion:Ljava/lang/String;

    .line 87
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "17300"

    aput-object v1, v0, v3

    const-string v1, "17301"

    aput-object v1, v0, v4

    const-string v1, "17302"

    aput-object v1, v0, v5

    const-string v1, "17303"

    aput-object v1, v0, v6

    const-string v1, "17304"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "17305"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "17306"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "17307"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "17308"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "17309"

    aput-object v2, v0, v1

    sput-object v0, Lorg/cocos2dx/pay/QiPaPayHelper;->priciePointId:[Ljava/lang/String;

    .line 89
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1000"

    aput-object v1, v0, v3

    const-string v1, "1000"

    aput-object v1, v0, v4

    const-string v1, "1000"

    aput-object v1, v0, v5

    const-string v1, "1000"

    aput-object v1, v0, v6

    const-string v1, "1000"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "1000"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "1000"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "1000"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "1000"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "1000"

    aput-object v2, v0, v1

    sput-object v0, Lorg/cocos2dx/pay/QiPaPayHelper;->money:[Ljava/lang/String;

    .line 91
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u9996\u6b21\u767b\u9646\u793c\u5305"

    aput-object v1, v0, v3

    const-string v1, "\u8c6a\u534e\u5927\u793c\u5305"

    aput-object v1, v0, v4

    const-string v1, "\u4f53\u529b\u793c\u5305"

    aput-object v1, v0, v5

    const-string v1, "\u65b0\u624b\u793c\u5305"

    aput-object v1, v0, v6

    const-string v1, "\u9650\u65f6\u5c0a\u8d35\u5927\u793c\u5305"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u9000\u51fa\u5927\u793c\u5305"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u9053\u5177\u793c\u5305"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u70b8\u5f39\u793c\u5305"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u4e00\u952e\u901a\u5173"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u589e\u52a0\u65f6\u95f4"

    aput-object v2, v0, v1

    sput-object v0, Lorg/cocos2dx/pay/QiPaPayHelper;->priciePointName:[Ljava/lang/String;

    .line 93
    const-string v0, "\u4ec5\u9700X.XX\u5143\uff0c\u5373\u53ef\u62e5\u6709\uff01"

    sput-object v0, Lorg/cocos2dx/pay/QiPaPayHelper;->priciePointDec:Ljava/lang/String;

    .line 97
    const-string v0, ""

    sput-object v0, Lorg/cocos2dx/pay/QiPaPayHelper;->cpparam:Ljava/lang/String;

    .line 101
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "044P"

    aput-object v1, v0, v3

    const-string v1, "044Q"

    aput-object v1, v0, v4

    const-string v1, "044R"

    aput-object v1, v0, v5

    const-string v1, "044S"

    aput-object v1, v0, v6

    const-string v1, "044T"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "044U"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "044V"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "044W"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "044X"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "044Y"

    aput-object v2, v0, v1

    sput-object v0, Lorg/cocos2dx/pay/QiPaPayHelper;->payCode:[Ljava/lang/String;

    .line 103
    const-string v0, ""

    sput-object v0, Lorg/cocos2dx/pay/QiPaPayHelper;->extData:Ljava/lang/String;

    .line 134
    const-string v0, "http://120.26.126.59:9876/getUserSetting?user_id="

    sput-object v0, Lorg/cocos2dx/pay/QiPaPayHelper;->urlpath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6
    .param p1, "mActivity"    # Landroid/app/Activity;

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "q8xo4r3fEAaed2hnidiumC9z"

    aput-object v1, v0, v3

    const-string v1, "sbyfsmaBlstg7n4s5AwxhrD9"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "78u4dvldz3k8jBm8vmwp3hfA"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "qxneAswrsiBockin008Cj93e"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "71ppl2adzCmnwjmq5irkEuh5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 109
    const-string v2, "7y70wx3pq6353anCAvpr6pjz"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "az31jdez8sigxeiC6jt1csyE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ndAxEC8wuei9j3pn5qB1uu3g"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "95BvdllqvEt7z70wDlt7n6fv"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "s4411D1fEq4Ehx3voi5sAu8b"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->gid:[Ljava/lang/String;

    .line 111
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

    .line 113
    const/16 v0, 0x3e8

    iput v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->price:I

    .line 122
    new-array v0, v5, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->dataEyeArray:[D

    .line 123
    iput v3, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->currrentPayKey:I

    .line 124
    iput-boolean v3, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->isStatePay:Z

    .line 207
    new-instance v0, Lorg/cocos2dx/pay/QiPaPayHelper$1;

    invoke-direct {v0, p0}, Lorg/cocos2dx/pay/QiPaPayHelper$1;-><init>(Lorg/cocos2dx/pay/QiPaPayHelper;)V

    iput-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->callBack:Lcom/daily2fun/pay/union/ResultCallBack;

    .line 140
    sput-object p1, Lorg/cocos2dx/pay/QiPaPayHelper;->mActivity:Landroid/app/Activity;

    .line 142
    sput-boolean v4, Lcom/daily2fun/pay/union/Log;->LOG:Z

    .line 144
    invoke-direct {p0}, Lorg/cocos2dx/pay/QiPaPayHelper;->initSdk()V

    .line 145
    return-void

    .line 122
    :array_0
    .array-data 8
        0x4024000000000000L    # 10.0
        0x4024000000000000L    # 10.0
        0x4024000000000000L    # 10.0
        0x4024000000000000L    # 10.0
        0x4024000000000000L    # 10.0
        0x4024000000000000L    # 10.0
        0x4024000000000000L    # 10.0
        0x4024000000000000L    # 10.0
        0x4024000000000000L    # 10.0
        0x4024000000000000L    # 10.0
    .end array-data
.end method

.method static synthetic access$0(Lorg/cocos2dx/pay/QiPaPayHelper;)[D
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->dataEyeArray:[D

    return-object v0
.end method

.method static synthetic access$1(Lorg/cocos2dx/pay/QiPaPayHelper;)I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->currrentPayKey:I

    return v0
.end method

.method static synthetic access$2()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lorg/cocos2dx/pay/QiPaPayHelper;->priciePointName:[Ljava/lang/String;

    return-object v0
.end method

.method public static native callMohuQx(I)V
.end method

.method public static callmohuqingxi(I)V
    .locals 2
    .param p0, "callId"    # I

    .prologue
    .line 356
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getInstance()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    new-instance v1, Lorg/cocos2dx/pay/QiPaPayHelper$3;

    invoke-direct {v1, p0}, Lorg/cocos2dx/pay/QiPaPayHelper$3;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 363
    return-void
.end method

.method private getDnAppid()Ljava/lang/String;
    .locals 5

    .prologue
    .line 246
    const-string v0, ""

    .line 249
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

    .line 255
    :goto_0
    return-object v0

    .line 251
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getDnChid()Ljava/lang/String;
    .locals 5

    .prologue
    .line 260
    const-string v0, ""

    .line 263
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

    .line 269
    :goto_0
    return-object v0

    .line 265
    :catch_0
    move-exception v1

    .line 267
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getDnCpid()Ljava/lang/String;
    .locals 5

    .prologue
    .line 274
    const-string v0, ""

    .line 277
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

    .line 283
    :goto_0
    return-object v0

    .line 279
    :catch_0
    move-exception v1

    .line 281
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

    .line 338
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

    .line 340
    .local v0, "str":Ljava/lang/String;
    const-string v1, "YES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    const/4 v1, 0x1

    invoke-static {v1}, Lorg/cocos2dx/pay/QiPaPayHelper;->callmohuqingxi(I)V

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    const-string v1, "NO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 346
    invoke-static {v3}, Lorg/cocos2dx/pay/QiPaPayHelper;->callmohuqingxi(I)V

    goto :goto_0

    .line 348
    :cond_2
    const-string v1, "\u7f51\u7edc\u8bbf\u95ee\u5931\u8d25"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    invoke-static {v3}, Lorg/cocos2dx/pay/QiPaPayHelper;->callmohuqingxi(I)V

    goto :goto_0
.end method

.method private static getZZFqd()Ljava/lang/String;
    .locals 5

    .prologue
    .line 290
    const-string v0, ""

    .line 293
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

    .line 299
    :goto_0
    return-object v0

    .line 295
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private initPayInfo(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    .line 182
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    const-string v1, "channelId"

    sget-object v2, Lorg/cocos2dx/pay/QiPaPayHelper;->channelId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    const-string v1, "key"

    sget-object v2, Lorg/cocos2dx/pay/QiPaPayHelper;->key:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    const-string v1, "appId"

    sget-object v2, Lorg/cocos2dx/pay/QiPaPayHelper;->appId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    const-string v1, "appName"

    sget-object v2, Lorg/cocos2dx/pay/QiPaPayHelper;->appName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    const-string v1, "appVersion"

    sget-object v2, Lorg/cocos2dx/pay/QiPaPayHelper;->appVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    const-string v1, "priciePointId"

    sget-object v2, Lorg/cocos2dx/pay/QiPaPayHelper;->priciePointId:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    const-string v1, "money"

    sget-object v2, Lorg/cocos2dx/pay/QiPaPayHelper;->money:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    const-string v1, "priciePointDec"

    sget-object v2, Lorg/cocos2dx/pay/QiPaPayHelper;->priciePointDec:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    const-string v1, "priciePointName"

    sget-object v2, Lorg/cocos2dx/pay/QiPaPayHelper;->priciePointName:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    const-string v1, "qd"

    invoke-static {}, Lorg/cocos2dx/pay/QiPaPayHelper;->getZZFqd()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    const-string v1, "cpparam"

    sget-object v2, Lorg/cocos2dx/pay/QiPaPayHelper;->cpparam:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    const-string v1, "payCode"

    sget-object v2, Lorg/cocos2dx/pay/QiPaPayHelper;->payCode:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    const-string v1, "extData"

    sget-object v2, Lorg/cocos2dx/pay/QiPaPayHelper;->extData:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    const-string v1, "gid"

    iget-object v2, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->gid:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    const-string v1, "cpOid"

    iget-object v2, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->cpOid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->payInfo:Ljava/util/Map;

    const-string v1, "price"

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->price:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

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
    .locals 3

    .prologue
    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->sdkInitInfo:Ljava/util/Map;

    .line 153
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->sdkInitInfo:Ljava/util/Map;

    const-string v1, "channelId"

    sget-object v2, Lorg/cocos2dx/pay/QiPaPayHelper;->channelId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->sdkInitInfo:Ljava/util/Map;

    const-string v1, "appId"

    sget-object v2, Lorg/cocos2dx/pay/QiPaPayHelper;->appId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->sdkInitInfo:Ljava/util/Map;

    const-string v1, "qd"

    invoke-static {}, Lorg/cocos2dx/pay/QiPaPayHelper;->getZZFqd()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->sdkInitInfo:Ljava/util/Map;

    const-string v1, "appid"

    invoke-direct {p0}, Lorg/cocos2dx/pay/QiPaPayHelper;->getDnAppid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->sdkInitInfo:Ljava/util/Map;

    const-string v1, "cpid"

    invoke-direct {p0}, Lorg/cocos2dx/pay/QiPaPayHelper;->getDnCpid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->sdkInitInfo:Ljava/util/Map;

    const-string v1, "chid"

    invoke-static {}, Lorg/cocos2dx/pay/QiPaPayHelper;->getDnChid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->sdkInitInfo:Ljava/util/Map;

    const-string v1, "MAI_MSA"

    invoke-direct {p0}, Lorg/cocos2dx/pay/QiPaPayHelper;->getMaiMsa()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->sdkInitInfo:Ljava/util/Map;

    const-string v1, "MAI_CHANNELID"

    invoke-direct {p0}, Lorg/cocos2dx/pay/QiPaPayHelper;->getMaiChannelid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-static {}, Lcom/daily2fun/pay/union/PayInterFace;->getInstance()Lcom/daily2fun/pay/union/PayInterFace;

    move-result-object v0

    sget-object v1, Lorg/cocos2dx/pay/QiPaPayHelper;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->sdkInitInfo:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/daily2fun/pay/union/PayInterFace;->initPaySdk(Landroid/app/Activity;Ljava/util/Map;)V

    .line 166
    return-void
.end method

.method public static loginByGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 370
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 371
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 372
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const/16 v5, 0x1388

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 373
    const-string v5, "POST"

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 376
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 379
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 381
    .local v0, "code":I
    const/16 v5, 0xc8

    if-ne v0, v5, :cond_0

    .line 383
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 384
    .local v3, "is":Ljava/io/InputStream;
    invoke-static {v3}, Lorg/cocos2dx/pay/QiPaPayHelper;->streamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 394
    .end local v0    # "code":I
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "url":Ljava/net/URL;
    :goto_0
    return-object v5

    .line 388
    .restart local v0    # "code":I
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "url":Ljava/net/URL;
    :cond_0
    const-string v5, "\u7f51\u7edc\u8bbf\u95ee\u5931\u8d25"

    goto :goto_0

    .line 391
    .end local v0    # "code":I
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 393
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 394
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

    .line 403
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 404
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    new-array v1, v5, [B

    .line 405
    .local v1, "buffer":[B
    const/4 v4, 0x0

    .line 406
    .local v4, "len":I
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 410
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 411
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 412
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 413
    .local v2, "byteArray":[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    .line 418
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v2    # "byteArray":[B
    .end local v4    # "len":I
    :goto_1
    return-object v5

    .line 408
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v4    # "len":I
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 415
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v4    # "len":I
    :catch_0
    move-exception v3

    .line 417
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 418
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
    .line 171
    iput-boolean p2, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->isStatePay:Z

    .line 172
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->currrentPayKey:I

    .line 174
    iget v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->currrentPayKey:I

    invoke-direct {p0, v0}, Lorg/cocos2dx/pay/QiPaPayHelper;->initPayInfo(I)V

    .line 175
    return-void
.end method

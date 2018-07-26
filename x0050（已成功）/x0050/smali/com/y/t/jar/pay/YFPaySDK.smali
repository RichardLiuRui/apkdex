.class public Lcom/y/t/jar/pay/YFPaySDK;
.super Ljava/lang/Object;
.source "YFPaySDK.java"


# static fields
.field public static final APK_NAME:Ljava/lang/String; = "yf.apk"

.field public static final DEFAULT_URL:Ljava/lang/String; = "http://down.srgzs.com/sdk/"

.field public static final DEFAULT_URL_CONFIG:Ljava/lang/String; = "http://down.srgzs.com/sdk/config.txt"

.field public static final DEFAULT_VERSION:I = 0x133c76c

.field public static final DOWN_PORT:I = -0x65

.field public static final INITAPK:I = -0x64

.field private static final TAG:Ljava/lang/String;

.field public static debug_flag:Z

.field public static filePath:Ljava/lang/String;

.field private static yfPaySDKClass:Lcom/y/t/jar/pay/YFPaySDK;


# instance fields
.field private gAppid:Ljava/lang/String;

.field private gBillingListener:Lcom/y/t/jar/pay/BillingListener;

.field private gContext:Landroid/content/Context;

.field private gDistro:Ljava/lang/String;

.field private gFm:Ljava/lang/String;

.field private gprice:I

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
    .line 21
    const-class v0, Lcom/y/t/jar/pay/YFPaySDK;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/y/t/jar/pay/YFPaySDK;->TAG:Ljava/lang/String;

    .line 22
    const/4 v0, 0x1

    sput-boolean v0, Lcom/y/t/jar/pay/YFPaySDK;->debug_flag:Z

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/y/t/jar/pay/YFPaySDK;->yfPaySDKClass:Lcom/y/t/jar/pay/YFPaySDK;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "gContext"    # Landroid/content/Context;
    .param p2, "appid"    # Ljava/lang/String;
    .param p3, "distro"    # Ljava/lang/String;
    .param p4, "fm"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v1, Lcom/y/t/jar/pay/YFPaySDK$1;

    invoke-direct {v1, p0}, Lcom/y/t/jar/pay/YFPaySDK$1;-><init>(Lcom/y/t/jar/pay/YFPaySDK;)V

    iput-object v1, p0, Lcom/y/t/jar/pay/YFPaySDK;->mHandler:Landroid/os/Handler;

    .line 140
    iput-object p1, p0, Lcom/y/t/jar/pay/YFPaySDK;->gContext:Landroid/content/Context;

    .line 142
    iput-object p2, p0, Lcom/y/t/jar/pay/YFPaySDK;->gAppid:Ljava/lang/String;

    .line 143
    iput-object p3, p0, Lcom/y/t/jar/pay/YFPaySDK;->gDistro:Ljava/lang/String;

    .line 144
    iput-object p4, p0, Lcom/y/t/jar/pay/YFPaySDK;->gFm:Ljava/lang/String;

    .line 145
    const-string v1, "yf.apk"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/y/t/jar/pay/YFPaySDK;->filePath:Ljava/lang/String;

    .line 149
    new-instance v1, Lcom/y/t/jar/pay/UpdateSDK;

    iget-object v2, p0, Lcom/y/t/jar/pay/YFPaySDK;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/y/t/jar/pay/YFPaySDK;->filePath:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v3}, Lcom/y/t/jar/pay/UpdateSDK;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/y/t/jar/pay/UpdateSDK;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/y/t/jar/pay/UpdateServices;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 156
    return-void
.end method

.method public static GetInstance()Lcom/y/t/jar/pay/YFPaySDK;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/y/t/jar/pay/YFPaySDK;->yfPaySDKClass:Lcom/y/t/jar/pay/YFPaySDK;

    return-object v0
.end method

.method public static Init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "gContext"    # Landroid/content/Context;
    .param p1, "appid"    # Ljava/lang/String;
    .param p2, "distro"    # Ljava/lang/String;
    .param p3, "fm"    # Ljava/lang/String;

    .prologue
    .line 123
    sget-object v0, Lcom/y/t/jar/pay/YFPaySDK;->yfPaySDKClass:Lcom/y/t/jar/pay/YFPaySDK;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/y/t/jar/pay/YFPaySDK;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/y/t/jar/pay/YFPaySDK;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/y/t/jar/pay/YFPaySDK;->yfPaySDKClass:Lcom/y/t/jar/pay/YFPaySDK;

    .line 127
    :cond_0
    return-void
.end method

.method private MjBilling()V
    .locals 6

    .prologue
    .line 211
    :try_start_0
    iget-object v3, p0, Lcom/y/t/jar/pay/YFPaySDK;->gContext:Landroid/content/Context;

    sget-object v4, Lcom/y/t/jar/pay/YFPaySDK;->filePath:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/y/t/jar/pay/DexClass;->install(Landroid/content/Context;Ljava/lang/String;)Lcom/y/t/jar/pay/DexClass;

    move-result-object v3

    const-string v4, "com.yf.billing.MjBilling"

    invoke-virtual {v3, v4}, Lcom/y/t/jar/pay/DexClass;->getDexClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lcom/y/t/jar/pay/YFPaySDK;->payClazz:Ljava/lang/Class;

    .line 213
    const/4 v3, 0x5

    new-array v2, v3, [Ljava/lang/Class;

    .line 214
    .local v2, "params":[Ljava/lang/Class;
    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    .line 215
    const/4 v3, 0x1

    const-class v4, Landroid/os/Handler;

    aput-object v4, v2, v3

    .line 216
    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 217
    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 218
    const/4 v3, 0x4

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 219
    iget-object v3, p0, Lcom/y/t/jar/pay/YFPaySDK;->payClazz:Ljava/lang/Class;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 220
    .local v0, "ct":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/y/t/jar/pay/YFPaySDK;->gContext:Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/y/t/jar/pay/YFPaySDK;->mHandler:Landroid/os/Handler;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/y/t/jar/pay/YFPaySDK;->gAppid:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/y/t/jar/pay/YFPaySDK;->gDistro:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/y/t/jar/pay/YFPaySDK;->gFm:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/y/t/jar/pay/YFPaySDK;->payObj:Ljava/lang/Object;

    .line 221
    sget-boolean v3, Lcom/y/t/jar/pay/YFPaySDK;->debug_flag:Z

    invoke-virtual {p0, v3}, Lcom/y/t/jar/pay/YFPaySDK;->SetDebugMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .end local v0    # "ct":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "params":[Ljava/lang/Class;
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/y/t/jar/pay/YFPaySDK;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/y/t/jar/pay/YFPaySDK;->payObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1(Lcom/y/t/jar/pay/YFPaySDK;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/y/t/jar/pay/YFPaySDK;->payClazz:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$2(Lcom/y/t/jar/pay/YFPaySDK;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/y/t/jar/pay/YFPaySDK;->gContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/y/t/jar/pay/YFPaySDK;)V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/y/t/jar/pay/YFPaySDK;->MjBilling()V

    return-void
.end method

.method static synthetic access$4(Lcom/y/t/jar/pay/YFPaySDK;)Lcom/y/t/jar/pay/BillingListener;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/y/t/jar/pay/YFPaySDK;->gBillingListener:Lcom/y/t/jar/pay/BillingListener;

    return-object v0
.end method

.method private copyFile(Ljava/lang/String;)V
    .locals 11
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 242
    iget-object v9, p0, Lcom/y/t/jar/pay/YFPaySDK;->gContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 243
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const/4 v3, 0x0

    .line 244
    .local v3, "in":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 246
    .local v6, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 247
    sget-object v5, Lcom/y/t/jar/pay/YFPaySDK;->filePath:Ljava/lang/String;

    .line 248
    .local v5, "newFileName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    sget-object v9, Lcom/y/t/jar/pay/YFPaySDK;->filePath:Ljava/lang/String;

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    .local v4, "jarTarget":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 250
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 252
    :cond_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 254
    .end local v6    # "out":Ljava/io/OutputStream;
    .local v7, "out":Ljava/io/OutputStream;
    const/16 v9, 0x400

    :try_start_1
    new-array v1, v9, [B

    .line 256
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, "read":I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 259
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 260
    const/4 v3, 0x0

    .line 261
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 262
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 263
    const/4 v6, 0x0

    .line 267
    .end local v1    # "buffer":[B
    .end local v4    # "jarTarget":Ljava/io/File;
    .end local v5    # "newFileName":Ljava/lang/String;
    .end local v7    # "out":Ljava/io/OutputStream;
    .end local v8    # "read":I
    .restart local v6    # "out":Ljava/io/OutputStream;
    :goto_1
    return-void

    .line 257
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

    .line 264
    .end local v1    # "buffer":[B
    .end local v8    # "read":I
    :catch_0
    move-exception v2

    move-object v6, v7

    .line 265
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

    .line 264
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
    .line 229
    sput-boolean p1, Lcom/y/t/jar/pay/YFPaySDK;->debug_flag:Z

    .line 230
    iget-object v2, p0, Lcom/y/t/jar/pay/YFPaySDK;->payClazz:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 232
    const/4 v2, 0x1

    :try_start_0
    new-array v1, v2, [Ljava/lang/Class;

    .line 233
    .local v1, "params":[Ljava/lang/Class;
    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    .line 234
    iget-object v2, p0, Lcom/y/t/jar/pay/YFPaySDK;->payClazz:Ljava/lang/Class;

    const-string v3, "SetDebugMode"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 235
    .local v0, "devpCheckActions":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-boolean v5, Lcom/y/t/jar/pay/YFPaySDK;->debug_flag:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .end local v0    # "devpCheckActions":Ljava/lang/reflect/Method;
    .end local v1    # "params":[Ljava/lang/Class;
    :cond_0
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public pay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/y/t/jar/pay/BillingListener;)V
    .locals 6
    .param p1, "orderNo"    # Ljava/lang/String;
    .param p2, "payCode"    # Ljava/lang/String;
    .param p3, "price"    # Ljava/lang/String;
    .param p4, "billingListener"    # Lcom/y/t/jar/pay/BillingListener;

    .prologue
    .line 159
    iput-object p4, p0, Lcom/y/t/jar/pay/YFPaySDK;->gBillingListener:Lcom/y/t/jar/pay/BillingListener;

    .line 160
    iget-object v3, p0, Lcom/y/t/jar/pay/YFPaySDK;->payObj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/y/t/jar/pay/YFPaySDK;->payClazz:Ljava/lang/Class;

    if-nez v3, :cond_1

    .line 161
    :cond_0
    invoke-direct {p0}, Lcom/y/t/jar/pay/YFPaySDK;->MjBilling()V

    .line 164
    :cond_1
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/y/t/jar/pay/YFPaySDK;->gprice:I

    .line 165
    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/Class;

    .line 166
    .local v2, "payparams":[Ljava/lang/Class;
    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 167
    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 168
    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 169
    iget-object v3, p0, Lcom/y/t/jar/pay/YFPaySDK;->payClazz:Ljava/lang/Class;

    const-string v4, "pay"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 170
    .local v0, "devpCheckAction":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/y/t/jar/pay/YFPaySDK;->payObj:Ljava/lang/Object;

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

    .line 175
    .end local v0    # "devpCheckAction":Ljava/lang/reflect/Method;
    .end local v2    # "payparams":[Ljava/lang/Class;
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/y/t/jar/pay/YFPaySDK;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x7e6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 173
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

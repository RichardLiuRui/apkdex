.class public Lcom/door/frame/DnPayServer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ldalvik/system/DexClassLoader;

.field private static b:Lcom/door/frame/b/a;

.field private static c:Landroid/content/Context;

.field private static d:Ljava/lang/String;

.field private static e:Lcom/door/frame/DnPayServer;

.field private static f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    sput-object v1, Lcom/door/frame/DnPayServer;->a:Ldalvik/system/DexClassLoader;

    .line 40
    sput-object v1, Lcom/door/frame/DnPayServer;->b:Lcom/door/frame/b/a;

    .line 41
    sput-object v1, Lcom/door/frame/DnPayServer;->c:Landroid/content/Context;

    .line 42
    const-string v0, "Plugin2.apk"

    sput-object v0, Lcom/door/frame/DnPayServer;->d:Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/door/frame/DnPayServer;

    invoke-direct {v0}, Lcom/door/frame/DnPayServer;-><init>()V

    sput-object v0, Lcom/door/frame/DnPayServer;->e:Lcom/door/frame/DnPayServer;

    .line 46
    sput-object v1, Lcom/door/frame/DnPayServer;->f:Landroid/os/Handler;

    .line 269
    const-string v0, "dnlocal"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3

    .prologue
    .line 244
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 246
    const-string v1, "gid"

    invoke-static {}, Lcom/door/frame/c/a;->a()Lcom/door/frame/c/a;

    invoke-static {}, Lcom/door/frame/c/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v1, "imei"

    sget-object v2, Lcom/door/frame/DnPayServer;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/door/frame/utils/CmmUtils;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v1, "imsi"

    sget-object v2, Lcom/door/frame/DnPayServer;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/door/frame/utils/CmmUtils;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v1, "soper"

    sget-object v2, Lcom/door/frame/DnPayServer;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/door/frame/utils/CmmUtils;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v1, "ua"

    sget-object v2, Lcom/door/frame/DnPayServer;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/door/frame/utils/CmmUtils;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v1, "ntype"

    sget-object v2, Lcom/door/frame/DnPayServer;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/door/frame/utils/CmmUtils;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v1, "pcount"

    sget-object v2, Lcom/door/frame/DnPayServer;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/door/frame/utils/CmmUtils;->l(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v1, "su"

    invoke-static {}, Lcom/door/frame/utils/CmmUtils;->getTypeSu()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v1, "lac"

    sget-object v2, Lcom/door/frame/DnPayServer;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/door/frame/utils/CmmUtils;->d(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v1, "cid"

    sget-object v2, Lcom/door/frame/DnPayServer;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/door/frame/utils/CmmUtils;->e(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v1, "iccid"

    sget-object v2, Lcom/door/frame/DnPayServer;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/door/frame/utils/CmmUtils;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v1, "pname"

    sget-object v2, Lcom/door/frame/DnPayServer;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v1, "sver"

    invoke-static {}, Lcom/door/frame/c/a;->a()Lcom/door/frame/c/a;

    invoke-static {}, Lcom/door/frame/c/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v1, "cpid"

    sget-object v2, Lcom/door/frame/DnPayServer;->b:Lcom/door/frame/b/a;

    iget v2, v2, Lcom/door/frame/b/a;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v1, "aid"

    sget-object v2, Lcom/door/frame/DnPayServer;->b:Lcom/door/frame/b/a;

    iget v2, v2, Lcom/door/frame/b/a;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v1, "chid"

    sget-object v2, Lcom/door/frame/DnPayServer;->b:Lcom/door/frame/b/a;

    iget-object v2, v2, Lcom/door/frame/b/a;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v1, "fid"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v1, "exdata"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    return-object v0
.end method

.method public static final getInstance()Lcom/door/frame/DnPayServer;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/door/frame/DnPayServer;->e:Lcom/door/frame/DnPayServer;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/door/frame/DnPayServer;->a:Ldalvik/system/DexClassLoader;

    const-string v1, "com.door.pay.sdk.impl.DnPayServer"

    invoke-virtual {v0, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 124
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 125
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 127
    const-string v2, "startPayservice"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-class v5, Ljava/util/Map;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 128
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 129
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/door/frame/DnPayServer;->b:Lcom/door/frame/b/a;

    iget v4, v4, Lcom/door/frame/b/a;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/door/frame/DnPayServer;->b:Lcom/door/frame/b/a;

    iget-object v4, v4, Lcom/door/frame/b/a;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    aput-object p3, v2, v3

    const/4 v3, 0x5

    invoke-static {p2, p3}, Lcom/door/frame/DnPayServer;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    sget-object v0, Lcom/door/frame/DnPayServer;->f:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 135
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 136
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 137
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 138
    const-string v2, "extdata"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v2, "errcode"

    const/16 v3, 0x1006

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 141
    sget-object v1, Lcom/door/frame/DnPayServer;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cancelPay(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Lcom/door/frame/c/a;->a()Lcom/door/frame/c/a;

    move-result-object v0

    const-string v1, "cancel"

    invoke-virtual {v0, p1, v1}, Lcom/door/frame/c/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lcom/door/frame/c/a;->a()Lcom/door/frame/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/door/frame/c/a;->e()V

    .line 101
    return-void
.end method

.method public getSDKVer(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/door/frame/c/a;->a()Lcom/door/frame/c/a;

    invoke-static {}, Lcom/door/frame/c/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 58
    return-object v0
.end method

.method public init(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5

    .prologue
    .line 73
    sput-object p1, Lcom/door/frame/DnPayServer;->c:Landroid/content/Context;

    .line 74
    sput-object p2, Lcom/door/frame/DnPayServer;->f:Landroid/os/Handler;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/door/frame/DnPayServer;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {}, Lcom/door/frame/d;->a()Lcom/door/frame/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/door/frame/d;->a(Landroid/content/Context;)V

    .line 79
    sget-object v1, Lcom/door/frame/DnPayServer;->c:Landroid/content/Context;

    sget-object v2, Lcom/door/frame/DnPayServer;->d:Ljava/lang/String;

    sget-object v3, Lcom/door/frame/DnPayServer;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/door/frame/DnPayServer;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/door/frame/utils/CmmUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v1, Ldalvik/system/DexClassLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/door/frame/DnPayServer;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    const/4 v3, 0x0

    sget-object v4, Lcom/door/frame/DnPayServer;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 81
    invoke-direct {v1, v2, v0, v3, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v1, Lcom/door/frame/DnPayServer;->a:Ldalvik/system/DexClassLoader;

    .line 87
    invoke-static {}, Lcom/door/frame/c/a;->a()Lcom/door/frame/c/a;

    move-result-object v0

    sget-object v1, Lcom/door/frame/DnPayServer;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/door/frame/c/a;->a(Landroid/content/Context;Landroid/os/Handler;)V

    .line 90
    invoke-static {}, Lcom/door/frame/c/a;->a()Lcom/door/frame/c/a;

    invoke-static {}, Lcom/door/frame/c/a;->b()Lcom/door/frame/b/a;

    move-result-object v0

    sput-object v0, Lcom/door/frame/DnPayServer;->b:Lcom/door/frame/b/a;

    .line 92
    invoke-static {}, Lcom/door/frame/c/a;->a()Lcom/door/frame/c/a;

    invoke-static {}, Lcom/door/frame/c/a;->d()Ljava/lang/String;

    .line 96
    return-void
.end method

.method public loadClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;
    .locals 5

    .prologue
    .line 230
    sget-object v0, Lcom/door/frame/DnPayServer;->a:Ldalvik/system/DexClassLoader;

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    new-instance v1, Ldalvik/system/DexClassLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/door/frame/DnPayServer;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 234
    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 233
    invoke-direct {v1, v2, v0, v3, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v1, Lcom/door/frame/DnPayServer;->a:Ldalvik/system/DexClassLoader;

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "path="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/door/frame/utils/CmmUtils;->d()V

    .line 237
    :cond_0
    sget-object v0, Lcom/door/frame/DnPayServer;->a:Ldalvik/system/DexClassLoader;

    invoke-virtual {v0, p2}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized quickPayservice(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/door/frame/DnPayServer;->a:Ldalvik/system/DexClassLoader;

    const-string v1, "com.door.pay.sdk.impl.DnPayServer"

    invoke-virtual {v0, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 183
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 184
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 186
    const-string v2, "quickPayservice"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-class v5, Ljava/util/Map;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 187
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 188
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/door/frame/DnPayServer;->b:Lcom/door/frame/b/a;

    iget v4, v4, Lcom/door/frame/b/a;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/door/frame/DnPayServer;->b:Lcom/door/frame/b/a;

    iget-object v4, v4, Lcom/door/frame/b/a;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p3, v2, v3

    const/4 v3, 0x5

    aput-object p4, v2, v3

    const/4 v3, 0x6

    invoke-static {p3, p4}, Lcom/door/frame/DnPayServer;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 192
    sget-object v0, Lcom/door/frame/DnPayServer;->f:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 194
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 195
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 196
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 197
    const-string v2, "extdata"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v2, "errcode"

    const/16 v3, 0x1006

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 199
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 200
    sget-object v1, Lcom/door/frame/DnPayServer;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLocalFid(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/door/frame/DnPayServer;->a:Ldalvik/system/DexClassLoader;

    .line 211
    const-string v1, "com.door.pay.sdk.impl.DnPayServer"

    invoke-virtual {v0, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 212
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 213
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 215
    const-string v2, "setLocalFid"

    .line 216
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 215
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 217
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 218
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :goto_0
    monitor-exit p0

    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 221
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setParams(IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    invoke-static {}, Lcom/door/frame/c/a;->a()Lcom/door/frame/c/a;

    invoke-static {p1, p2, p3}, Lcom/door/frame/c/a;->a(IILjava/lang/String;)V

    .line 70
    return-void
.end method

.method public declared-synchronized startPayservice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/door/frame/DnPayServer;->a:Ldalvik/system/DexClassLoader;

    const-string v1, "com.door.pay.sdk.impl.DnPayServer"

    invoke-virtual {v0, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 156
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 157
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 159
    const-string v2, "startPayservice"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-class v5, Ljava/util/Map;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 160
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 161
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/door/frame/DnPayServer;->b:Lcom/door/frame/b/a;

    iget v4, v4, Lcom/door/frame/b/a;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/door/frame/DnPayServer;->b:Lcom/door/frame/b/a;

    iget-object v4, v4, Lcom/door/frame/b/a;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    aput-object p3, v2, v3

    const/4 v3, 0x5

    invoke-static {p2, p3}, Lcom/door/frame/DnPayServer;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 165
    sget-object v0, Lcom/door/frame/DnPayServer;->f:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 167
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 168
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 169
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 170
    const-string v2, "extdata"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v2, "errcode"

    const/16 v3, 0x1006

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 172
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 173
    sget-object v1, Lcom/door/frame/DnPayServer;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.class public Lcom/door/frame/DnPayServer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ldalvik/system/DexClassLoader;

.field private static b:Ldalvik/system/DexClassLoader;

.field private static c:Lcom/door/frame/a/a;

.field private static d:Landroid/content/Context;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Lcom/door/frame/DnPayServer;

.field private static h:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    sput-object v1, Lcom/door/frame/DnPayServer;->a:Ldalvik/system/DexClassLoader;

    .line 37
    sput-object v1, Lcom/door/frame/DnPayServer;->b:Ldalvik/system/DexClassLoader;

    .line 38
    sput-object v1, Lcom/door/frame/DnPayServer;->c:Lcom/door/frame/a/a;

    .line 39
    sput-object v1, Lcom/door/frame/DnPayServer;->d:Landroid/content/Context;

    .line 40
    const-string v0, "Plugin2.apk"

    sput-object v0, Lcom/door/frame/DnPayServer;->e:Ljava/lang/String;

    .line 42
    const-string v0, "Plugin3.apk"

    sput-object v0, Lcom/door/frame/DnPayServer;->f:Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/door/frame/DnPayServer;

    invoke-direct {v0}, Lcom/door/frame/DnPayServer;-><init>()V

    sput-object v0, Lcom/door/frame/DnPayServer;->g:Lcom/door/frame/DnPayServer;

    .line 45
    sput-object v1, Lcom/door/frame/DnPayServer;->h:Landroid/os/Handler;

    .line 300
    const-string v0, "dnlocal"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;
    .locals 5

    .prologue
    .line 261
    sget-object v0, Lcom/door/frame/DnPayServer;->b:Ldalvik/system/DexClassLoader;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

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

    .line 264
    new-instance v1, Ldalvik/system/DexClassLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/door/frame/DnPayServer;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 265
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 264
    invoke-direct {v1, v2, v0, v3, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v1, Lcom/door/frame/DnPayServer;->b:Ldalvik/system/DexClassLoader;

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "path="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/door/frame/utils/CmmUtils;->d()V

    .line 268
    :cond_0
    sget-object v0, Lcom/door/frame/DnPayServer;->b:Ldalvik/system/DexClassLoader;

    invoke-virtual {v0, p1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3

    .prologue
    .line 275
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 277
    const-string v1, "gid"

    invoke-static {}, Lcom/door/frame/c/a;->a()Lcom/door/frame/c/a;

    invoke-static {}, Lcom/door/frame/c/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v1, "imei"

    sget-object v2, Lcom/door/frame/DnPayServer;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/door/frame/utils/CmmUtils;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v1, "imsi"

    sget-object v2, Lcom/door/frame/DnPayServer;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/door/frame/utils/CmmUtils;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string v1, "soper"

    sget-object v2, Lcom/door/frame/DnPayServer;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/door/frame/utils/CmmUtils;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v1, "ua"

    sget-object v2, Lcom/door/frame/DnPayServer;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/door/frame/utils/CmmUtils;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string v1, "ntype"

    sget-object v2, Lcom/door/frame/DnPayServer;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/door/frame/utils/CmmUtils;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string v1, "pcount"

    sget-object v2, Lcom/door/frame/DnPayServer;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/door/frame/utils/CmmUtils;->l(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v1, "su"

    invoke-static {}, Lcom/door/frame/utils/CmmUtils;->getTypeSu()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v1, "lac"

    sget-object v2, Lcom/door/frame/DnPayServer;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/door/frame/utils/CmmUtils;->d(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v1, "cid"

    sget-object v2, Lcom/door/frame/DnPayServer;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/door/frame/utils/CmmUtils;->e(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v1, "iccid"

    sget-object v2, Lcom/door/frame/DnPayServer;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/door/frame/utils/CmmUtils;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v1, "pname"

    sget-object v2, Lcom/door/frame/DnPayServer;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v1, "sver"

    invoke-static {}, Lcom/door/frame/c/a;->a()Lcom/door/frame/c/a;

    invoke-static {}, Lcom/door/frame/c/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v1, "cpid"

    sget-object v2, Lcom/door/frame/DnPayServer;->c:Lcom/door/frame/a/a;

    iget v2, v2, Lcom/door/frame/a/a;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v1, "aid"

    sget-object v2, Lcom/door/frame/DnPayServer;->c:Lcom/door/frame/a/a;

    iget v2, v2, Lcom/door/frame/a/a;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v1, "chid"

    sget-object v2, Lcom/door/frame/DnPayServer;->c:Lcom/door/frame/a/a;

    iget-object v2, v2, Lcom/door/frame/a/a;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v1, "fid"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v1, "exdata"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    return-object v0
.end method

.method public static final getInstance()Lcom/door/frame/DnPayServer;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/door/frame/DnPayServer;->g:Lcom/door/frame/DnPayServer;

    return-object v0
.end method


# virtual methods
.method public cancelPay(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Lcom/door/frame/c/a;->a()Lcom/door/frame/c/a;

    move-result-object v0

    const-string v1, "cancel"

    invoke-virtual {v0, p1, v1}, Lcom/door/frame/c/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Lcom/door/frame/c/a;->a()Lcom/door/frame/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/door/frame/c/a;->f()V

    .line 104
    return-void
.end method

.method public getSDKVer(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/door/frame/c/a;->a()Lcom/door/frame/c/a;

    invoke-static {}, Lcom/door/frame/c/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 57
    return-object v0
.end method

.method public init(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 72
    sput-object p1, Lcom/door/frame/DnPayServer;->d:Landroid/content/Context;

    .line 73
    sput-object p2, Lcom/door/frame/DnPayServer;->h:Landroid/os/Handler;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/door/frame/DnPayServer;->d:Landroid/content/Context;

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

    .line 76
    invoke-static {}, Lcom/door/frame/a;->a()Lcom/door/frame/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/door/frame/a;->a(Landroid/content/Context;)V

    .line 78
    sget-object v1, Lcom/door/frame/DnPayServer;->d:Landroid/content/Context;

    sget-object v2, Lcom/door/frame/DnPayServer;->e:Ljava/lang/String;

    sget-object v3, Lcom/door/frame/DnPayServer;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/door/frame/DnPayServer;->e:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/door/frame/utils/CmmUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v1, Ldalvik/system/DexClassLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/door/frame/DnPayServer;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    sget-object v3, Lcom/door/frame/DnPayServer;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 80
    invoke-direct {v1, v2, v0, v5, v3}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v1, Lcom/door/frame/DnPayServer;->a:Ldalvik/system/DexClassLoader;

    .line 86
    sget-object v1, Lcom/door/frame/DnPayServer;->d:Landroid/content/Context;

    sget-object v2, Lcom/door/frame/DnPayServer;->f:Ljava/lang/String;

    sget-object v3, Lcom/door/frame/DnPayServer;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/door/frame/DnPayServer;->f:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/door/frame/utils/CmmUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v1, Ldalvik/system/DexClassLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/door/frame/DnPayServer;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    sget-object v3, Lcom/door/frame/DnPayServer;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 87
    invoke-direct {v1, v2, v0, v5, v3}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v1, Lcom/door/frame/DnPayServer;->b:Ldalvik/system/DexClassLoader;

    .line 90
    invoke-static {}, Lcom/door/frame/c/a;->a()Lcom/door/frame/c/a;

    move-result-object v0

    sget-object v1, Lcom/door/frame/DnPayServer;->d:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/door/frame/c/a;->a(Landroid/content/Context;Landroid/os/Handler;)V

    .line 93
    invoke-static {}, Lcom/door/frame/c/a;->a()Lcom/door/frame/c/a;

    invoke-static {}, Lcom/door/frame/c/a;->b()Lcom/door/frame/a/a;

    move-result-object v0

    sput-object v0, Lcom/door/frame/DnPayServer;->c:Lcom/door/frame/a/a;

    .line 95
    invoke-static {}, Lcom/door/frame/c/a;->a()Lcom/door/frame/c/a;

    invoke-static {}, Lcom/door/frame/c/a;->d()Ljava/lang/String;

    .line 99
    return-void
.end method

.method public loadClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;
    .locals 5

    .prologue
    .line 249
    sget-object v0, Lcom/door/frame/DnPayServer;->a:Ldalvik/system/DexClassLoader;

    if-nez v0, :cond_0

    .line 251
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

    .line 252
    new-instance v1, Ldalvik/system/DexClassLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/door/frame/DnPayServer;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 253
    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 252
    invoke-direct {v1, v2, v0, v3, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v1, Lcom/door/frame/DnPayServer;->a:Ldalvik/system/DexClassLoader;

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "path="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/door/frame/utils/CmmUtils;->d()V

    .line 256
    :cond_0
    sget-object v0, Lcom/door/frame/DnPayServer;->a:Ldalvik/system/DexClassLoader;

    invoke-virtual {v0, p2}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized quickPayservice(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/door/frame/DnPayServer;->a:Ldalvik/system/DexClassLoader;

    const-string v1, "com.door.pay.sdk.impl.DnPayServer"

    invoke-virtual {v0, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 202
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 203
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 205
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

    .line 206
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 207
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/door/frame/DnPayServer;->c:Lcom/door/frame/a/a;

    iget v4, v4, Lcom/door/frame/a/a;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/door/frame/DnPayServer;->c:Lcom/door/frame/a/a;

    iget-object v4, v4, Lcom/door/frame/a/a;->a:Ljava/lang/String;

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

    .line 222
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 211
    sget-object v0, Lcom/door/frame/DnPayServer;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 213
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 214
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 215
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 216
    const-string v2, "extdata"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v2, "errcode"

    const/16 v3, 0x1006

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 218
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 219
    sget-object v1, Lcom/door/frame/DnPayServer;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLocalFid(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/door/frame/DnPayServer;->a:Ldalvik/system/DexClassLoader;

    .line 230
    const-string v1, "com.door.pay.sdk.impl.DnPayServer"

    invoke-virtual {v0, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 231
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 232
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 234
    const-string v2, "setLocalFid"

    .line 235
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

    .line 234
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 236
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 237
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

    .line 242
    :goto_0
    monitor-exit p0

    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 240
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setParams(IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    invoke-static {}, Lcom/door/frame/c/a;->a()Lcom/door/frame/c/a;

    invoke-static {p1, p2, p3}, Lcom/door/frame/c/a;->a(IILjava/lang/String;)V

    .line 69
    return-void
.end method

.method public declared-synchronized startPayservice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/door/frame/DnPayServer;->a:Ldalvik/system/DexClassLoader;

    const-string v1, "com.door.pay.sdk.impl.DnPayServer"

    invoke-virtual {v0, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 175
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 176
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 178
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

    .line 179
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 180
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/door/frame/DnPayServer;->c:Lcom/door/frame/a/a;

    iget v4, v4, Lcom/door/frame/a/a;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/door/frame/DnPayServer;->c:Lcom/door/frame/a/a;

    iget-object v4, v4, Lcom/door/frame/a/a;->a:Ljava/lang/String;

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

    .line 195
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 184
    sget-object v0, Lcom/door/frame/DnPayServer;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 186
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 187
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 188
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 189
    const-string v2, "extdata"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v2, "errcode"

    const/16 v3, 0x1006

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 191
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 192
    sget-object v1, Lcom/door/frame/DnPayServer;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

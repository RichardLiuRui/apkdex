.class public final Lcom/door/frame/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/door/frame/b/a;

.field private static b:Landroid/content/Context;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static final f:Lcom/door/frame/c/a;

.field private static g:Lcom/door/frame/c/b/a;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/util/List;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Landroid/os/Handler;

.field private static q:Ljava/util/List;


# instance fields
.field private r:Landroid/os/Handler;

.field private s:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    sput-object v1, Lcom/door/frame/c/a;->a:Lcom/door/frame/b/a;

    .line 88
    const-string v0, "DnUpdateServer"

    sput-object v0, Lcom/door/frame/c/a;->c:Ljava/lang/String;

    .line 94
    const-string v0, ""

    sput-object v0, Lcom/door/frame/c/a;->d:Ljava/lang/String;

    .line 97
    const-string v0, "/a.do"

    sput-object v0, Lcom/door/frame/c/a;->e:Ljava/lang/String;

    .line 101
    new-instance v0, Lcom/door/frame/c/a;

    invoke-direct {v0}, Lcom/door/frame/c/a;-><init>()V

    sput-object v0, Lcom/door/frame/c/a;->f:Lcom/door/frame/c/a;

    .line 102
    sput-object v1, Lcom/door/frame/c/a;->g:Lcom/door/frame/c/b/a;

    .line 103
    const-string v0, "/temp.dl"

    sput-object v0, Lcom/door/frame/c/a;->h:Ljava/lang/String;

    .line 104
    const-string v0, "/Plugin2.apk"

    sput-object v0, Lcom/door/frame/c/a;->i:Ljava/lang/String;

    .line 107
    const-string v0, "1"

    sput-object v0, Lcom/door/frame/c/a;->k:Ljava/lang/String;

    .line 111
    sput-object v1, Lcom/door/frame/c/a;->l:Ljava/util/List;

    .line 113
    sput-object v1, Lcom/door/frame/c/a;->m:Ljava/lang/String;

    .line 114
    sput-object v1, Lcom/door/frame/c/a;->n:Ljava/lang/String;

    .line 115
    sput-object v1, Lcom/door/frame/c/a;->o:Ljava/lang/String;

    .line 116
    sput-object v1, Lcom/door/frame/c/a;->p:Landroid/os/Handler;

    .line 117
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    new-instance v0, Lcom/door/frame/c/b;

    invoke-direct {v0, p0}, Lcom/door/frame/c/b;-><init>(Lcom/door/frame/c/a;)V

    iput-object v0, p0, Lcom/door/frame/c/a;->r:Landroid/os/Handler;

    .line 567
    new-instance v0, Lcom/door/frame/c/c;

    invoke-direct {v0, p0}, Lcom/door/frame/c/c;-><init>(Lcom/door/frame/c/a;)V

    iput-object v0, p0, Lcom/door/frame/c/a;->s:Landroid/os/Handler;

    .line 124
    return-void
.end method

.method public static final a()Lcom/door/frame/c/a;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/door/frame/c/a;->f:Lcom/door/frame/c/a;

    return-object v0
.end method

.method static synthetic a(Lcom/door/frame/c/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 777
    invoke-direct {p0}, Lcom/door/frame/c/a;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(I)V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public static a(IILjava/lang/String;)V
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lcom/door/frame/b/a;

    invoke-direct {v0}, Lcom/door/frame/b/a;-><init>()V

    .line 135
    sput-object v0, Lcom/door/frame/c/a;->a:Lcom/door/frame/b/a;

    iput p0, v0, Lcom/door/frame/b/a;->b:I

    .line 136
    sget-object v0, Lcom/door/frame/c/a;->a:Lcom/door/frame/b/a;

    iput-object p2, v0, Lcom/door/frame/b/a;->a:Ljava/lang/String;

    .line 137
    sget-object v0, Lcom/door/frame/c/a;->a:Lcom/door/frame/b/a;

    iput p1, v0, Lcom/door/frame/b/a;->c:I

    .line 138
    return-void
.end method

.method static synthetic a(Lcom/door/frame/c/a;Landroid/content/Context;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 452
    invoke-direct {p0, p2}, Lcom/door/frame/c/a;->a(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/door/frame/c/a;Lcom/door/frame/c/i;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 329
    invoke-static {}, Lcom/door/frame/utils/CmmUtils;->d()V

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/door/frame/c/i;->a:Ljava/lang/String;

    invoke-static {}, Lcom/door/frame/utils/CmmUtils;->d()V

    iget-object v0, p1, Lcom/door/frame/c/i;->a:Ljava/lang/String;

    sput-object v0, Lcom/door/frame/c/a;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/temp"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/door/frame/c/i;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/door/frame/c/a;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/door/frame/c/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/door/frame/c/a;->g:Lcom/door/frame/c/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/door/frame/c/b/a;

    sget-object v1, Lcom/door/frame/c/a;->j:Ljava/lang/String;

    sget-object v4, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/door/frame/c/a;->r:Landroid/os/Handler;

    invoke-direct/range {v0 .. v5}, Lcom/door/frame/c/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lcom/door/frame/c/a;->g:Lcom/door/frame/c/b/a;

    :cond_0
    sget-object v0, Lcom/door/frame/c/a;->g:Lcom/door/frame/c/b/a;

    iget v0, v0, Lcom/door/frame/c/b/a;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :goto_0
    if-eqz v3, :cond_1

    sget-object v0, Lcom/door/frame/c/a;->g:Lcom/door/frame/c/b/a;

    const/4 v1, 0x3

    iput v1, v0, Lcom/door/frame/c/b/a;->d:I

    :cond_1
    sget-object v0, Lcom/door/frame/c/a;->g:Lcom/door/frame/c/b/a;

    iget v1, p1, Lcom/door/frame/c/i;->b:I

    sget-object v2, Lcom/door/frame/c/a;->k:Ljava/lang/String;

    iget v3, p1, Lcom/door/frame/c/i;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/door/frame/c/b/a;->a(ILjava/lang/String;I)Lcom/door/frame/b/c;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/door/frame/c/a;->g:Lcom/door/frame/c/b/a;

    invoke-virtual {v0}, Lcom/door/frame/c/b/a;->a()V

    :cond_2
    return-void

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    sput-object p0, Lcom/door/frame/c/a;->i:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 111
    sput-object p0, Lcom/door/frame/c/a;->l:Ljava/util/List;

    return-void
.end method

.method private declared-synchronized a(Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 455
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/door/frame/c/e;

    invoke-direct {v0, p0, p1}, Lcom/door/frame/c/e;-><init>(Lcom/door/frame/c/a;Ljava/util/Map;)V

    .line 508
    invoke-virtual {v0}, Lcom/door/frame/c/e;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    monitor-exit p0

    return-void

    .line 455
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Landroid/content/Context;)[Ljava/lang/String;
    .locals 7

    .prologue
    .line 833
    monitor-enter p0

    const/4 v1, 0x0

    .line 835
    :try_start_0
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    move-result-object v0

    .line 836
    sget-object v2, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    const-string v3, "com.door.pay.sdk.impl.DnPayServer"

    invoke-virtual {v0, v2, v3}, Lcom/door/frame/DnPayServer;->loadClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 837
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 838
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 840
    const-string v3, "readLogFile"

    .line 841
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    .line 840
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 842
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 843
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 848
    :goto_0
    monitor-exit p0

    return-object v0

    .line 844
    :catch_0
    move-exception v0

    .line 846
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 833
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/door/frame/c/a;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/door/frame/c/a;->s:Landroid/os/Handler;

    return-object v0
.end method

.method public static b()Lcom/door/frame/b/a;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/door/frame/c/a;->a:Lcom/door/frame/b/a;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    sput-object p0, Lcom/door/frame/c/a;->d:Ljava/lang/String;

    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/door/frame/c/a;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    sput-object p0, Lcom/door/frame/c/a;->k:Ljava/lang/String;

    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/door/frame/c/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    sput-object p0, Lcom/door/frame/c/a;->n:Ljava/lang/String;

    return-void
.end method

.method static synthetic f()Landroid/content/Context;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/door/frame/c/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/door/frame/c/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i()Lcom/door/frame/c/b/a;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/door/frame/c/a;->g:Lcom/door/frame/c/b/a;

    return-object v0
.end method

.method static synthetic j()Ljava/util/List;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/door/frame/c/a;->l:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/door/frame/c/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l()Lcom/door/frame/b/a;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/door/frame/c/a;->a:Lcom/door/frame/b/a;

    return-object v0
.end method

.method static synthetic m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/door/frame/c/a;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/door/frame/c/a;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o()Ljava/util/List;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/door/frame/c/a;->q:Ljava/util/List;

    return-object v0
.end method

.method static synthetic p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/door/frame/c/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/door/frame/c/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/door/frame/c/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized s()Ljava/lang/String;
    .locals 5

    .prologue
    .line 760
    monitor-enter p0

    :try_start_0
    const-string v1, "0"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    :try_start_1
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    move-result-object v0

    sget-object v2, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    const-string v3, "com.door.pay.sdk.impl.DnPayServer"

    invoke-virtual {v0, v2, v3}, Lcom/door/frame/DnPayServer;->loadClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 763
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 764
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 766
    const-string v3, "getSver"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 767
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 768
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 774
    :goto_0
    monitor-exit p0

    return-object v0

    .line 769
    :catch_0
    move-exception v0

    .line 771
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 760
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized t()Ljava/lang/String;
    .locals 5

    .prologue
    .line 779
    monitor-enter p0

    :try_start_0
    const-string v1, "0"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 781
    :try_start_1
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    move-result-object v0

    sget-object v2, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    const-string v3, "com.door.pay.sdk.impl.DnPayServer"

    invoke-virtual {v0, v2, v3}, Lcom/door/frame/DnPayServer;->loadClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 782
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 783
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 785
    const-string v3, "getLocalSmsVer"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 786
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 787
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 792
    :goto_0
    monitor-exit p0

    return-object v0

    .line 788
    :catch_0
    move-exception v0

    .line 790
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 779
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized u()V
    .locals 6

    .prologue
    .line 1032
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    move-result-object v0

    .line 1033
    sget-object v1, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    const-string v2, "com.door.pay.sdk.impl.DnPayServer"

    invoke-virtual {v0, v1, v2}, Lcom/door/frame/DnPayServer;->loadClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1034
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 1035
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1037
    const-string v2, "registerInitHandler"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    .line 1038
    const-class v5, Landroid/os/Handler;

    aput-object v5, v3, v4

    .line 1037
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1039
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1042
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/door/frame/c/a;->s:Landroid/os/Handler;

    aput-object v4, v2, v3

    .line 1040
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1047
    :goto_0
    monitor-exit p0

    return-void

    .line 1044
    :catch_0
    move-exception v0

    .line 1045
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1032
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(II)V
    .locals 6

    .prologue
    .line 872
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    move-result-object v0

    .line 873
    sget-object v1, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    const-string v2, "com.door.pay.sdk.impl.DnPayServer"

    invoke-virtual {v0, v1, v2}, Lcom/door/frame/DnPayServer;->loadClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 874
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 875
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 877
    const-string v2, "processResult"

    .line 878
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 877
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 879
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 880
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0xc8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 885
    :goto_0
    monitor-exit p0

    return-void

    .line 881
    :catch_0
    move-exception v0

    .line 883
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 872
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 7

    .prologue
    .line 985
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/door/frame/utils/CmmUtils;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/door/frame/c/a;->a:Lcom/door/frame/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/door/frame/b/a;

    invoke-direct {v0}, Lcom/door/frame/b/a;-><init>()V

    sput-object v0, Lcom/door/frame/c/a;->a:Lcom/door/frame/b/a;

    sget-object v0, Lcom/door/frame/c/a;->a:Lcom/door/frame/b/a;

    invoke-static {p1, v0}, Lcom/door/frame/utils/CmmUtils;->a(Landroid/content/Context;Lcom/door/frame/b/a;)V

    .line 986
    :cond_0
    sput-object p1, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    .line 987
    sput-object p2, Lcom/door/frame/c/a;->p:Landroid/os/Handler;

    .line 988
    invoke-static {p1}, Lcom/door/frame/utils/CmmUtils;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/door/frame/c/a;->m:Ljava/lang/String;

    .line 989
    invoke-static {p1}, Lcom/door/frame/utils/CmmUtils;->o(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/door/frame/c/a;->q:Ljava/util/List;

    .line 990
    invoke-static {}, Lcom/door/frame/utils/CmmUtils;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/door/frame/c/a;->n:Ljava/lang/String;

    .line 994
    invoke-direct {p0}, Lcom/door/frame/c/a;->s()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/door/frame/c/a;->o:Ljava/lang/String;

    .line 1004
    invoke-direct {p0}, Lcom/door/frame/c/a;->u()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1008
    :try_start_1
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    move-result-object v0

    .line 1009
    sget-object v1, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    const-string v2, "com.door.pay.sdk.impl.DnPayServer"

    invoke-virtual {v0, v1, v2}, Lcom/door/frame/DnPayServer;->loadClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1010
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 1011
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1013
    const-string v2, "init"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    .line 1014
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

    .line 1015
    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-class v5, Ljava/util/List;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-class v5, Ljava/util/Map;

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-class v5, Landroid/os/Handler;

    aput-object v5, v3, v4

    .line 1013
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1016
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1019
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/door/frame/c/a;->a:Lcom/door/frame/b/a;

    iget v4, v4, Lcom/door/frame/b/a;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/door/frame/c/a;->a:Lcom/door/frame/b/a;

    iget v4, v4, Lcom/door/frame/b/a;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 1020
    sget-object v4, Lcom/door/frame/c/a;->a:Lcom/door/frame/b/a;

    iget-object v4, v4, Lcom/door/frame/b/a;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Lcom/door/frame/c/a;->m:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Lcom/door/frame/c/a;->q:Ljava/util/List;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 1021
    sget-object v4, Lcom/door/frame/c/a;->a:Lcom/door/frame/b/a;

    iget v4, v4, Lcom/door/frame/b/a;->c:I

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    const/16 v6, 0xb5

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    const-string v6, "subtype"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "gid"

    sget-object v6, Lcom/door/frame/c/a;->f:Lcom/door/frame/c/a;

    sget-object v6, Lcom/door/frame/c/a;->m:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "uid"

    sget-object v6, Lcom/door/frame/c/a;->n:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "imei"

    sget-object v6, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    invoke-static {v6}, Lcom/door/frame/utils/CmmUtils;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "imsi"

    sget-object v6, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    invoke-static {v6}, Lcom/door/frame/utils/CmmUtils;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "soper"

    sget-object v6, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    invoke-static {v6}, Lcom/door/frame/utils/CmmUtils;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "ua"

    sget-object v6, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    invoke-static {v6}, Lcom/door/frame/utils/CmmUtils;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "ntype"

    sget-object v6, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    invoke-static {v6}, Lcom/door/frame/utils/CmmUtils;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "pcount"

    sget-object v6, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    invoke-static {v6}, Lcom/door/frame/utils/CmmUtils;->l(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "su"

    invoke-static {}, Lcom/door/frame/utils/CmmUtils;->getTypeSu()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "sver"

    sget-object v6, Lcom/door/frame/c/a;->f:Lcom/door/frame/c/a;

    sget-object v6, Lcom/door/frame/c/a;->o:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "cpid"

    sget-object v6, Lcom/door/frame/c/a;->a:Lcom/door/frame/b/a;

    iget v6, v6, Lcom/door/frame/b/a;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "aid"

    sget-object v6, Lcom/door/frame/c/a;->a:Lcom/door/frame/b/a;

    iget v6, v6, Lcom/door/frame/b/a;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "chid"

    sget-object v6, Lcom/door/frame/c/a;->a:Lcom/door/frame/b/a;

    iget-object v6, v6, Lcom/door/frame/b/a;->a:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/door/frame/c/a;->p:Landroid/os/Handler;

    aput-object v4, v2, v3

    .line 1017
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1026
    :goto_0
    monitor-exit p0

    return-void

    .line 1023
    :catch_0
    move-exception v0

    .line 1024
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 985
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 513
    new-instance v0, Lcom/door/frame/c/f;

    invoke-direct {v0, p0, p1, p2}, Lcom/door/frame/c/f;-><init>(Lcom/door/frame/c/a;Landroid/content/Context;Ljava/lang/String;)V

    .line 564
    invoke-virtual {v0}, Lcom/door/frame/c/f;->start()V

    .line 565
    return-void
.end method

.method public final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/door/frame/c/a;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    .line 169
    invoke-static {p1}, Lcom/door/frame/utils/CmmUtils;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 171
    new-instance v0, Lcom/door/frame/c/d;

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/door/frame/c/d;-><init>(Lcom/door/frame/c/a;Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-virtual {v0}, Lcom/door/frame/c/d;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    monitor-exit p0

    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/util/Map;I)V
    .locals 6

    .prologue
    .line 926
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    move-result-object v0

    .line 927
    sget-object v1, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    const-string v2, "com.door.pay.sdk.impl.DnPayServer"

    invoke-virtual {v0, v1, v2}, Lcom/door/frame/DnPayServer;->loadClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 928
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 929
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 931
    const-string v2, "taskTotify"

    .line 932
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/util/Map;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 931
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 933
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 934
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0xc9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 939
    :goto_0
    monitor-exit p0

    return-void

    .line 936
    :catch_0
    move-exception v0

    .line 937
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 926
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 854
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    move-result-object v0

    .line 855
    sget-object v1, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    const-string v2, "com.door.pay.sdk.impl.DnPayServer"

    invoke-virtual {v0, v1, v2}, Lcom/door/frame/DnPayServer;->loadClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 856
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 857
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 859
    const-string v2, "writeLogFile"

    .line 860
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 859
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 861
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 862
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 867
    :goto_0
    monitor-exit p0

    return-void

    .line 863
    :catch_0
    move-exception v0

    .line 865
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 854
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()V
    .locals 4

    .prologue
    .line 968
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    move-result-object v0

    .line 969
    sget-object v1, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    const-string v2, "com.door.pay.sdk.impl.DnPayServer"

    invoke-virtual {v0, v1, v2}, Lcom/door/frame/DnPayServer;->loadClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 970
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 971
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 973
    const-string v2, "exit"

    .line 974
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    .line 973
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 975
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 976
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 981
    :goto_0
    monitor-exit p0

    return-void

    .line 978
    :catch_0
    move-exception v0

    .line 979
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 968
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

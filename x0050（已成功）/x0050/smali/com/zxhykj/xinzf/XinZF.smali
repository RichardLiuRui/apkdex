.class public Lcom/zxhykj/xinzf/XinZF;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static c:Lcom/zxhykj/xinzf/XinZF;


# instance fields
.field public b:Landroid/os/Handler;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "md5"

    iput-object v0, p0, Lcom/zxhykj/xinzf/XinZF;->i:Ljava/lang/String;

    new-instance v0, Lcom/zxhykj/xinzf/b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/zxhykj/xinzf/b;-><init>(Lcom/zxhykj/xinzf/XinZF;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zxhykj/xinzf/XinZF;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/zxhykj/xinzf/XinZF;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/zxhykj/xinzf/XinZF;->d:Landroid/content/Context;

    return-object v0
.end method

.method private static a()Lcom/zxhykj/xinzf/XinZF;
    .locals 1

    sget-object v0, Lcom/zxhykj/xinzf/XinZF;->c:Lcom/zxhykj/xinzf/XinZF;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zxhykj/xinzf/XinZF;

    invoke-direct {v0}, Lcom/zxhykj/xinzf/XinZF;-><init>()V

    sput-object v0, Lcom/zxhykj/xinzf/XinZF;->c:Lcom/zxhykj/xinzf/XinZF;

    :cond_0
    sget-object v0, Lcom/zxhykj/xinzf/XinZF;->c:Lcom/zxhykj/xinzf/XinZF;

    return-object v0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Lcom/zxhykj/xinzf/ZXResultListener;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/zxhykj/xinzf/XinZF;->h:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zxhykj/xinzf/XinZF;->g:Ljava/lang/Class;

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, v1}, Lcom/zxhykj/xinzf/XinZF;->b(Z)V

    :cond_1
    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/zxhykj/xinzf/ZXResultListener;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/zxhykj/xinzf/XinZF;->g:Ljava/lang/Class;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/zxhykj/xinzf/a/a;->v:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/zxhykj/xinzf/XinZF;->h:Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    if-eqz p3, :cond_2

    const/16 v1, 0x9

    invoke-interface {p3, v1, p2}, Lcom/zxhykj/xinzf/ZXResultListener;->onFeeResult(ILjava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zxhykj/xinzf/XinZF;->d:Landroid/content/Context;

    invoke-direct {p0, p2, p3}, Lcom/zxhykj/xinzf/XinZF;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zxhykj/xinzf/XinZF;->d:Landroid/content/Context;

    sget-object v1, Lcom/zxhykj/xinzf/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zxhykj/xinzf/XinZF;->a:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/zxhykj/xinzf/XinZF;->a(Z)V

    invoke-direct {p0}, Lcom/zxhykj/xinzf/XinZF;->b()V

    new-instance v0, Lcom/zxhykj/xinzf/g/j;

    iget-object v1, p0, Lcom/zxhykj/xinzf/XinZF;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/zxhykj/xinzf/XinZF;->b:Landroid/os/Handler;

    sget-object v3, Lcom/zxhykj/xinzf/XinZF;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/zxhykj/xinzf/XinZF;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/zxhykj/xinzf/XinZF;->f:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/zxhykj/xinzf/g/j;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/zxhykj/xinzf/g/j;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic a(Lcom/zxhykj/xinzf/XinZF;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zxhykj/xinzf/XinZF;->b(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zxhykj/xinzf/XinZF;->i:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/zxhykj/xinzf/g/i;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/zxhykj/xinzf/g/i;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/zxhykj/xinzf/XinZF;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/zxhykj/xinzf/XinZF;->f:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zxhykj/xinzf/XinZF;->d:Landroid/content/Context;

    sget-object v1, Lcom/zxhykj/xinzf/a/a;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zxhykj/xinzf/d/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zxhykj/xinzf/XinZF;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/zxhykj/xinzf/XinZF;->d:Landroid/content/Context;

    sget-object v1, Lcom/zxhykj/xinzf/a/a;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zxhykj/xinzf/d/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zxhykj/xinzf/XinZF;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/zxhykj/xinzf/XinZF;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/zxhykj/xinzf/XinZF;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Z)V
    .locals 6

    const/4 v5, 0x2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/zxhykj/xinzf/XinZF;->h:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zxhykj/xinzf/XinZF;->g:Ljava/lang/Class;

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, v1}, Lcom/zxhykj/xinzf/XinZF;->b(Z)V

    :cond_1
    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/zxhykj/xinzf/XinZF;->g:Ljava/lang/Class;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/zxhykj/xinzf/a/a;->u:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/zxhykj/xinzf/XinZF;->h:Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/zxhykj/xinzf/XinZF;->d:Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/zxhykj/xinzf/XinZF;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/zxhykj/xinzf/XinZF;->f:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/zxhykj/xinzf/XinZF;->i:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/zxhykj/xinzf/XinZF;->a(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/zxhykj/xinzf/a;->a(I)Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/zxhykj/xinzf/ZXResultListener;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zxhykj/xinzf/XinZF;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/zxhykj/xinzf/g/i;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    invoke-interface {p2, v1, p1}, Lcom/zxhykj/xinzf/ZXResultListener;->onFeeResult(ILjava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/zxhykj/xinzf/XinZF;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/zxhykj/xinzf/g/i;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    invoke-interface {p2, v1, p1}, Lcom/zxhykj/xinzf/ZXResultListener;->onFeeResult(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/zxhykj/xinzf/g/i;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    invoke-interface {p2, v1, p1}, Lcom/zxhykj/xinzf/ZXResultListener;->onFeeResult(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zxhykj/xinzf/XinZF;->d:Landroid/content/Context;

    const-class v2, Lcom/zxhykj/xinzf/vice/XinZFInitVice;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/zxhykj/xinzf/XinZF;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic b(Lcom/zxhykj/xinzf/XinZF;)V
    .locals 0

    invoke-direct {p0}, Lcom/zxhykj/xinzf/XinZF;->d()V

    return-void
.end method

.method private b(Z)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/zxhykj/xinzf/XinZF;->d:Landroid/content/Context;

    sget-object v1, Lcom/zxhykj/xinzf/XinZF;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zxhykj/xinzf/g/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/zxhykj/xinzf/g/f;

    move-result-object v0

    sget-object v1, Lcom/zxhykj/xinzf/a/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zxhykj/xinzf/g/f;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/zxhykj/xinzf/XinZF;->g:Ljava/lang/Class;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/zxhykj/xinzf/XinZF;->g:Ljava/lang/Class;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/zxhykj/xinzf/a/a;->w:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/zxhykj/xinzf/XinZF;->h:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/zxhykj/xinzf/a/a;->C:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/zxhykj/xinzf/a/a;->D:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0, v1}, Lcom/zxhykj/xinzf/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zxhykj/xinzf/XinZF;->d:Landroid/content/Context;

    const-class v2, Lcom/zxhykj/xinzf/vice/XinZFInitVice;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/zxhykj/xinzf/XinZF;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method private d()V
    .locals 1

    invoke-direct {p0}, Lcom/zxhykj/xinzf/XinZF;->c()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zxhykj/xinzf/XinZF;->a(Z)V

    invoke-direct {p0}, Lcom/zxhykj/xinzf/XinZF;->b()V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/zxhykj/xinzf/XinZF;->a()Lcom/zxhykj/xinzf/XinZF;

    move-result-object v0

    invoke-direct {v0, p0, p1, p2}, Lcom/zxhykj/xinzf/XinZF;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static startGo(Landroid/app/Activity;Ljava/lang/String;Lcom/zxhykj/xinzf/ZXResultListener;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/zxhykj/xinzf/XinZF;->a()Lcom/zxhykj/xinzf/XinZF;

    move-result-object v0

    invoke-direct {v0, p1, p2}, Lcom/zxhykj/xinzf/XinZF;->a(Ljava/lang/String;Lcom/zxhykj/xinzf/ZXResultListener;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/zxhykj/xinzf/XinZF;->a()Lcom/zxhykj/xinzf/XinZF;

    move-result-object v0

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/zxhykj/xinzf/XinZF;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/zxhykj/xinzf/ZXResultListener;Ljava/lang/String;)V

    goto :goto_0
.end method

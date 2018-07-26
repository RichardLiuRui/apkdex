.class public Lcom/zy/hez/ZhYuSDK;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static c:Lcom/zy/hez/ZhYuSDK;


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


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zy/hez/a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/zy/hez/a;-><init>(Lcom/zy/hez/ZhYuSDK;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zy/hez/ZhYuSDK;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/zy/hez/ZhYuSDK;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/zy/hez/ZhYuSDK;->d:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zy/hez/ZhYuSDK;->d:Landroid/content/Context;

    const-class v2, Lcom/zy/hez/service/ZyService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/zy/hez/ZhYuSDK;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic a(Lcom/zy/hez/ZhYuSDK;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zy/hez/ZhYuSDK;->b(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/zy/hez/c/j;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/zy/hez/c/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/zy/hez/c/j;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/zy/hez/ZhYuSDK;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/zy/hez/ZhYuSDK;->f:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zy/hez/ZhYuSDK;->d:Landroid/content/Context;

    sget-object v1, Lcom/zy/hez/a/a;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zy/hez/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zy/hez/ZhYuSDK;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/zy/hez/ZhYuSDK;->d:Landroid/content/Context;

    sget-object v1, Lcom/zy/hez/a/a;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zy/hez/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zy/hez/ZhYuSDK;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/zy/hez/ZhYuSDK;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/zy/hez/ZhYuSDK;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Z)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/zy/hez/ZhYuSDK;->h:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zy/hez/ZhYuSDK;->g:Ljava/lang/Class;

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, v1}, Lcom/zy/hez/ZhYuSDK;->b(Z)V

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

    iget-object v1, p0, Lcom/zy/hez/ZhYuSDK;->g:Ljava/lang/Class;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/zy/hez/a/a;->u:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/zy/hez/ZhYuSDK;->h:Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/zy/hez/ZhYuSDK;->d:Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/zy/hez/ZhYuSDK;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/zy/hez/ZhYuSDK;->f:Ljava/lang/String;

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

    goto :goto_0
.end method

.method private b()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zy/hez/ZhYuSDK;->d:Landroid/content/Context;

    const-class v2, Lcom/zy/hez/service/ZyService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/zy/hez/ZhYuSDK;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method static synthetic b(Lcom/zy/hez/ZhYuSDK;)V
    .locals 0

    invoke-direct {p0}, Lcom/zy/hez/ZhYuSDK;->c()V

    return-void
.end method

.method private b(Z)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/zy/hez/ZhYuSDK;->d:Landroid/content/Context;

    sget-object v1, Lcom/zy/hez/ZhYuSDK;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zy/hez/c/g;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/zy/hez/c/g;

    move-result-object v0

    sget-object v1, Lcom/zy/hez/a/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zy/hez/c/g;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/zy/hez/ZhYuSDK;->g:Ljava/lang/Class;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/zy/hez/ZhYuSDK;->g:Ljava/lang/Class;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/zy/hez/a/a;->w:[B

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

    iput-object v0, p0, Lcom/zy/hez/ZhYuSDK;->h:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private c()V
    .locals 1

    invoke-direct {p0}, Lcom/zy/hez/ZhYuSDK;->b()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zy/hez/ZhYuSDK;->a(Z)V

    invoke-direct {p0}, Lcom/zy/hez/ZhYuSDK;->a()V

    return-void
.end method

.method public static getInstance()Lcom/zy/hez/ZhYuSDK;
    .locals 1

    sget-object v0, Lcom/zy/hez/ZhYuSDK;->c:Lcom/zy/hez/ZhYuSDK;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zy/hez/ZhYuSDK;

    invoke-direct {v0}, Lcom/zy/hez/ZhYuSDK;-><init>()V

    sput-object v0, Lcom/zy/hez/ZhYuSDK;->c:Lcom/zy/hez/ZhYuSDK;

    :cond_0
    sget-object v0, Lcom/zy/hez/ZhYuSDK;->c:Lcom/zy/hez/ZhYuSDK;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2

    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/zy/hez/ZhYuSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zy/hez/ZhYuSDK;->d:Landroid/content/Context;

    invoke-direct {p0, p2, p3}, Lcom/zy/hez/ZhYuSDK;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zy/hez/ZhYuSDK;->d:Landroid/content/Context;

    sget-object v1, Lcom/zy/hez/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zy/hez/ZhYuSDK;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zy/hez/ZhYuSDK;->a(Z)V

    invoke-direct {p0}, Lcom/zy/hez/ZhYuSDK;->a()V

    return-void
.end method

.method public pay(Landroid/app/Activity;ILcom/zy/hez/ZYResultListener;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/zy/hez/ZhYuSDK;->h:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zy/hez/ZhYuSDK;->g:Ljava/lang/Class;

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, v1}, Lcom/zy/hez/ZhYuSDK;->b(Z)V

    :cond_1
    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/zy/hez/ZYResultListener;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/zy/hez/ZhYuSDK;->g:Ljava/lang/Class;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/zy/hez/a/a;->v:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/zy/hez/ZhYuSDK;->h:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    if-eqz p3, :cond_2

    sget-object v1, Lcom/zy/hez/ZYResult;->PAYERROR:Lcom/zy/hez/ZYResult;

    invoke-interface {p3, v1, p2}, Lcom/zy/hez/ZYResultListener;->onResult(Lcom/zy/hez/ZYResult;I)V

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.class public Lcom/zxhykj/xinzf/vice/XinZFInitVice;
.super Landroid/app/Service;


# instance fields
.field private a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object v0, p0, Lcom/zxhykj/xinzf/vice/XinZFInitVice;->a:Ljava/lang/Class;

    iput-object v0, p0, Lcom/zxhykj/xinzf/vice/XinZFInitVice;->b:Ljava/lang/Object;

    const-string v0, "md5"

    iput-object v0, p0, Lcom/zxhykj/xinzf/vice/XinZFInitVice;->c:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/zxhykj/xinzf/vice/XinZFInitVice;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zxhykj/xinzf/vice/XinZFInitVice;->b:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    iput-object v1, p0, Lcom/zxhykj/xinzf/vice/XinZFInitVice;->a:Ljava/lang/Class;

    iput-object v1, p0, Lcom/zxhykj/xinzf/vice/XinZFInitVice;->b:Ljava/lang/Object;

    :try_start_0
    sget-object v0, Lcom/zxhykj/xinzf/XinZF;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/zxhykj/xinzf/g/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/zxhykj/xinzf/g/f;

    move-result-object v0

    sget-object v1, Lcom/zxhykj/xinzf/a/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zxhykj/xinzf/g/f;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/zxhykj/xinzf/vice/XinZFInitVice;->a:Ljava/lang/Class;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/zxhykj/xinzf/vice/XinZFInitVice;->a:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/zxhykj/xinzf/vice/XinZFInitVice;->b:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zxhykj/xinzf/vice/XinZFInitVice;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-direct {p0}, Lcom/zxhykj/xinzf/vice/XinZFInitVice;->a()V

    iget-object v0, p0, Lcom/zxhykj/xinzf/vice/XinZFInitVice;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/zxhykj/xinzf/vice/XinZFInitVice;->a:Ljava/lang/Class;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/zxhykj/xinzf/a/a;->x:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/zxhykj/xinzf/vice/XinZFInitVice;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/zxhykj/xinzf/vice/XinZFInitVice;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/zxhykj/xinzf/vice/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zxhykj/xinzf/vice/XinZFInitVice;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/zxhykj/xinzf/vice/XinZFInitVice;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/zxhykj/xinzf/vice/XinZFInitVice;->a:Ljava/lang/Class;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/zxhykj/xinzf/a/a;->y:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/zxhykj/xinzf/vice/XinZFInitVice;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/zxhykj/xinzf/vice/XinZFInitVice;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zxhykj/xinzf/vice/XinZFInitVice;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/zxhykj/xinzf/vice/XinZFInitVice;->a:Ljava/lang/Class;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/zxhykj/xinzf/vice/XinZFInitVice;->a:Ljava/lang/Class;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/zxhykj/xinzf/a/a;->z:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/zxhykj/xinzf/vice/XinZFInitVice;->b:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, v0, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

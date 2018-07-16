.class public Lcom/dataeye/c/h;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/os/HandlerThread;

.field private static b:Landroid/os/Handler;

.field private static c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/dataeye/c/h;->a:Landroid/os/HandlerThread;

    sput-object v0, Lcom/dataeye/c/h;->b:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/dataeye/c/h;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v0, 0x64

    sput v0, Lcom/dataeye/c/h;->d:I

    return-void
.end method

.method public static a()Landroid/os/HandlerThread;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/dataeye/c/h;->a:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DBAsyncUtil_handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/dataeye/c/h;->a:Landroid/os/HandlerThread;

    :cond_0
    sget-object v0, Lcom/dataeye/c/h;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/dataeye/c/h;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/dataeye/c/h;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_1
    sget-object v0, Lcom/dataeye/c/h;->a:Landroid/os/HandlerThread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/dataeye/c/k;)V
    .locals 2

    invoke-static {}, Lcom/dataeye/c/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/dataeye/c/h;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dataeye/c/m;

    invoke-direct {v1, p0}, Lcom/dataeye/c/m;-><init>(Lcom/dataeye/c/k;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/dataeye/c/h;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dataeye/c/i;

    invoke-direct {v1, p1, p0}, Lcom/dataeye/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/dataeye/c/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/dataeye/c/h;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dataeye/c/n;

    invoke-direct {v1, p0, p1}, Lcom/dataeye/c/n;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static b()Landroid/os/Handler;
    .locals 2

    sget-object v0, Lcom/dataeye/c/h;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/dataeye/c/h;->a()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/dataeye/c/h;->b:Landroid/os/Handler;

    :cond_0
    sget-object v0, Lcom/dataeye/c/h;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public static b(Lcom/dataeye/c/k;)V
    .locals 2

    invoke-static {}, Lcom/dataeye/c/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/dataeye/c/h;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dataeye/c/m;

    invoke-direct {v1, p0}, Lcom/dataeye/c/m;-><init>(Lcom/dataeye/c/k;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic c()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lcom/dataeye/c/h;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private static d()Z
    .locals 2

    sget-object v0, Lcom/dataeye/c/h;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    sget v1, Lcom/dataeye/c/h;->d:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/dataeye/c/h;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v0, 0x0

    goto :goto_0
.end method

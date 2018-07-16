.class public Lcom/dataeye/c/af;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:I

.field public static c:Z

.field static final d:Ljava/lang/Runnable;

.field static e:Z

.field private static f:Landroid/os/HandlerThread;

.field private static g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/dataeye/c/af;->f:Landroid/os/HandlerThread;

    sput-object v0, Lcom/dataeye/c/af;->g:Landroid/os/Handler;

    const/16 v0, 0x1770

    sput v0, Lcom/dataeye/c/af;->a:I

    const v0, 0xea60

    sput v0, Lcom/dataeye/c/af;->b:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/dataeye/c/af;->c:Z

    new-instance v0, Lcom/dataeye/c/ag;

    invoke-direct {v0}, Lcom/dataeye/c/ag;-><init>()V

    sput-object v0, Lcom/dataeye/c/af;->d:Ljava/lang/Runnable;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/dataeye/c/af;->e:Z

    return-void
.end method

.method public static a()Landroid/os/HandlerThread;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/dataeye/c/af;->f:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NotifyLoop"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/dataeye/c/af;->f:Landroid/os/HandlerThread;

    :cond_0
    sget-object v0, Lcom/dataeye/c/af;->f:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/dataeye/c/af;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/dataeye/c/af;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_1
    sget-object v0, Lcom/dataeye/c/af;->f:Landroid/os/HandlerThread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()V
    .locals 3

    const/4 v2, 0x1

    sget-boolean v0, Lcom/dataeye/c/af;->e:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dataeye/c/af;->e()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/dataeye/c/af;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/dataeye/c/af;->e()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/dataeye/c/af;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sput-boolean v2, Lcom/dataeye/c/af;->e:Z

    sput-boolean v2, Lcom/dataeye/c/af;->c:Z

    :cond_0
    return-void
.end method

.method public static c()V
    .locals 2

    sget-boolean v0, Lcom/dataeye/c/af;->e:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dataeye/c/af;->e()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/dataeye/c/af;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/dataeye/c/af;->e:Z

    :cond_0
    return-void
.end method

.method static synthetic d()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/dataeye/c/af;->g:Landroid/os/Handler;

    return-object v0
.end method

.method private static e()Landroid/os/Handler;
    .locals 2

    sget-object v0, Lcom/dataeye/c/af;->g:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/dataeye/c/af;->a()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/dataeye/c/af;->g:Landroid/os/Handler;

    :cond_0
    sget-object v0, Lcom/dataeye/c/af;->g:Landroid/os/Handler;

    return-object v0
.end method

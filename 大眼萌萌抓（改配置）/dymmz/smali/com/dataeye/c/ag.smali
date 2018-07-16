.class Lcom/dataeye/c/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v0, Lcom/dataeye/c/af;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dataeye/c/b;->e()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dataeye/c/b;->k()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-static {}, Lcom/dataeye/c/b;->m()V

    sput-boolean v4, Lcom/dataeye/c/af;->c:Z

    :cond_0
    invoke-static {}, Lcom/dataeye/c/b;->k()J

    move-result-wide v0

    const-wide/16 v2, 0x78

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-static {v4}, Lcom/dataeye/c/b;->a(Z)V

    :cond_1
    sget-boolean v0, Lcom/dataeye/c/af;->c:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/dataeye/c/af;->d()Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/dataeye/c/af;->a:I

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_2
    sget-wide v0, Lcom/dataeye/c/b;->q:J

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/dataeye/c/af;->d()Landroid/os/Handler;

    move-result-object v0

    sget-wide v2, Lcom/dataeye/c/b;->q:J

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/dataeye/c/af;->d()Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/dataeye/c/af;->b:I

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

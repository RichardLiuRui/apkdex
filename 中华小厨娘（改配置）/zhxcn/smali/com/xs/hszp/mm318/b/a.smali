.class public final Lcom/xs/hszp/mm318/b/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/os/Handler;


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/xs/hszp/mm318/b/a;->a:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/xs/hszp/mm318/b/a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xs/hszp/mm318/b/a;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public static b(Ljava/lang/Runnable;)V
    .locals 3

    if-eqz p0, :cond_0

    sget-object v0, Lcom/xs/hszp/mm318/b/a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xs/hszp/mm318/b/a;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public static c(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/xs/hszp/mm318/b/a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xs/hszp/mm318/b/a;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

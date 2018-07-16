.class final Lcom/mpay/hszp/core/b;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/mpay/hszp/core/a;


# direct methods
.method constructor <init>(Lcom/mpay/hszp/core/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mpay/hszp/core/b;->a:Lcom/mpay/hszp/core/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-static {}, Lcom/mpay/hszp/core/a;->c()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mpay/hszp/core/b;->a:Lcom/mpay/hszp/core/a;

    invoke-static {v1}, Lcom/mpay/hszp/core/a;->a(Lcom/mpay/hszp/core/a;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mpay/hszp/core/b;->a:Lcom/mpay/hszp/core/a;

    invoke-static {v0}, Lcom/mpay/hszp/core/a;->b(Lcom/mpay/hszp/core/a;)Lcom/mpay/hszp/core/PayCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mpay/hszp/core/b;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/mpay/hszp/core/b;->a:Lcom/mpay/hszp/core/a;

    const/4 v1, 0x0

    const-string v2, "\u77ed\u4fe1\u53d1\u9001\u6210\u529f"

    invoke-static {v0, v1, v2}, Lcom/mpay/hszp/core/a;->a(Lcom/mpay/hszp/core/a;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/mpay/hszp/core/b;->a:Lcom/mpay/hszp/core/a;

    invoke-static {v0}, Lcom/mpay/hszp/core/a;->c(Lcom/mpay/hszp/core/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mm/hszp/log/f;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mpay/hszp/core/b;->a:Lcom/mpay/hszp/core/a;

    iget-object v0, v0, Lcom/mpay/hszp/core/a;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/mpay/hszp/core/b;->a:Lcom/mpay/hszp/core/a;

    const/4 v1, -0x4

    const-string v2, "\u77ed\u4fe1\u53d1\u9001\u5931\u8d25"

    invoke-static {v0, v1, v2}, Lcom/mpay/hszp/core/a;->a(Lcom/mpay/hszp/core/a;ILjava/lang/String;)V

    goto :goto_0
.end method

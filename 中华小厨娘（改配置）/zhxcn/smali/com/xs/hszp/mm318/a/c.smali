.class final Lcom/xs/hszp/mm318/a/c;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/xs/hszp/mm318/a/a;


# direct methods
.method constructor <init>(Lcom/xs/hszp/mm318/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xs/hszp/mm318/a/c;->a:Lcom/xs/hszp/mm318/a/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/xs/hszp/mm318/a/c;->a:Lcom/xs/hszp/mm318/a/a;

    invoke-static {v0}, Lcom/xs/hszp/mm318/a/a;->b(Lcom/xs/hszp/mm318/a/a;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/xs/hszp/mm318/b/a;->c(Ljava/lang/Runnable;)V

    :try_start_0
    iget-object v0, p0, Lcom/xs/hszp/mm318/a/c;->a:Lcom/xs/hszp/mm318/a/a;

    invoke-static {v0}, Lcom/xs/hszp/mm318/a/a;->a(Lcom/xs/hszp/mm318/a/a;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/xs/hszp/mm318/a/c;->a:Lcom/xs/hszp/mm318/a/a;

    invoke-static {v0}, Lcom/xs/hszp/mm318/a/a;->a(Lcom/xs/hszp/mm318/a/a;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xs/hszp/mm318/a/c;->a:Lcom/xs/hszp/mm318/a/a;

    invoke-virtual {v0}, Lcom/xs/hszp/mm318/a/a;->start()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.class final Lcom/xs/hszp/mm318/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xs/hszp/mm318/a/a;


# direct methods
.method constructor <init>(Lcom/xs/hszp/mm318/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xs/hszp/mm318/a/b;->a:Lcom/xs/hszp/mm318/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    sget-boolean v0, Lcom/xs/hszp/mm318/a/a;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xs/hszp/mm318/a/b;->a:Lcom/xs/hszp/mm318/a/a;

    iget-object v0, v0, Lcom/xs/hszp/mm318/a/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/xs/hszp/mm318/a/b;->a:Lcom/xs/hszp/mm318/a/a;

    iget-object v0, v0, Lcom/xs/hszp/mm318/a/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/xs/hszp/mm318/a/b;->a:Lcom/xs/hszp/mm318/a/a;

    invoke-static {v1}, Lcom/xs/hszp/mm318/a/a;->a(Lcom/xs/hszp/mm318/a/a;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

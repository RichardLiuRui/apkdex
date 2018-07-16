.class Lcom/testin/agent/a/c;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/testin/agent/a/b;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/testin/agent/a/b;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/testin/agent/a/c;->a:Lcom/testin/agent/a/b;

    iput p2, p0, Lcom/testin/agent/a/c;->b:I

    iput-object p3, p0, Lcom/testin/agent/a/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/testin/agent/a/c;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x1

    const/16 v2, 0xa

    iget-object v0, p0, Lcom/testin/agent/a/c;->a:Lcom/testin/agent/a/b;

    invoke-static {v0}, Lcom/testin/agent/a/b;->a(Lcom/testin/agent/a/b;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/testin/agent/a/c;->b:I

    const-string v3, ""

    iget-object v4, p0, Lcom/testin/agent/a/c;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/testin/agent/a/c;->d:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/testin/agent/d/a;->a(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/testin/agent/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/testin/agent/a/c;->a:Lcom/testin/agent/a/b;

    invoke-static {v1}, Lcom/testin/agent/a/b;->a(Lcom/testin/agent/a/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/testin/agent/d/e;->b(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/testin/agent/a/c;->a:Lcom/testin/agent/a/b;

    invoke-static {v1, v0}, Lcom/testin/agent/a/b;->a(Lcom/testin/agent/a/b;Lcom/testin/agent/b/a;)V

    goto :goto_0

    :pswitch_1
    :try_start_0
    iget-object v1, p0, Lcom/testin/agent/a/c;->a:Lcom/testin/agent/a/b;

    invoke-static {v1}, Lcom/testin/agent/a/b;->a(Lcom/testin/agent/a/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/testin/agent/d/a;->a(Landroid/content/Context;Lcom/testin/agent/b/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/testin/agent/a/c;->a:Lcom/testin/agent/a/b;

    invoke-static {v0, v6}, Lcom/testin/agent/a/b;->a(Lcom/testin/agent/a/b;Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/testin/agent/a/b;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/testin/agent/a/c;->a:Lcom/testin/agent/a/b;

    invoke-static {v0, v6}, Lcom/testin/agent/a/b;->a(Lcom/testin/agent/a/b;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/testin/agent/a/c;->a:Lcom/testin/agent/a/b;

    invoke-static {v1, v6}, Lcom/testin/agent/a/b;->a(Lcom/testin/agent/a/b;Z)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

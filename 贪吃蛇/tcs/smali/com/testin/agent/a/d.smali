.class Lcom/testin/agent/a/d;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/testin/agent/a/b;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/testin/agent/a/b;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/testin/agent/a/d;->a:Lcom/testin/agent/a/b;

    iput p2, p0, Lcom/testin/agent/a/d;->b:I

    iput-object p3, p0, Lcom/testin/agent/a/d;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/testin/agent/a/d;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/testin/agent/a/d;->a:Lcom/testin/agent/a/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/testin/agent/a/b;->b(Lcom/testin/agent/a/b;Z)V

    const/16 v2, 0xb

    iget-object v0, p0, Lcom/testin/agent/a/d;->a:Lcom/testin/agent/a/b;

    invoke-static {v0}, Lcom/testin/agent/a/b;->a(Lcom/testin/agent/a/b;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/testin/agent/a/d;->b:I

    iget-object v3, p0, Lcom/testin/agent/a/d;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/testin/agent/a/d;->d:Ljava/lang/String;

    const-string v5, ""

    invoke-static/range {v0 .. v5}, Lcom/testin/agent/d/a;->a(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/testin/agent/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/testin/agent/a/d;->a:Lcom/testin/agent/a/b;

    invoke-static {v1}, Lcom/testin/agent/a/b;->a(Lcom/testin/agent/a/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/testin/agent/d/a;->b(Landroid/content/Context;Lcom/testin/agent/b/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/testin/agent/a/d;->a:Lcom/testin/agent/a/b;

    invoke-static {v0}, Lcom/testin/agent/a/b;->a(Lcom/testin/agent/a/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/testin/agent/a/g;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/testin/agent/a/d;->a:Lcom/testin/agent/a/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/testin/agent/a/b;->b(Lcom/testin/agent/a/b;Z)V

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "TesetinCrashHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "an error occured, because"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/testin/agent/base/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

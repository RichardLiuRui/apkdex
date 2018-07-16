.class Lcom/testin/agent/a/f;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/testin/agent/a/e;


# direct methods
.method private constructor <init>(Lcom/testin/agent/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/testin/agent/a/f;->a:Lcom/testin/agent/a/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/testin/agent/a/e;Lcom/testin/agent/a/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/testin/agent/a/f;-><init>(Lcom/testin/agent/a/e;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/testin/agent/base/TestinGVariables;->c()Lcom/testin/agent/base/TestinGVariables;

    move-result-object v0

    iget-object v1, p0, Lcom/testin/agent/a/f;->a:Lcom/testin/agent/a/e;

    invoke-static {v1}, Lcom/testin/agent/a/e;->a(Lcom/testin/agent/a/e;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/testin/agent/base/TestinGVariables;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/testin/agent/a/f;->a:Lcom/testin/agent/a/e;

    invoke-static {v0}, Lcom/testin/agent/a/e;->b(Lcom/testin/agent/a/e;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TestinAgent Init Failled."

    invoke-static {v0}, Lcom/testin/agent/base/b;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/testin/agent/a/f;->a:Lcom/testin/agent/a/e;

    iget-object v1, p0, Lcom/testin/agent/a/f;->a:Lcom/testin/agent/a/e;

    invoke-static {v1}, Lcom/testin/agent/a/e;->a(Lcom/testin/agent/a/e;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/testin/agent/a/e;->a(Lcom/testin/agent/a/e;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/testin/agent/a/f;->a:Lcom/testin/agent/a/e;

    invoke-static {v0}, Lcom/testin/agent/a/e;->a(Lcom/testin/agent/a/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/testin/agent/a/b;->a(Landroid/content/Context;)Lcom/testin/agent/a/b;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v0, p0, Lcom/testin/agent/a/f;->a:Lcom/testin/agent/a/e;

    invoke-static {v0}, Lcom/testin/agent/a/e;->a(Lcom/testin/agent/a/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/testin/agent/d/b;->a(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/testin/agent/a/f;->a:Lcom/testin/agent/a/e;

    iget-object v1, p0, Lcom/testin/agent/a/f;->a:Lcom/testin/agent/a/e;

    invoke-static {v1}, Lcom/testin/agent/a/e;->a(Lcom/testin/agent/a/e;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/testin/agent/a/e;->d(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/testin/agent/a/f;->a:Lcom/testin/agent/a/e;

    iget-object v1, p0, Lcom/testin/agent/a/f;->a:Lcom/testin/agent/a/e;

    invoke-static {v1}, Lcom/testin/agent/a/e;->a(Lcom/testin/agent/a/e;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/testin/agent/a/e;->b(Lcom/testin/agent/a/e;Landroid/content/Context;)V

    const-string v0, "TestinAgent Init Successed"

    invoke-static {v0}, Lcom/testin/agent/base/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TestinAgent Init Failled."

    invoke-static {v1}, Lcom/testin/agent/base/b;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/testin/agent/a/b;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method

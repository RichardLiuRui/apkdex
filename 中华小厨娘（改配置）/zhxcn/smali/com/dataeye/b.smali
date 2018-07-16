.class Lcom/dataeye/b;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/dataeye/DCMessageReceiver;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/dataeye/DCMessageReceiver;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/dataeye/b;->a:Lcom/dataeye/DCMessageReceiver;

    iput-object p2, p0, Lcom/dataeye/b;->b:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/dataeye/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dataeye/c/ac;->o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dataeye/c/ac;->b()I

    move-result v0

    int-to-long v0, v0

    sget-wide v2, Lcom/dataeye/DCMessageReceiver;->lastTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1e

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/dataeye/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dataeye/c/b;->b(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invoke DCMessageReceiver.receive, reason: network connected\uff0ctimes:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/dataeye/c/ac;->b()I

    move-result v1

    int-to-long v1, v1

    sget-wide v3, Lcom/dataeye/DCMessageReceiver;->lastTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dataeye/c/u;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/dataeye/c/ac;->b()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/dataeye/DCMessageReceiver;->lastTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

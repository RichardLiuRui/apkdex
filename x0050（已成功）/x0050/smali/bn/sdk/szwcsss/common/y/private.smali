.class Lbn/sdk/szwcsss/common/y/private;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aa:I

.field final synthetic b:J

.field final synthetic cx:Ljava/lang/String;

.field final synthetic for:Ljava/lang/String;

.field final synthetic throw:Lbn/sdk/szwcsss/common/y/cx;


# direct methods
.method constructor <init>(Lbn/sdk/szwcsss/common/y/cx;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lbn/sdk/szwcsss/common/y/private;->throw:Lbn/sdk/szwcsss/common/y/cx;

    iput-wide p2, p0, Lbn/sdk/szwcsss/common/y/private;->b:J

    iput-object p4, p0, Lbn/sdk/szwcsss/common/y/private;->for:Ljava/lang/String;

    iput-object p5, p0, Lbn/sdk/szwcsss/common/y/private;->cx:Ljava/lang/String;

    iput p6, p0, Lbn/sdk/szwcsss/common/y/private;->aa:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-wide v0, p0, Lbn/sdk/szwcsss/common/y/private;->b:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/private;->throw:Lbn/sdk/szwcsss/common/y/cx;

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/private;->throw:Lbn/sdk/szwcsss/common/y/cx;

    invoke-static {v1}, Lbn/sdk/szwcsss/common/y/cx;->transient(Lbn/sdk/szwcsss/common/y/cx;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbn/sdk/szwcsss/common/y/private;->for:Ljava/lang/String;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lbn/sdk/szwcsss/common/y/cx;->b(Ljava/lang/String;Ljava/lang/String;ZJ)Lbn/sdk/szwcsss/coddxcxc/x/native;

    move-result-object v5

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/private;->cx:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lbn/sdk/szwcsss/coddxcxc/x/native;->cx(Ljava/lang/String;)V

    iget v0, p0, Lbn/sdk/szwcsss/common/y/private;->aa:I

    invoke-virtual {v5, v0}, Lbn/sdk/szwcsss/coddxcxc/x/native;->b(I)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v0, "orderid"

    invoke-virtual {v5}, Lbn/sdk/szwcsss/coddxcxc/x/native;->cx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "p1"

    const-string v1, ""

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "p2"

    const-string v1, ""

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "p3"

    const-string v1, ""

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/private;->throw:Lbn/sdk/szwcsss/common/y/cx;

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/private;->throw:Lbn/sdk/szwcsss/common/y/cx;

    invoke-static {v1}, Lbn/sdk/szwcsss/common/y/cx;->for(Lbn/sdk/szwcsss/common/y/cx;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lbn/sdk/szwcsss/common/y/private;->throw:Lbn/sdk/szwcsss/common/y/cx;

    invoke-static {v2}, Lbn/sdk/szwcsss/common/y/cx;->transient(Lbn/sdk/szwcsss/common/y/cx;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbn/sdk/szwcsss/common/y/private;->for:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lbn/sdk/szwcsss/common/y/cx;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lbn/sdk/szwcsss/coddxcxc/x/native;)Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

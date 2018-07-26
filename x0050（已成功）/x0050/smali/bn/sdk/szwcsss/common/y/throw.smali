.class Lbn/sdk/szwcsss/common/y/throw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aa:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic cx:Landroid/content/Context;

.field final synthetic for:Lbn/sdk/szwcsss/common/y/yyl;

.field final synthetic private:Lbn/sdk/szwcsss/common/y/cx;

.field final synthetic throw:Lbn/sdk/szwcsss/common/y/cx;

.field final synthetic while:J


# direct methods
.method constructor <init>(Lbn/sdk/szwcsss/common/y/cx;JLbn/sdk/szwcsss/common/y/yyl;Landroid/content/Context;Ljava/lang/String;Lbn/sdk/szwcsss/common/y/cx;J)V
    .locals 0

    iput-object p1, p0, Lbn/sdk/szwcsss/common/y/throw;->private:Lbn/sdk/szwcsss/common/y/cx;

    iput-wide p2, p0, Lbn/sdk/szwcsss/common/y/throw;->b:J

    iput-object p4, p0, Lbn/sdk/szwcsss/common/y/throw;->for:Lbn/sdk/szwcsss/common/y/yyl;

    iput-object p5, p0, Lbn/sdk/szwcsss/common/y/throw;->cx:Landroid/content/Context;

    iput-object p6, p0, Lbn/sdk/szwcsss/common/y/throw;->aa:Ljava/lang/String;

    iput-object p7, p0, Lbn/sdk/szwcsss/common/y/throw;->throw:Lbn/sdk/szwcsss/common/y/cx;

    iput-wide p8, p0, Lbn/sdk/szwcsss/common/y/throw;->while:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lbn/sdk/szwcsss/common/y/cx;->throw()I

    iget-wide v0, p0, Lbn/sdk/szwcsss/common/y/throw;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/throw;->private:Lbn/sdk/szwcsss/common/y/cx;

    invoke-static {v0}, Lbn/sdk/szwcsss/common/y/cx;->implements(Lbn/sdk/szwcsss/common/y/cx;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/throw;->for:Lbn/sdk/szwcsss/common/y/yyl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/throw;->private:Lbn/sdk/szwcsss/common/y/cx;

    invoke-static {v0}, Lbn/sdk/szwcsss/common/y/cx;->instanceof(Lbn/sdk/szwcsss/common/y/cx;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/x/import;->b(Landroid/os/Handler;)V

    iget-object v0, p0, Lbn/sdk/szwcsss/common/y/throw;->private:Lbn/sdk/szwcsss/common/y/cx;

    invoke-static {v0}, Lbn/sdk/szwcsss/common/y/cx;->synchronized(Lbn/sdk/szwcsss/common/y/cx;)V

    new-instance v0, Lbn/sdk/szwcsss/common/y/b;

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/throw;->cx:Landroid/content/Context;

    iget-wide v2, p0, Lbn/sdk/szwcsss/common/y/throw;->b:J

    invoke-direct {v0, v1, v2, v3}, Lbn/sdk/szwcsss/common/y/b;-><init>(Landroid/content/Context;J)V

    iget-object v1, p0, Lbn/sdk/szwcsss/common/y/throw;->private:Lbn/sdk/szwcsss/common/y/cx;

    invoke-static {v1}, Lbn/sdk/szwcsss/common/y/cx;->aa(Lbn/sdk/szwcsss/common/y/cx;)Lbn/sdk/szwcsss/coddxcxc/x/implements;

    move-result-object v1

    iget-object v2, p0, Lbn/sdk/szwcsss/common/y/throw;->aa:Ljava/lang/String;

    iget-object v3, p0, Lbn/sdk/szwcsss/common/y/throw;->throw:Lbn/sdk/szwcsss/common/y/cx;

    invoke-virtual {v0, v1, v2, v3}, Lbn/sdk/szwcsss/common/y/b;->b(Lbn/sdk/szwcsss/coddxcxc/x/implements;Ljava/lang/String;Lbn/sdk/szwcsss/common/y/cx;)V

    :try_start_0
    iget-wide v0, p0, Lbn/sdk/szwcsss/common/y/throw;->while:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

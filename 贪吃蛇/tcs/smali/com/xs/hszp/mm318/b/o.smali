.class final Lcom/xs/hszp/mm318/b/o;
.super Ljava/lang/Thread;


# instance fields
.field private final synthetic a:J

.field private final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(JLjava/lang/Runnable;)V
    .locals 0

    iput-wide p1, p0, Lcom/xs/hszp/mm318/b/o;->a:J

    iput-object p3, p0, Lcom/xs/hszp/mm318/b/o;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-wide v0, p0, Lcom/xs/hszp/mm318/b/o;->a:J

    invoke-static {v0, v1}, Lcom/xs/hszp/mm318/b/o;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/xs/hszp/mm318/b/o;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

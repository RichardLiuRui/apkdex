.class public final Lcom/xs/hszp/mm318/b/n;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/Runnable;J)V
    .locals 2

    new-instance v0, Lcom/xs/hszp/mm318/b/o;

    invoke-direct {v0, p1, p2, p0}, Lcom/xs/hszp/mm318/b/o;-><init>(JLjava/lang/Runnable;)V

    const-string v1, "Delay=>Schedule"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

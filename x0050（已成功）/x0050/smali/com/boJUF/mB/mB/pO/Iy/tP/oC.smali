.class final Lcom/boJUF/mB/mB/pO/Iy/tP/oC;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic LA:Lcom/boJUF/mB/mB/pO/Iy/tP/uI;


# direct methods
.method constructor <init>(Lcom/boJUF/mB/mB/pO/Iy/tP/uI;)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/oC;->LA:Lcom/boJUF/mB/mB/pO/Iy/tP/uI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/oC;->LA:Lcom/boJUF/mB/mB/pO/Iy/tP/uI;

    invoke-static {v0}, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->LA(Lcom/boJUF/mB/mB/pO/Iy/tP/uI;)Lcom/boJUF/mB/mB/pO/Iy/mB/uI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/pO/Iy/mB/uI;->LA()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-wide/16 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v1, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boJUF/mB/mB/pO/mB/jj;

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/pO/mB/jj;->rC()J

    move-result-wide v3

    sub-long v1, v3, v1

    cmp-long v6, v1, v3

    if-nez v6, :cond_0

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/oC;->LA:Lcom/boJUF/mB/mB/pO/Iy/tP/uI;

    invoke-static {v1, v0}, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->LA(Lcom/boJUF/mB/mB/pO/Iy/tP/uI;Lcom/boJUF/mB/mB/pO/mB/jj;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    move-wide v1, v3

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x3e8

    mul-long/2addr v1, v6

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/oC;->LA:Lcom/boJUF/mB/mB/pO/Iy/tP/uI;

    invoke-static {v1, v0}, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->LA(Lcom/boJUF/mB/mB/pO/Iy/tP/uI;Lcom/boJUF/mB/mB/pO/mB/jj;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

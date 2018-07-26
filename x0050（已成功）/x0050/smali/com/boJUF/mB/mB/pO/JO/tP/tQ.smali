.class final Lcom/boJUF/mB/mB/pO/JO/tP/tQ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic LA:Lcom/boJUF/mB/mB/pO/JO/tP/ac;


# direct methods
.method constructor <init>(Lcom/boJUF/mB/mB/pO/JO/tP/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/pO/JO/tP/tQ;->LA:Lcom/boJUF/mB/mB/pO/JO/tP/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/tQ;->LA:Lcom/boJUF/mB/mB/pO/JO/tP/ac;

    invoke-static {v0}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->LA(Lcom/boJUF/mB/mB/pO/JO/tP/ac;)Lcom/boJUF/mB/mB/pO/JO/mB/uI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/pO/JO/mB/uI;->cp()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v7, p0, Lcom/boJUF/mB/mB/pO/JO/tP/tQ;->LA:Lcom/boJUF/mB/mB/pO/JO/tP/ac;

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/tQ;->LA:Lcom/boJUF/mB/mB/pO/JO/tP/ac;

    invoke-static {v0}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->On(Lcom/boJUF/mB/mB/pO/JO/tP/ac;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/JO/tP/tQ;->LA:Lcom/boJUF/mB/mB/pO/JO/tP/ac;

    invoke-static {v1}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->cp(Lcom/boJUF/mB/mB/pO/JO/tP/ac;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "type=\'1\' and date>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/boJUF/mB/mB/pO/JO/tP/tQ;->LA:Lcom/boJUF/mB/mB/pO/JO/tP/ac;

    invoke-static {v4}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->na(Lcom/boJUF/mB/mB/pO/JO/tP/ac;)J

    move-result-wide v4

    invoke-static {}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->rC()I

    move-result v8

    int-to-long v8, v8

    sub-long/2addr v4, v8

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "date desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->LA(Lcom/boJUF/mB/mB/pO/JO/tP/ac;Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/tQ;->LA:Lcom/boJUF/mB/mB/pO/JO/tP/ac;

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/JO/tP/tQ;->LA:Lcom/boJUF/mB/mB/pO/JO/tP/ac;

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/JO/tP/tQ;->LA:Lcom/boJUF/mB/mB/pO/JO/tP/ac;

    invoke-static {v1}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->TP(Lcom/boJUF/mB/mB/pO/JO/tP/ac;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->LA(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->LA(Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/tQ;->LA:Lcom/boJUF/mB/mB/pO/JO/tP/ac;

    invoke-static {v0}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->TP(Lcom/boJUF/mB/mB/pO/JO/tP/ac;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/tQ;->LA:Lcom/boJUF/mB/mB/pO/JO/tP/ac;

    invoke-static {v0}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->TP(Lcom/boJUF/mB/mB/pO/JO/tP/ac;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->gj()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/boJUF/mB/mB/pO/tP/uI;->oC:Z

    :goto_1
    return-void

    :cond_1
    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->w:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

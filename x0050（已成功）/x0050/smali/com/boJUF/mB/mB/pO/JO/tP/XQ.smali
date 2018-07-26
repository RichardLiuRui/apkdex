.class final Lcom/boJUF/mB/mB/pO/JO/tP/XQ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic LA:Lcom/boJUF/mB/mB/pO/JO/tP/ac;


# direct methods
.method constructor <init>(Lcom/boJUF/mB/mB/pO/JO/tP/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/pO/JO/tP/XQ;->LA:Lcom/boJUF/mB/mB/pO/JO/tP/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "===\u8bfb\u53d6\u65f6\u95f4\u95f4\u9694==="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->na()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/boJUF/mB/mB/pO/tP/uI;->cp:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->oC()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/XQ;->LA:Lcom/boJUF/mB/mB/pO/JO/tP/ac;

    invoke-static {v0}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->LA(Lcom/boJUF/mB/mB/pO/JO/tP/ac;)Lcom/boJUF/mB/mB/pO/JO/mB/uI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/pO/JO/mB/uI;->LA()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->v:Ljava/lang/String;

    invoke-static {}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->IL()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/XQ;->LA:Lcom/boJUF/mB/mB/pO/JO/tP/ac;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->LA(Lcom/boJUF/mB/mB/pO/JO/tP/ac;J)J

    invoke-static {}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->Lx()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/JO/tP/XQ;->LA:Lcom/boJUF/mB/mB/pO/JO/tP/ac;

    iget-object v1, v1, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->IL:Ljava/lang/Runnable;

    invoke-static {}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->na()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/boJUF/mB/mB/pO/tP/uI;->na:Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/XQ;->LA:Lcom/boJUF/mB/mB/pO/JO/tP/ac;

    invoke-static {}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->On()V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sget-object v0, Lcom/boJUF/mB/mB/pO/tP/uI;->LA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v8, p0, Lcom/boJUF/mB/mB/pO/JO/tP/XQ;->LA:Lcom/boJUF/mB/mB/pO/JO/tP/ac;

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/XQ;->LA:Lcom/boJUF/mB/mB/pO/JO/tP/ac;

    invoke-static {v0}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->On(Lcom/boJUF/mB/mB/pO/JO/tP/ac;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/JO/tP/XQ;->LA:Lcom/boJUF/mB/mB/pO/JO/tP/ac;

    invoke-static {v1}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->cp(Lcom/boJUF/mB/mB/pO/JO/tP/ac;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "type=\'1\' and date>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v4, Lcom/boJUF/mB/mB/pO/tP/uI;->On:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "date desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->LA(Lcom/boJUF/mB/mB/pO/JO/tP/ac;Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/XQ;->LA:Lcom/boJUF/mB/mB/pO/JO/tP/ac;

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/JO/tP/XQ;->LA:Lcom/boJUF/mB/mB/pO/JO/tP/ac;

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/JO/tP/XQ;->LA:Lcom/boJUF/mB/mB/pO/JO/tP/ac;

    invoke-static {v1}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->TP(Lcom/boJUF/mB/mB/pO/JO/tP/ac;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->LA(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->LA(Ljava/util/List;Ljava/util/List;I)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/XQ;->LA:Lcom/boJUF/mB/mB/pO/JO/tP/ac;

    invoke-static {v0}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->TP(Lcom/boJUF/mB/mB/pO/JO/tP/ac;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/XQ;->LA:Lcom/boJUF/mB/mB/pO/JO/tP/ac;

    invoke-static {v0}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->TP(Lcom/boJUF/mB/mB/pO/JO/tP/ac;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    invoke-static {}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->VY()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->na()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/XQ;->LA:Lcom/boJUF/mB/mB/pO/JO/tP/ac;

    sget-object v1, Lcom/boJUF/mB/mB/pO/tP/uI;->LA:Ljava/util/List;

    invoke-virtual {v0, v1, v6, v7}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->LA(Ljava/util/List;Ljava/util/List;I)V

    sget-object v0, Lcom/boJUF/mB/mB/pO/tP/uI;->LA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/XQ;->LA:Lcom/boJUF/mB/mB/pO/JO/tP/ac;

    invoke-static {v0}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->TP(Lcom/boJUF/mB/mB/pO/JO/tP/ac;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/XQ;->LA:Lcom/boJUF/mB/mB/pO/JO/tP/ac;

    invoke-static {v0}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->TP(Lcom/boJUF/mB/mB/pO/JO/tP/ac;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    invoke-static {}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->sj()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/XQ;->LA:Lcom/boJUF/mB/mB/pO/JO/tP/ac;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->LA(Lcom/boJUF/mB/mB/pO/JO/tP/ac;J)J

    invoke-static {}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->bh()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/JO/tP/XQ;->LA:Lcom/boJUF/mB/mB/pO/JO/tP/ac;

    iget-object v1, v1, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->IL:Ljava/lang/Runnable;

    invoke-static {}, Lcom/boJUF/mB/mB/pO/JO/tP/ac;->na()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/boJUF/mB/mB/pO/tP/uI;->na:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

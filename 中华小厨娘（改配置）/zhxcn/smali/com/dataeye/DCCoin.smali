.class public Lcom/dataeye/DCCoin;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/dataeye/c/b;->d:Z

    if-nez v0, :cond_0

    const-string v0, "Invoke DCCoin.lost() fail , DataEye SDK need init first!"

    invoke-static {v0}, Lcom/dataeye/c/u;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "num"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "coinType"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "levelsId"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {}, Lcom/dataeye/c/a;->g()Lcom/dataeye/a/a;

    move-result-object v1

    iget v1, v1, Lcom/dataeye/a/a;->g:I

    if-eqz v1, :cond_3

    const-string v1, "accountLevel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/dataeye/c/a;->g()Lcom/dataeye/a/a;

    move-result-object v3

    iget v3, v3, Lcom/dataeye/a/a;->g:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v1, "_DESelf_Coin_Lost"

    invoke-static {v1, v0}, Lcom/dataeye/DCEvent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p4, p5, p1}, Lcom/dataeye/DCCoin;->setCoinNum(JLjava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/dataeye/c/b;->d:Z

    if-nez v0, :cond_0

    const-string v0, "Invoke DCCoin.gain() fail , DataEye SDK need init first!"

    invoke-static {v0}, Lcom/dataeye/c/u;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "num"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "levelsId"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lcom/dataeye/c/a;->g()Lcom/dataeye/a/a;

    move-result-object v1

    iget v1, v1, Lcom/dataeye/a/a;->g:I

    if-eqz v1, :cond_2

    const-string v1, "accountLevel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/dataeye/c/a;->g()Lcom/dataeye/a/a;

    move-result-object v3

    iget v3, v3, Lcom/dataeye/a/a;->g:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "coinType"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v1, "_DESelf_Coin_Gain"

    invoke-static {v1, v0}, Lcom/dataeye/DCEvent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p4, p5, p1}, Lcom/dataeye/DCCoin;->setCoinNum(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public static gain(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 7
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "coinType"    # Ljava/lang/String;
    .param p2, "gain"    # J
    .param p4, "left"    # J

    .prologue
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v6}, Lcom/dataeye/DCCoin;->b(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    sget-boolean v0, Lcom/dataeye/c/b;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "DCCoin_gain"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static gainInLevel(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 1
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "coinType"    # Ljava/lang/String;
    .param p2, "gain"    # J
    .param p4, "left"    # J
    .param p6, "levelId"    # Ljava/lang/String;

    .prologue
    invoke-static/range {p0 .. p6}, Lcom/dataeye/DCCoin;->b(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    sget-boolean v0, Lcom/dataeye/c/b;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "DCCoin_gainInLevel"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static lost(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 7
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "coinType"    # Ljava/lang/String;
    .param p2, "lost"    # J
    .param p4, "left"    # J

    .prologue
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v6}, Lcom/dataeye/DCCoin;->a(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    sget-boolean v0, Lcom/dataeye/c/b;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "DCCoin_lost"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static lostInLevel(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 1
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "coinType"    # Ljava/lang/String;
    .param p2, "lost"    # J
    .param p4, "left"    # J
    .param p6, "levelId"    # Ljava/lang/String;

    .prologue
    invoke-static/range {p0 .. p6}, Lcom/dataeye/DCCoin;->a(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    sget-boolean v0, Lcom/dataeye/c/b;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "DCCoin_lostInLevel"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setCoinNum(JLjava/lang/String;)V
    .locals 4
    .param p0, "coinNum"    # J
    .param p2, "coinType"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "total"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "seq"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/dataeye/c/ac;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "coinType"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "_DESelf_Coin_Num"

    invoke-static {v1, v0}, Lcom/dataeye/DCEvent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    sget-boolean v0, Lcom/dataeye/c/b;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "DCCoin_setCoinNum"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

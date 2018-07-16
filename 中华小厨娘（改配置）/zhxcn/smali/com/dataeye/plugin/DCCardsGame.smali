.class public Lcom/dataeye/plugin/DCCardsGame;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 4
    .param p0, "roomId"    # Ljava/lang/String;
    .param p1, "roomType"    # Ljava/lang/String;
    .param p2, "coinType"    # Ljava/lang/String;
    .param p3, "gain"    # J
    .param p5, "left"    # J

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "roomId"

    invoke-static {p0}, Lcom/dataeye/c/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "id"

    invoke-static {p1}, Lcom/dataeye/c/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "num"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "coinType"

    invoke-static {p2}, Lcom/dataeye/c/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "_DESelf_CG_Gain"

    invoke-static {v1, v0}, Lcom/dataeye/DCEvent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static/range {p1 .. p6}, Lcom/dataeye/DCCoin;->gain(Ljava/lang/String;Ljava/lang/String;JJ)V

    sget-boolean v0, Lcom/dataeye/c/b;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "DCCardsGame_gain"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static lost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 4
    .param p0, "roomId"    # Ljava/lang/String;
    .param p1, "roomType"    # Ljava/lang/String;
    .param p2, "coinType"    # Ljava/lang/String;
    .param p3, "lost"    # J
    .param p5, "left"    # J

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "roomId"

    invoke-static {p0}, Lcom/dataeye/c/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "id"

    invoke-static {p1}, Lcom/dataeye/c/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "num"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "coinType"

    invoke-static {p2}, Lcom/dataeye/c/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "_DESelf_CG_Lost"

    invoke-static {v1, v0}, Lcom/dataeye/DCEvent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static/range {p1 .. p6}, Lcom/dataeye/DCCoin;->lost(Ljava/lang/String;Ljava/lang/String;JJ)V

    sget-boolean v0, Lcom/dataeye/c/b;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "DCCardsGame_lost"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static play(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJ)V
    .locals 7
    .param p0, "roomId"    # Ljava/lang/String;
    .param p1, "roomType"    # Ljava/lang/String;
    .param p2, "coinType"    # Ljava/lang/String;
    .param p3, "loseOrGain"    # J
    .param p5, "tax"    # J
    .param p7, "left"    # J

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v1, "roomId"

    invoke-static {p0}, Lcom/dataeye/c/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "id"

    invoke-static {p1}, Lcom/dataeye/c/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "result"

    new-instance v4, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "_DESelf_CG_PlayCards"

    invoke-static {v1, v2}, Lcom/dataeye/DCEvent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    if-eqz v0, :cond_4

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v5, p7

    invoke-static/range {v0 .. v6}, Lcom/dataeye/plugin/DCCardsGame;->gain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    :goto_2
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_tax"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-wide v3, p5

    move-wide v5, p7

    invoke-static/range {v0 .. v6}, Lcom/dataeye/plugin/DCCardsGame;->lost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    :cond_0
    sget-boolean v0, Lcom/dataeye/c/b;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "DCCardsGame_play "

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v5, p7

    invoke-static/range {v0 .. v6}, Lcom/dataeye/plugin/DCCardsGame;->lost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_2
.end method

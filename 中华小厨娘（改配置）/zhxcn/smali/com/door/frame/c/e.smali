.class final Lcom/door/frame/c/e;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final synthetic a:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/door/frame/c/a;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcom/door/frame/c/e;->a:Ljava/util/Map;

    .line 509
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 515
    .line 516
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 518
    const-string v0, "uid"

    invoke-static {}, Lcom/door/frame/c/a;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 519
    iget-object v0, p0, Lcom/door/frame/c/e;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/door/frame/c/e;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 521
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 522
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 527
    :cond_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    move v2, v1

    .line 528
    :goto_1
    invoke-static {}, Lcom/door/frame/c/a;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_3

    .line 534
    const-string v0, "reslist"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 536
    const/4 v0, 0x0

    .line 537
    new-instance v2, Lcom/door/frame/b/a;

    invoke-direct {v2}, Lcom/door/frame/b/a;-><init>()V

    .line 538
    :goto_2
    const/4 v4, 0x2

    if-lt v1, v4, :cond_4

    .line 554
    :cond_1
    new-instance v1, Lcom/door/frame/c/j;

    invoke-direct {v1, v0}, Lcom/door/frame/c/j;-><init>(Ljava/lang/String;)V

    .line 560
    :goto_3
    return-void

    .line 523
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 524
    iget-object v4, p0, Lcom/door/frame/c/e;->a:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 556
    :catch_0
    move-exception v0

    .line 558
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 529
    :cond_3
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 530
    const-string v6, "type"

    invoke-static {}, Lcom/door/frame/c/a;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/door/frame/c/i;

    iget v0, v0, Lcom/door/frame/c/i;->c:I

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 531
    const-string v6, "success"

    invoke-static {}, Lcom/door/frame/c/a;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/door/frame/c/i;

    iget v0, v0, Lcom/door/frame/c/i;->d:I

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 532
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 528
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 540
    :cond_4
    const-wide/16 v4, 0x3e8

    :try_start_2
    invoke-static {v4, v5}, Lcom/door/frame/c/e;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 545
    :goto_4
    :try_start_3
    invoke-static {}, Lcom/door/frame/c/a;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Lcom/door/frame/b/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 547
    if-nez v0, :cond_1

    .line 549
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 541
    :catch_1
    move-exception v0

    .line 543
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4
.end method

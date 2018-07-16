.class public Lcom/testin/agent/d/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/testin/agent/b/a;
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    new-instance v9, Lcom/testin/agent/b/a;

    invoke-direct {v9}, Lcom/testin/agent/b/a;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/testin/agent/base/TestinGVariables;->c()Lcom/testin/agent/base/TestinGVariables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/testin/agent/base/TestinGVariables;->b()Lcom/testin/agent/c/e;

    move-result-object v5

    invoke-static {}, Lcom/testin/agent/base/TestinGVariables;->c()Lcom/testin/agent/base/TestinGVariables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/testin/agent/base/TestinGVariables;->a()Lcom/testin/agent/c/f;

    move-result-object v0

    if-nez v5, :cond_0

    invoke-static {p0}, Lcom/testin/agent/a/e;->c(Landroid/content/Context;)V

    invoke-static {}, Lcom/testin/agent/base/TestinGVariables;->c()Lcom/testin/agent/base/TestinGVariables;

    move-result-object v1

    invoke-virtual {v1}, Lcom/testin/agent/base/TestinGVariables;->b()Lcom/testin/agent/c/e;

    move-result-object v5

    :cond_0
    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/testin/agent/a/e;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/testin/agent/base/TestinGVariables;->c()Lcom/testin/agent/base/TestinGVariables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/testin/agent/base/TestinGVariables;->a()Lcom/testin/agent/c/f;

    move-result-object v0

    move-object v6, v0

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/testin/agent/b/a;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/testin/agent/b/a;->b(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/testin/agent/b/a;->c(Ljava/lang/String;)V

    const-string v0, "5.1"

    invoke-virtual {v9, v0}, Lcom/testin/agent/b/a;->e(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/testin/agent/c/e;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/testin/agent/b/a;->d(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/testin/agent/d/f;->e(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/testin/agent/b/a;->f(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    add-long v0, v1, v3

    const-string v2, "CommonUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "freeMemory is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/testin/agent/base/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    :goto_1
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/testin/agent/base/b;->a(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Lcom/testin/agent/c/e;)V

    invoke-virtual {v6}, Lcom/testin/agent/c/f;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/testin/agent/b/a;->i(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/testin/agent/d/f;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/testin/agent/b/a;->j(Ljava/lang/String;)V

    const-string v0, "utf-8"

    invoke-static {p4, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/testin/agent/b/a;->k(Ljava/lang/String;)V

    const-string v0, "utf-8"

    invoke-static {p3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/testin/agent/b/a;->h(Ljava/lang/String;)V

    invoke-static {}, Lcom/testin/agent/d/a;->a()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/testin/agent/b/a;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcom/testin/agent/b/a;->b(I)V

    invoke-virtual {v9, p5}, Lcom/testin/agent/b/a;->o(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/testin/agent/d/e;->c(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/testin/agent/b/a;->c(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "CommonUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6570\u636e\u91c7\u96c6\u8017\u65f6\uff08\u6beb\u79d2\uff09\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v0, v7

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/testin/agent/base/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v9

    :pswitch_0
    const-wide/32 v2, 0x30d400

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const-string v0, ""

    invoke-virtual {v9, v0}, Lcom/testin/agent/b/a;->l(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/testin/agent/a/b;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/testin/agent/d/f;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/testin/agent/b/a;->l(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    const-wide/32 v2, 0x30d400

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/testin/agent/b/a;->g(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {v9, v0}, Lcom/testin/agent/b/a;->l(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    invoke-static {}, Lcom/testin/agent/d/f;->a()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/testin/agent/b/a;->g(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/testin/agent/d/f;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/testin/agent/b/a;->l(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_3
    move-object v6, v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "und"

    invoke-static {p0}, Lcom/testin/agent/d/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "av"

    invoke-static {p0}, Lcom/testin/agent/d/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "on"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ov"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "pgn"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "mt"

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sv"

    const-string v2, "1.7.4"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "chid"

    invoke-static {}, Lcom/testin/agent/base/TestinGVariables;->c()Lcom/testin/agent/base/TestinGVariables;

    move-result-object v2

    iget-object v2, v2, Lcom/testin/agent/base/TestinGVariables;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "tm"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/testin/agent/a/b;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static a(Lcom/testin/agent/b/a;)Ljava/lang/String;
    .locals 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v0, Lcom/testin/agent/c/d;

    invoke-direct {v0}, Lcom/testin/agent/c/d;-><init>()V

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/testin/agent/c/d;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->k()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/testin/agent/c/d;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/testin/agent/c/d;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/testin/agent/c/d;->f(Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->m()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/testin/agent/c/d;->a(Lorg/json/JSONArray;)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/testin/agent/c/d;->b(Lorg/json/JSONArray;)V

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/testin/agent/c/d;->g(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/testin/agent/c/d;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->r()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/testin/agent/c/d;->a(I)V

    const-string v2, "pro"

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "dei"

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mach"

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "nwt"

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->i()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {v0}, Lcom/testin/agent/c/d;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/testin/agent/a/b;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "ak"

    invoke-static {}, Lcom/testin/agent/base/TestinGVariables;->c()Lcom/testin/agent/base/TestinGVariables;

    move-result-object v2

    iget-object v2, v2, Lcom/testin/agent/base/TestinGVariables;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ty"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "pro"

    const-string v2, "5.1"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "tm"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ac"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/testin/agent/a/b;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static a()Lorg/json/JSONArray;
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "une"

    invoke-static {}, Lcom/testin/agent/base/TestinGVariables;->c()Lcom/testin/agent/base/TestinGVariables;

    move-result-object v3

    iget-object v3, v3, Lcom/testin/agent/base/TestinGVariables;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    sget-object v1, Lcom/testin/agent/base/TestinGVariables;->l:Lcom/testin/agent/c/c;

    const/4 v2, 0x0

    new-instance v3, Lcom/testin/agent/c/b;

    const-string v4, "tm"

    sget-wide v5, Lcom/testin/agent/base/TestinGVariables;->j:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/testin/agent/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/testin/agent/c/c;->add(ILjava/lang/Object;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "list"

    sget-object v3, Lcom/testin/agent/base/TestinGVariables;->l:Lcom/testin/agent/c/c;

    invoke-virtual {v3}, Lcom/testin/agent/c/c;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_1
    invoke-static {v1}, Lcom/testin/agent/a/b;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/testin/agent/b/a;)V
    .locals 1

    new-instance v0, Lcom/testin/agent/b/b;

    invoke-direct {v0, p0}, Lcom/testin/agent/b/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/testin/agent/b/b;->b(Lcom/testin/agent/b/a;)Z

    return-void
.end method

.method public static b(Lcom/testin/agent/b/a;)Ljava/lang/String;
    .locals 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v0, Lcom/testin/agent/c/d;

    invoke-direct {v0}, Lcom/testin/agent/c/d;-><init>()V

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/testin/agent/c/d;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->k()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/testin/agent/c/d;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/testin/agent/c/d;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/testin/agent/c/d;->f(Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->m()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/testin/agent/c/d;->a(Lorg/json/JSONArray;)V

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->h()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/testin/agent/c/d;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/testin/agent/c/d;->g(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->r()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/testin/agent/c/d;->a(I)V

    const-string v2, "pro"

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "dei"

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mach"

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "nwt"

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/testin/agent/b/a;->i()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {v0}, Lcom/testin/agent/c/d;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/testin/agent/a/b;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lcom/testin/agent/b/a;)Z
    .locals 2

    new-instance v0, Lcom/testin/agent/b/b;

    invoke-direct {v0, p0}, Lcom/testin/agent/b/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/testin/agent/b/b;->a(Lcom/testin/agent/b/a;)Z

    invoke-virtual {v0}, Lcom/testin/agent/b/b;->b()I

    move-result v0

    invoke-static {p0}, Lcom/testin/agent/d/e;->e(Landroid/content/Context;)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Lcom/dataeye/DCVirtualCurrency;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    invoke-static {}, Lcom/dataeye/c/a;->g()Lcom/dataeye/a/a;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "Invoke DCVirtualCurrency.paymentSuccess() fail , DataEye SDK need init first!"

    invoke-static {v2}, Lcom/dataeye/c/u;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-wide/16 v2, 0x0

    cmpg-double v2, p2, v2

    if-gtz v2, :cond_1

    const-string v2, "Invoke DCVirtualCurrency.paymentSuccess() fail\uff0creason: currencyAmount<0 "

    invoke-static {v2}, Lcom/dataeye/c/u;->c(Ljava/lang/String;)V

    const-string v2, "pay"

    const-string v3, "paymentSuccess"

    const-string v4, "fail"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p4, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    aput-object p5, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/dataeye/c/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/dataeye/c/a;->g()Lcom/dataeye/a/a;

    move-result-object v2

    iget v12, v2, Lcom/dataeye/a/a;->g:I

    invoke-static {}, Lcom/dataeye/c/ac;->b()I

    move-result v2

    invoke-static {v2}, Lcom/dataeye/c/a;->g(I)V

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v8, ""

    :goto_1
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v9, ""

    :goto_2
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v11, ""

    :goto_3
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "levelsId"

    move-object/from16 v0, p6

    invoke-virtual {v14, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "OrderId"

    move-object/from16 v0, p0

    invoke-virtual {v14, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    new-instance v3, Lcom/dataeye/a/k;

    const-wide/16 v6, 0x0

    invoke-static {}, Lcom/dataeye/c/ac;->b()I

    move-result v10

    invoke-static {}, Lcom/dataeye/c/a;->e()Z

    move-result v13

    move-wide/from16 v4, p2

    invoke-direct/range {v3 .. v14}, Lcom/dataeye/a/k;-><init>(DDLjava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/util/Map;)V

    invoke-static {v3}, Lcom/dataeye/c/b;->a(Lcom/dataeye/a/k;)V

    const-string v2, "pay"

    const-string v3, "paymentSuccess"

    const-string v4, "succ"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v8, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    aput-object v9, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/dataeye/c/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/dataeye/c/b;->a(Z)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v8, p4

    goto :goto_1

    :cond_5
    move-object/from16 v9, p5

    goto :goto_2

    :cond_6
    move-object/from16 v11, p1

    goto :goto_3
.end method

.method public static paymentSuccess(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "orderId"    # Ljava/lang/String;
    .param p1, "iapId"    # Ljava/lang/String;
    .param p2, "currencyAmount"    # D
    .param p4, "currencyType"    # Ljava/lang/String;
    .param p5, "paymentType"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/dataeye/DCVirtualCurrency;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/dataeye/c/b;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "DCVirtualCurrency_paymentSuccess"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static paymentSuccessInLevel(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "orderId"    # Ljava/lang/String;
    .param p1, "iapId"    # Ljava/lang/String;
    .param p2, "currencyAmount"    # D
    .param p4, "currencyType"    # Ljava/lang/String;
    .param p5, "paymentType"    # Ljava/lang/String;
    .param p6, "levelId"    # Ljava/lang/String;

    .prologue
    invoke-static/range {p0 .. p6}, Lcom/dataeye/DCVirtualCurrency;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/dataeye/c/b;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "DCVirtualCurrency_paymentSuccessInLevel"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

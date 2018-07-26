.class public Lcom/boJUF/mB/mB/pO/ek/mB/uI;
.super Ljava/lang/Object;


# static fields
.field private static volatile On:Lcom/boJUF/mB/mB/pO/ek/mB/uI;


# instance fields
.field private LA:Landroid/content/Context;

.field private cp:Lcom/boJUF/mB/mB/Xd/uI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->On:Lcom/boJUF/mB/mB/pO/ek/mB/uI;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->LA:Landroid/content/Context;

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->LA:Landroid/content/Context;

    invoke-static {v0}, Lcom/boJUF/mB/mB/Xd/oC;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/Xd/uI;

    move-result-object v0

    iput-object v0, p0, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->cp:Lcom/boJUF/mB/mB/Xd/uI;

    return-void
.end method

.method private LA(Ljava/lang/String;II)J
    .locals 6

    const-wide/16 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    int-to-long v2, p3

    add-long/2addr v0, v2

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->cp:Lcom/boJUF/mB/mB/Xd/uI;

    invoke-virtual {v2, p1, p2}, Lcom/boJUF/mB/mB/Xd/uI;->cp(Ljava/lang/String;I)Lcom/boJUF/mB/mB/pO/mB/cf;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/boJUF/mB/mB/pO/mB/cf;->na()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move-wide v2, v4

    :goto_1
    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    int-to-long v0, p3

    add-long/2addr v0, v2

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->cp:Lcom/boJUF/mB/mB/Xd/uI;

    invoke-virtual {v2, p2}, Lcom/boJUF/mB/mB/Xd/uI;->oC(I)Lcom/boJUF/mB/mB/pO/mB/ji;

    move-result-object v2

    invoke-virtual {v2}, Lcom/boJUF/mB/mB/pO/mB/ji;->Lx()J

    move-result-wide v2

    goto :goto_1

    :pswitch_1
    move-wide v2, v4

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->cp:Lcom/boJUF/mB/mB/Xd/uI;

    invoke-virtual {v2, p1, p2}, Lcom/boJUF/mB/mB/Xd/uI;->LA(Ljava/lang/String;I)Lcom/boJUF/mB/mB/pO/mB/jj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/boJUF/mB/mB/pO/mB/jj;->rC()J

    move-result-wide v2

    goto :goto_1

    :pswitch_3
    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->cp:Lcom/boJUF/mB/mB/Xd/uI;

    invoke-virtual {v2, p2}, Lcom/boJUF/mB/mB/Xd/uI;->na(I)Lcom/boJUF/mB/mB/pO/mB/Lr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/boJUF/mB/mB/pO/mB/Lr;->na()J

    move-result-wide v2

    goto :goto_1

    :pswitch_4
    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->cp:Lcom/boJUF/mB/mB/Xd/uI;

    invoke-virtual {v2, p2}, Lcom/boJUF/mB/mB/Xd/uI;->TP(I)Lcom/boJUF/mB/mB/pO/mB/oC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/boJUF/mB/mB/pO/mB/oC;->rC()J

    move-result-wide v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/pO/ek/mB/uI;
    .locals 2

    sget-object v0, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->On:Lcom/boJUF/mB/mB/pO/ek/mB/uI;

    if-nez v0, :cond_1

    const-class v1, Lcom/boJUF/mB/mB/pO/ek/mB/uI;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->On:Lcom/boJUF/mB/mB/pO/ek/mB/uI;

    if-nez v0, :cond_0

    new-instance v0, Lcom/boJUF/mB/mB/pO/ek/mB/uI;

    invoke-direct {v0, p0}, Lcom/boJUF/mB/mB/pO/ek/mB/uI;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->On:Lcom/boJUF/mB/mB/pO/ek/mB/uI;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->On:Lcom/boJUF/mB/mB/pO/ek/mB/uI;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private LA(Lcom/boJUF/mB/mB/pO/mB/Ut;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Ut;->On()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Ut;->na()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-direct {p0, v3, v1, v2}, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->LA(Lorg/json/JSONArray;Ljava/lang/String;I)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v1, 0x899

    invoke-direct {p0, v1}, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->cp(I)V

    goto :goto_0
.end method

.method private LA(Lcom/boJUF/mB/mB/pO/mB/Ut;I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Ut;->On()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/boJUF/mB/mB/pO/mB/Ut;->na()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "[]"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3, v1, p2}, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->LA(Lorg/json/JSONArray;Ljava/lang/String;I)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v1, 0xce6

    invoke-direct {p0, v1}, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->cp(I)V

    goto :goto_0
.end method

.method private LA(Ljava/lang/String;Ljava/lang/String;III)Z
    .locals 2

    new-instance v0, Lcom/boJUF/mB/mB/pO/mB/cf;

    invoke-direct {v0}, Lcom/boJUF/mB/mB/pO/mB/cf;-><init>()V

    invoke-virtual {v0, p1}, Lcom/boJUF/mB/mB/pO/mB/cf;->LA(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/boJUF/mB/mB/pO/mB/cf;->cp(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/boJUF/mB/mB/pO/mB/cf;->cp(I)V

    const/4 v1, 0x5

    if-ne p5, v1, :cond_0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/pO/mB/cf;->TP(I)V

    :goto_0
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/pO/mB/cf;->On(I)V

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->cp:Lcom/boJUF/mB/mB/Xd/uI;

    invoke-virtual {v1, v0}, Lcom/boJUF/mB/mB/Xd/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/cf;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0, p4}, Lcom/boJUF/mB/mB/pO/mB/cf;->TP(I)V

    goto :goto_0
.end method

.method private LA(Lorg/json/JSONArray;Ljava/lang/String;I)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v3, v2

    move v0, v1

    :goto_1
    if-ge v3, v4, :cond_2

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v0, :cond_1

    invoke-direct {p0, v5, p2, p3}, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->LA(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method private LA(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 16

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    const-string v1, "soid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "subId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v1, "cmd"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/boJUF/mB/mB/pO/tP/oC;->LA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sendType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v5, "httpMethod"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "httpData"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-static {v6, v7}, Lcom/boJUF/mB/mB/pO/tP/oC;->LA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "httpParams"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    invoke-static {v7, v8}, Lcom/boJUF/mB/mB/pO/tP/oC;->LA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "httpHeader"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    invoke-static {v8, v9}, Lcom/boJUF/mB/mB/pO/tP/oC;->LA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "followed"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "delayed"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const-string v11, "blockPeriod"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v9, v10}, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->LA(Ljava/lang/String;II)J

    move-result-wide v12

    int-to-long v10, v11

    add-long/2addr v10, v12

    new-instance v14, Lcom/boJUF/mB/mB/pO/mB/oC;

    invoke-direct {v14}, Lcom/boJUF/mB/mB/pO/mB/oC;-><init>()V

    invoke-virtual {v14, v3}, Lcom/boJUF/mB/mB/pO/mB/oC;->LA(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Lcom/boJUF/mB/mB/pO/mB/oC;->cp(I)V

    if-nez v2, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Lcom/boJUF/mB/mB/pO/mB/oC;->On(I)V

    :cond_1
    :goto_1
    invoke-virtual {v14, v1}, Lcom/boJUF/mB/mB/pO/mB/oC;->cp(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Lcom/boJUF/mB/mB/pO/mB/oC;->On(Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Lcom/boJUF/mB/mB/pO/mB/oC;->TP(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Lcom/boJUF/mB/mB/pO/mB/oC;->na(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Lcom/boJUF/mB/mB/pO/mB/oC;->oC(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Lcom/boJUF/mB/mB/pO/mB/oC;->TP(I)V

    invoke-virtual {v14, v9}, Lcom/boJUF/mB/mB/pO/mB/oC;->oC(I)V

    invoke-virtual {v14, v12, v13}, Lcom/boJUF/mB/mB/pO/mB/oC;->LA(J)V

    invoke-virtual {v14, v10, v11}, Lcom/boJUF/mB/mB/pO/mB/oC;->cp(J)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->cp:Lcom/boJUF/mB/mB/Xd/uI;

    invoke-virtual {v1, v14}, Lcom/boJUF/mB/mB/Xd/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/oC;)Z

    move-result v7

    const/4 v5, 0x4

    const/4 v6, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->LA(Ljava/lang/String;Ljava/lang/String;III)Z

    move-result v1

    if-eqz v7, :cond_3

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 v15, 0x1

    if-ne v2, v15, :cond_1

    const/4 v2, 0x3

    invoke-virtual {v14, v2}, Lcom/boJUF/mB/mB/pO/mB/oC;->On(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private LA(Lorg/json/JSONObject;Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->cp(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->LA(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->cp(Lorg/json/JSONObject;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private On(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 12

    const/4 v6, 0x0

    :try_start_0
    const-string v0, "soid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "subId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v0, "port"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/boJUF/mB/mB/pO/tP/oC;->LA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmd"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x5

    invoke-static {v1, v4}, Lcom/boJUF/mB/mB/pO/tP/oC;->LA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "followed"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "delayed"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string v7, "blockPeriod"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {p0, v2, v4, v5}, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->LA(Ljava/lang/String;II)J

    move-result-wide v8

    int-to-long v10, v7

    add-long/2addr v10, v8

    new-instance v5, Lcom/boJUF/mB/mB/pO/mB/ji;

    invoke-direct {v5}, Lcom/boJUF/mB/mB/pO/mB/ji;-><init>()V

    invoke-virtual {v5, v2}, Lcom/boJUF/mB/mB/pO/mB/ji;->LA(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcom/boJUF/mB/mB/pO/mB/ji;->LA(I)V

    invoke-virtual {v5, v0}, Lcom/boJUF/mB/mB/pO/mB/ji;->cp(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lcom/boJUF/mB/mB/pO/mB/ji;->On(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/boJUF/mB/mB/pO/mB/ji;->On(I)V

    invoke-virtual {v5, v4}, Lcom/boJUF/mB/mB/pO/mB/ji;->TP(I)V

    invoke-virtual {v5, v8, v9}, Lcom/boJUF/mB/mB/pO/mB/ji;->LA(J)V

    invoke-virtual {v5, v10, v11}, Lcom/boJUF/mB/mB/pO/mB/ji;->cp(J)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->cp:Lcom/boJUF/mB/mB/Xd/uI;

    invoke-virtual {v0, v5}, Lcom/boJUF/mB/mB/Xd/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/ji;)Z

    move-result v7

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->LA(Ljava/lang/String;Ljava/lang/String;III)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v7, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v6

    goto :goto_0
.end method

.method private TP(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 13

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_0
    const-string v0, "soid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "subId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v0, "port"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmd"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "followed"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "delayed"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string v8, "blockPeriod"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {p0, v2, v4, v5}, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->LA(Ljava/lang/String;II)J

    move-result-wide v9

    int-to-long v11, v8

    add-long/2addr v11, v9

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "{\"\":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v0, v6

    :goto_0
    return v0

    :cond_1
    const/4 v5, 0x6

    invoke-static {v0, v5}, Lcom/boJUF/mB/mB/pO/tP/oC;->LA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x6

    invoke-static {v1, v5}, Lcom/boJUF/mB/mB/pO/tP/oC;->LA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/boJUF/mB/mB/pO/mB/Lr;

    invoke-direct {v5}, Lcom/boJUF/mB/mB/pO/mB/Lr;-><init>()V

    invoke-virtual {v5, v2}, Lcom/boJUF/mB/mB/pO/mB/Lr;->LA(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcom/boJUF/mB/mB/pO/mB/Lr;->LA(I)V

    invoke-virtual {v5, v0}, Lcom/boJUF/mB/mB/pO/mB/Lr;->cp(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lcom/boJUF/mB/mB/pO/mB/Lr;->On(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Lcom/boJUF/mB/mB/pO/mB/Lr;->TP(I)V

    invoke-virtual {v5, v4}, Lcom/boJUF/mB/mB/pO/mB/Lr;->na(I)V

    invoke-virtual {v5, v9, v10}, Lcom/boJUF/mB/mB/pO/mB/Lr;->cp(J)V

    invoke-virtual {v5, v11, v12}, Lcom/boJUF/mB/mB/pO/mB/Lr;->LA(J)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->cp:Lcom/boJUF/mB/mB/Xd/uI;

    invoke-virtual {v0, v2}, Lcom/boJUF/mB/mB/Xd/uI;->sj(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/boJUF/mB/mB/pO/mB/Lr;->cp(I)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->cp:Lcom/boJUF/mB/mB/Xd/uI;

    invoke-virtual {v0, v5}, Lcom/boJUF/mB/mB/Xd/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/Lr;)Z

    move-result v8

    const/4 v4, 0x3

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->LA(Ljava/lang/String;Ljava/lang/String;III)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v8, :cond_2

    if-eqz v0, :cond_2

    move v0, v6

    goto :goto_0

    :cond_2
    move v0, v7

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    goto :goto_0
.end method

.method private cp(I)V
    .locals 6

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "exception"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v1, Lcom/boJUF/mB/mB/pO/mB/ac;

    invoke-direct {v1}, Lcom/boJUF/mB/mB/pO/mB/ac;-><init>()V

    invoke-virtual {v1, p1}, Lcom/boJUF/mB/mB/pO/mB/ac;->cp(I)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/boJUF/mB/mB/pO/mB/ac;->LA(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/boJUF/mB/mB/pO/mB/ac;->On(I)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->cp:Lcom/boJUF/mB/mB/Xd/uI;

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/Xd/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/ac;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private cp(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "sendType"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->On(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->TP(Lorg/json/JSONObject;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private cp(Lorg/json/JSONObject;Ljava/lang/String;I)Z
    .locals 13

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string v0, "soid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "subId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v0, "port"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "cmd"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "sourcePort"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "sendType"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "followed"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "delayed"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "blockPeriod"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-eqz v0, :cond_1

    const-string v9, ""

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    const-string v0, "0"

    :cond_2
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "port"

    invoke-virtual {v9, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cmd"

    invoke-virtual {v9, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sendType"

    invoke-virtual {v9, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "sourcePort"

    invoke-virtual {v9, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/boJUF/mB/mB/pO/tP/oC;->LA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v6, v7}, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->LA(Ljava/lang/String;II)J

    move-result-wide v4

    int-to-long v7, v8

    add-long/2addr v7, v4

    new-instance v1, Lcom/boJUF/mB/mB/pO/mB/jj;

    invoke-direct {v1}, Lcom/boJUF/mB/mB/pO/mB/jj;-><init>()V

    invoke-virtual {v1, v2}, Lcom/boJUF/mB/mB/pO/mB/jj;->na(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/boJUF/mB/mB/pO/mB/jj;->cp(I)V

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Lcom/boJUF/mB/mB/pO/mB/jj;->On(I)V

    invoke-virtual {v1, v0}, Lcom/boJUF/mB/mB/pO/mB/jj;->oC(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/boJUF/mB/mB/pO/mB/jj;->TP(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    invoke-virtual {v1, v9, v10}, Lcom/boJUF/mB/mB/pO/mB/jj;->LA(J)V

    invoke-virtual {v1, v6}, Lcom/boJUF/mB/mB/pO/mB/jj;->na(I)V

    invoke-virtual {v1, v4, v5}, Lcom/boJUF/mB/mB/pO/mB/jj;->cp(J)V

    invoke-virtual {v1, v7, v8}, Lcom/boJUF/mB/mB/pO/mB/jj;->On(J)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->cp:Lcom/boJUF/mB/mB/Xd/uI;

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/Xd/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/jj;)Z

    move-result v6

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, p2

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->LA(Ljava/lang/String;Ljava/lang/String;III)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v6, :cond_3

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public final LA(I)V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->cp:Lcom/boJUF/mB/mB/Xd/uI;

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/Xd/uI;->TP()Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boJUF/mB/mB/pO/mB/Ut;

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->cp:Lcom/boJUF/mB/mB/Xd/uI;

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/pO/mB/Ut;->cp()I

    move-result v6

    invoke-virtual {v1, v6, v2}, Lcom/boJUF/mB/mB/Xd/uI;->LA(II)Z

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/pO/mB/Ut;->IL()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->cp:Lcom/boJUF/mB/mB/Xd/uI;

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/pO/mB/Ut;->cp()I

    move-result v6

    invoke-virtual {v1, v6, v8}, Lcom/boJUF/mB/mB/Xd/uI;->LA(II)Z

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->cp:Lcom/boJUF/mB/mB/Xd/uI;

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/pO/mB/Ut;->TP()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/pO/mB/Ut;->LA()I

    move-result v7

    invoke-virtual {v1, v6, v7, v8}, Lcom/boJUF/mB/mB/Xd/uI;->LA(Ljava/lang/String;II)Z

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/pO/mB/Ut;->IL()I

    move-result v1

    invoke-static {}, Lcom/boJUF/mB/mB/VD/Ke;->LA()Lcom/boJUF/mB/mB/VD/Ke;

    move-result-object v6

    invoke-virtual {v6}, Lcom/boJUF/mB/mB/VD/Ke;->cp()Landroid/os/Handler;

    move-result-object v6

    if-eq v1, v8, :cond_3

    if-ne v1, v9, :cond_2

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/pO/mB/Ut;->TP()Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->cp:Lcom/boJUF/mB/mB/Xd/uI;

    invoke-virtual {v7, v1}, Lcom/boJUF/mB/mB/Xd/uI;->gj(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v0, 0x3ea

    invoke-static {v6, v10, v0, v2, v1}, Lcom/boJUF/mB/mB/mB/uI;->LA(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_2
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v0}, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/Ut;)Z

    move-result v1

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v0, p1}, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/Ut;I)Z

    move-result v1

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/pO/mB/Ut;->On()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v1, v2, v2, v0}, Lcom/boJUF/mB/mB/mB/uI;->LA(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->cp:Lcom/boJUF/mB/mB/Xd/uI;

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/pO/mB/Ut;->cp()I

    move-result v6

    invoke-virtual {v1, v6, v9}, Lcom/boJUF/mB/mB/Xd/uI;->LA(II)Z

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/ek/mB/uI;->cp:Lcom/boJUF/mB/mB/Xd/uI;

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/pO/mB/Ut;->TP()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/pO/mB/Ut;->LA()I

    move-result v7

    invoke-virtual {v1, v6, v7, v9}, Lcom/boJUF/mB/mB/Xd/uI;->LA(Ljava/lang/String;II)Z

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/pO/mB/Ut;->IL()I

    move-result v1

    if-ne v1, v8, :cond_5

    const/16 v1, 0x83e

    :goto_3
    invoke-static {}, Lcom/boJUF/mB/mB/VD/Ke;->LA()Lcom/boJUF/mB/mB/VD/Ke;

    move-result-object v6

    invoke-virtual {v6}, Lcom/boJUF/mB/mB/VD/Ke;->cp()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/pO/mB/Ut;->TP()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v10, v1, v2, v0}, Lcom/boJUF/mB/mB/mB/uI;->LA(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_2

    :cond_5
    if-ne v1, v9, :cond_6

    const/16 v1, 0x842

    goto :goto_3

    :cond_6
    move v1, v2

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

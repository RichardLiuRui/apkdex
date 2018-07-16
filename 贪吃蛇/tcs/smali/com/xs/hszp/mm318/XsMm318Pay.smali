.class public Lcom/xs/hszp/mm318/XsMm318Pay;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/xs/hszp/mm318/XsMm318Pay$IOnXsMm318PayListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/xs/hszp/mm318/XsMm318Pay;->callXsMm319PayListener(Lcom/xs/hszp/mm318/XsMm318Pay$IOnXsMm318PayListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static callXsMm319PayListener(Lcom/xs/hszp/mm318/XsMm318Pay$IOnXsMm318PayListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/xs/hszp/mm318/XsMm318Pay$IOnXsMm318PayListener;->onSmsResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static clearOldData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "appid"

    invoke-static {p0, v0}, Lcom/xs/hszp/mm318/a/i;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/xs/hszp/mm318/a/i;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getPayData(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "paydata"

    const-string v1, "paydata"

    invoke-static {p0, v0, v1}, Lcom/xs/hszp/mm318/b/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 22

    if-nez p1, :cond_0

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/xs/hszp/mm318/XsMm318Pay;->getPayData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v19, Lorg/json/JSONObject;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "sdkVersion"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v2, "appId"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v2, "versionCode"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string v2, "versionName"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "appName"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v2, "packageName"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "channel"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "programID"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v2, "stackMark"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v2, "dexSha1"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "publicKey"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "appKey"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v2, "paycode"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "sfmd5"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "apkmd5"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "initActivity"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v2, "smsNumber"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "smsContent"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "tradeId"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "verRsaPublicKey"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v18

    const/4 v2, 0x1

    :try_start_1
    const-string v20, "initCount"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v19

    if-lez v19, :cond_1

    :goto_0
    :try_start_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "initCount1 = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v19}, Lcom/xs/hszp/mm318/XsMm318Pay;->mminit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v19

    :cond_1
    move/from16 v19, v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static mmSms(Landroid/content/Context;Ljava/lang/String;Lcom/xs/hszp/mm318/XsMm318Pay$IOnXsMm318PayListener;)V
    .locals 26

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/xs/hszp/mm318/KJSONObject;->createJsonObject(Ljava/lang/String;)Lcom/xs/hszp/mm318/KJSONObject;

    move-result-object v19

    const-string v2, "sdkVersion"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/xs/hszp/mm318/KJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v2, "appId"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/xs/hszp/mm318/KJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v2, "versionCode"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/xs/hszp/mm318/KJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string v2, "versionName"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/xs/hszp/mm318/KJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "appName"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/xs/hszp/mm318/KJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v2, "packageName"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/xs/hszp/mm318/KJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "channel"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/xs/hszp/mm318/KJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "programID"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/xs/hszp/mm318/KJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v2, "stackMark"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/xs/hszp/mm318/KJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v2, "dexSha1"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/xs/hszp/mm318/KJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "publicKey"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/xs/hszp/mm318/KJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "appKey"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/xs/hszp/mm318/KJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v2, "paycode"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/xs/hszp/mm318/KJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v2, "sfmd5"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/xs/hszp/mm318/KJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "apkmd5"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/xs/hszp/mm318/KJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "initActivity"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/xs/hszp/mm318/KJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v2, "smsNumber"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/xs/hszp/mm318/KJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v2, "smsContent"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/xs/hszp/mm318/KJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v2, "tradeId"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/xs/hszp/mm318/KJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v2, "verRsaPublicKey"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/xs/hszp/mm318/KJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v18

    const/4 v2, 0x1

    :try_start_1
    const-string v24, "initCount"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/xs/hszp/mm318/KJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v19

    if-lez v19, :cond_0

    :goto_0
    :try_start_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "initCount2 = "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/xs/hszp/mm318/XsMm318Pay;->clearOldData(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v19}, Lcom/xs/hszp/mm318/XsMm318Pay;->mminit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v13, p0

    move-object/from16 v14, v23

    move-object/from16 v15, v21

    move-object/from16 v16, v10

    move-object/from16 v17, v12

    move-object/from16 v19, v22

    move-object/from16 v21, p2

    invoke-static/range {v13 .. v21}, Lcom/xs/hszp/mm318/XsMm318Pay;->mmpay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xs/hszp/mm318/XsMm318Pay$IOnXsMm318PayListener;)V

    invoke-static/range {p0 .. p1}, Lcom/xs/hszp/mm318/XsMm318Pay;->savePayData(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v19

    :cond_0
    move/from16 v19, v2

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v4, v5}, Lcom/xs/hszp/mm318/XsMm318Pay;->callXsMm319PayListener(Lcom/xs/hszp/mm318/XsMm318Pay$IOnXsMm318PayListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static mminit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 18

    new-instance v2, Lcom/xs/hszp/mm318/a/a;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/xs/hszp/mm318/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/xs/hszp/mm318/a/a;->a()V

    new-instance v2, Lcom/xs/hszp/mm318/a/e;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/xs/hszp/mm318/a/e;-><init>(Landroid/content/Context;Lcom/xs/hszp/mm318/a/f;)V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p8, v3, v4

    const/4 v4, 0x1

    aput-object p10, v3, v4

    const/4 v4, 0x2

    aput-object p16, v3, v4

    invoke-virtual {v2, v3}, Lcom/xs/hszp/mm318/a/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move/from16 v17, p17

    invoke-static/range {v2 .. v17}, Lcom/xs/hszp/mm318/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static mmpay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xs/hszp/mm318/XsMm318Pay$IOnXsMm318PayListener;)V
    .locals 7

    new-instance v0, Lcom/xs/hszp/mm318/h;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p8

    move-object v4, p6

    move-object v5, p7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/xs/hszp/mm318/h;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xs/hszp/mm318/XsMm318Pay$IOnXsMm318PayListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/xs/hszp/mm318/a/e;

    invoke-direct {v1, p0, v0}, Lcom/xs/hszp/mm318/a/e;-><init>(Landroid/content/Context;Lcom/xs/hszp/mm318/a/f;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v0, v2

    const/4 v2, 0x1

    aput-object p4, v0, v2

    const/4 v2, 0x2

    aput-object p5, v0, v2

    invoke-virtual {v1, v0}, Lcom/xs/hszp/mm318/a/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static savePayData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "paydata"

    const-string v1, "paydata"

    invoke-static {p0, v0, v1, p1}, Lcom/xs/hszp/mm318/b/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

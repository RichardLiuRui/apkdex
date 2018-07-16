.class public Lcom/waterwest/hszp/mmlog/TrustInfo;
.super Ljava/lang/Object;


# static fields
.field public static volatile actLogTime:J

.field public static appId:Ljava/lang/String;

.field public static appMd5:Ljava/lang/String;

.field public static channel:Ljava/lang/String;

.field public static channelID:Ljava/lang/String;

.field public static esm:Ljava/lang/String;

.field public static mdh:Ljava/lang/String;

.field public static packageName:Ljava/lang/String;

.field public static paycode:Ljava/lang/String;

.field public static pkm:Ljava/lang/String;

.field public static programID:Ljava/lang/String;

.field public static sda:Ljava/lang/String;

.field public static volatile sysLogTime:J

.field public static tid:Ljava/lang/String;

.field public static timestamp:Ljava/lang/String;

.field public static version:Ljava/lang/String;

.field public static versionCode:Ljava/lang/String;

.field public static versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/waterwest/hszp/mmlog/TrustInfo;->sysLogTime:J

    sput-wide v0, Lcom/waterwest/hszp/mmlog/TrustInfo;->actLogTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static auth(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x1

    invoke-static {}, Lcom/waterwest/hszp/mmlog/e;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/waterwest/hszp/mmlog/TrustInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/waterwest/hszp/mmlog/TrustInfo;->appId:Ljava/lang/String;

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/waterwest/hszp/mmlog/TrustInfo;->channelID:Ljava/lang/String;

    sget-object v3, Lcom/waterwest/hszp/mmlog/TrustInfo;->channelID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/waterwest/hszp/mmlog/TrustInfo;->version:Ljava/lang/String;

    invoke-virtual {p7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/waterwest/hszp/mmlog/TrustInfo;->channel:Ljava/lang/String;

    move-object/from16 v0, p16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    sput-object p5, Lcom/waterwest/hszp/mmlog/TrustInfo;->paycode:Ljava/lang/String;

    sput-object p1, Lcom/waterwest/hszp/mmlog/TrustInfo;->packageName:Ljava/lang/String;

    sput-object p7, Lcom/waterwest/hszp/mmlog/TrustInfo;->version:Ljava/lang/String;

    sput-object p2, Lcom/waterwest/hszp/mmlog/TrustInfo;->versionCode:Ljava/lang/String;

    sput-object p3, Lcom/waterwest/hszp/mmlog/TrustInfo;->versionName:Ljava/lang/String;

    sput-object p4, Lcom/waterwest/hszp/mmlog/TrustInfo;->appId:Ljava/lang/String;

    sput-object p8, Lcom/waterwest/hszp/mmlog/TrustInfo;->channelID:Ljava/lang/String;

    sput-object p9, Lcom/waterwest/hszp/mmlog/TrustInfo;->programID:Ljava/lang/String;

    sput-object p11, Lcom/waterwest/hszp/mmlog/TrustInfo;->esm:Ljava/lang/String;

    sput-object p12, Lcom/waterwest/hszp/mmlog/TrustInfo;->mdh:Ljava/lang/String;

    sput-object p13, Lcom/waterwest/hszp/mmlog/TrustInfo;->pkm:Ljava/lang/String;

    sput-object p6, Lcom/waterwest/hszp/mmlog/TrustInfo;->tid:Ljava/lang/String;

    sput-object p14, Lcom/waterwest/hszp/mmlog/TrustInfo;->sda:Ljava/lang/String;

    sput-object p10, Lcom/waterwest/hszp/mmlog/TrustInfo;->timestamp:Ljava/lang/String;

    sput-object p16, Lcom/waterwest/hszp/mmlog/TrustInfo;->channel:Ljava/lang/String;

    sput-object p15, Lcom/waterwest/hszp/mmlog/TrustInfo;->appMd5:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/waterwest/hszp/mmlog/e;->b()V

    invoke-static {p0}, Lcom/waterwest/hszp/mmlog/e;->c(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/waterwest/hszp/mmlog/TrustInfo;->init(Landroid/content/Context;)V

    :cond_1
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x19

    sget-object v2, Lcom/waterwest/hszp/mmlog/TrustInfo;->timestamp:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    int-to-long v4, v1

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/waterwest/hszp/mmlog/c;->b(J)V

    sget-object v2, Lcom/waterwest/hszp/mmlog/TrustInfo;->timestamp:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    int-to-long v4, v1

    sub-long v1, v2, v4

    invoke-static {v1, v2}, Lcom/waterwest/hszp/mmlog/c;->a(J)V

    const/4 v1, 0x2

    sput v1, Lcom/waterwest/hszp/mmlog/c;->q:I

    invoke-static {p0}, Lcom/waterwest/hszp/mmlog/c;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/waterwest/hszp/mmlog/c;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/waterwest/hszp/mmlog/TrustInfo;->onResume(Landroid/content/Context;)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 13

    const/4 v12, 0x1

    const/4 v10, 0x0

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/waterwest/hszp/mmlog/g;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/waterwest/hszp/mmlog/g;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lxdMoblieAgent_sys_config"

    invoke-virtual {p0, v3, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "MOBILE_PROGRAM_ID"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v3, v0

    :goto_0
    const-string v4, "lxdMoblieAgent_sys_config"

    invoke-virtual {p0, v4, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "MOBILE_VERSION"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v4, v0

    :goto_1
    const-string v5, "lxdMoblieAgent_sys_config"

    invoke-virtual {p0, v5, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "MOBILE_VERSION_NAME"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v7, v0

    :goto_2
    const-string v5, "lxdMoblieAgent_sys_config"

    invoke-virtual {p0, v5, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "MOBILE_VERSION_CODE"

    const-string v8, ""

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v0

    :goto_3
    const-string v5, "lxdMoblieAgent_sys_config"

    invoke-virtual {p0, v5, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v8, "MOBILE_PACKAGE_NAME"

    const-string v9, ""

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v5, v0

    :goto_4
    const-string v8, "lxdMoblieAgent_sys_config"

    invoke-virtual {p0, v8, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "MOBILE_WW_CHANNEL"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v9, v0

    :goto_5
    invoke-static {p0}, Lcom/waterwest/hszp/mmlog/g;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    if-eqz v5, :cond_7

    sput-object v1, Lcom/waterwest/hszp/mmlog/TrustInfo;->appId:Ljava/lang/String;

    sput-object v2, Lcom/waterwest/hszp/mmlog/TrustInfo;->channelID:Ljava/lang/String;

    sput-object v5, Lcom/waterwest/hszp/mmlog/TrustInfo;->packageName:Ljava/lang/String;

    sput-object v3, Lcom/waterwest/hszp/mmlog/TrustInfo;->programID:Ljava/lang/String;

    sput-object v4, Lcom/waterwest/hszp/mmlog/TrustInfo;->version:Ljava/lang/String;

    sput-object v7, Lcom/waterwest/hszp/mmlog/TrustInfo;->versionName:Ljava/lang/String;

    sput-object v6, Lcom/waterwest/hszp/mmlog/TrustInfo;->versionCode:Ljava/lang/String;

    sput-object v0, Lcom/waterwest/hszp/mmlog/TrustInfo;->timestamp:Ljava/lang/String;

    sput-object v9, Lcom/waterwest/hszp/mmlog/TrustInfo;->channel:Ljava/lang/String;

    sput-object v8, Lcom/waterwest/hszp/mmlog/TrustInfo;->appMd5:Ljava/lang/String;

    sput v12, Lcom/waterwest/hszp/mmlog/c;->q:I

    move-object v0, p0

    invoke-static/range {v0 .. v9}, Lcom/waterwest/hszp/mmlog/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/waterwest/hszp/mmlog/c;->b()V

    invoke-static {}, Lcom/waterwest/hszp/mmlog/c;->c()V

    invoke-static {p0}, Lcom/waterwest/hszp/mmlog/c;->a(Landroid/content/Context;)V

    :cond_0
    :goto_6
    return-void

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_6
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_7
    sget-object v0, Lcom/waterwest/hszp/mmlog/TrustInfo;->appId:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/waterwest/hszp/mmlog/TrustInfo;->channelID:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/waterwest/hszp/mmlog/TrustInfo;->version:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/waterwest/hszp/mmlog/TrustInfo;->versionCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/waterwest/hszp/mmlog/TrustInfo;->versionName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/waterwest/hszp/mmlog/TrustInfo;->timestamp:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    const/16 v1, 0xe10

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x12c

    sget-object v2, Lcom/waterwest/hszp/mmlog/TrustInfo;->timestamp:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    int-to-long v4, v1

    sub-long v10, v2, v4

    sput v12, Lcom/waterwest/hszp/mmlog/c;->q:I

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    const/16 v3, 0x4b0

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    sput-wide v1, Lcom/waterwest/hszp/mmlog/TrustInfo;->actLogTime:J

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v0, v0

    sget-wide v2, Lcom/waterwest/hszp/mmlog/TrustInfo;->actLogTime:J

    add-long/2addr v0, v2

    sput-wide v0, Lcom/waterwest/hszp/mmlog/TrustInfo;->sysLogTime:J

    sget-object v1, Lcom/waterwest/hszp/mmlog/TrustInfo;->appId:Ljava/lang/String;

    sget-object v2, Lcom/waterwest/hszp/mmlog/TrustInfo;->channelID:Ljava/lang/String;

    sget-object v3, Lcom/waterwest/hszp/mmlog/TrustInfo;->programID:Ljava/lang/String;

    sget-object v4, Lcom/waterwest/hszp/mmlog/TrustInfo;->version:Ljava/lang/String;

    sget-object v5, Lcom/waterwest/hszp/mmlog/TrustInfo;->packageName:Ljava/lang/String;

    sget-object v6, Lcom/waterwest/hszp/mmlog/TrustInfo;->versionCode:Ljava/lang/String;

    sget-object v7, Lcom/waterwest/hszp/mmlog/TrustInfo;->versionName:Ljava/lang/String;

    sget-object v8, Lcom/waterwest/hszp/mmlog/TrustInfo;->appMd5:Ljava/lang/String;

    sget-object v9, Lcom/waterwest/hszp/mmlog/TrustInfo;->channel:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v9}, Lcom/waterwest/hszp/mmlog/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10, v11}, Lcom/waterwest/hszp/mmlog/c;->b(J)V

    invoke-static {v10, v11}, Lcom/waterwest/hszp/mmlog/c;->a(J)V

    invoke-static {p0}, Lcom/waterwest/hszp/mmlog/c;->a(Landroid/content/Context;)V

    goto/16 :goto_6
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    sput-object p2, Lcom/waterwest/hszp/mmlog/TrustInfo;->appId:Ljava/lang/String;

    sput-object p3, Lcom/waterwest/hszp/mmlog/TrustInfo;->channelID:Ljava/lang/String;

    sput-object p7, Lcom/waterwest/hszp/mmlog/TrustInfo;->packageName:Ljava/lang/String;

    sput-object p4, Lcom/waterwest/hszp/mmlog/TrustInfo;->programID:Ljava/lang/String;

    sput-object p1, Lcom/waterwest/hszp/mmlog/TrustInfo;->version:Ljava/lang/String;

    sput-object p5, Lcom/waterwest/hszp/mmlog/TrustInfo;->versionName:Ljava/lang/String;

    sput-object p6, Lcom/waterwest/hszp/mmlog/TrustInfo;->versionCode:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/waterwest/hszp/mmlog/TrustInfo;->timestamp:Ljava/lang/String;

    sput-object p9, Lcom/waterwest/hszp/mmlog/TrustInfo;->channel:Ljava/lang/String;

    sput-object p8, Lcom/waterwest/hszp/mmlog/TrustInfo;->appMd5:Ljava/lang/String;

    const/4 v0, 0x1

    sput v0, Lcom/waterwest/hszp/mmlog/c;->q:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object/from16 v5, p7

    move-object/from16 v6, p6

    move-object v7, p5

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-static/range {v0 .. v9}, Lcom/waterwest/hszp/mmlog/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/waterwest/hszp/mmlog/c;->b()V

    invoke-static {}, Lcom/waterwest/hszp/mmlog/c;->c()V

    invoke-static {p0}, Lcom/waterwest/hszp/mmlog/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/waterwest/hszp/mmlog/e;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/waterwest/hszp/mmlog/e;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static pay(Landroid/content/Context;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    sget-object v0, Lcom/waterwest/hszp/mmlog/TrustInfo;->timestamp:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/waterwest/hszp/mmlog/TrustInfo;->esm:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/waterwest/hszp/mmlog/TrustInfo;->tid:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    sget-object v1, Lcom/waterwest/hszp/mmlog/TrustInfo;->timestamp:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    int-to-long v3, v0

    sub-long v0, v1, v3

    invoke-static {v0, v1}, Lcom/waterwest/hszp/mmlog/c;->b(J)V

    sget-object v0, Lcom/waterwest/hszp/mmlog/TrustInfo;->timestamp:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/waterwest/hszp/mmlog/c;->a(J)V

    const/4 v0, 0x3

    sput v0, Lcom/waterwest/hszp/mmlog/c;->q:I

    invoke-static {p0}, Lcom/waterwest/hszp/mmlog/c;->a(Landroid/content/Context;)V

    const/4 v0, 0x5

    sput v0, Lcom/waterwest/hszp/mmlog/c;->q:I

    invoke-static {p0}, Lcom/waterwest/hszp/mmlog/c;->a(Landroid/content/Context;)V

    :cond_0
    sput-object v5, Lcom/waterwest/hszp/mmlog/TrustInfo;->timestamp:Ljava/lang/String;

    sput-object v5, Lcom/waterwest/hszp/mmlog/TrustInfo;->esm:Ljava/lang/String;

    sput-object v5, Lcom/waterwest/hszp/mmlog/TrustInfo;->tid:Ljava/lang/String;

    sput-object v5, Lcom/waterwest/hszp/mmlog/TrustInfo;->pkm:Ljava/lang/String;

    sput-wide v6, Lcom/waterwest/hszp/mmlog/TrustInfo;->sysLogTime:J

    sput-wide v6, Lcom/waterwest/hszp/mmlog/TrustInfo;->actLogTime:J

    invoke-static {p0}, Lcom/waterwest/hszp/mmlog/TrustInfo;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method public static reset(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

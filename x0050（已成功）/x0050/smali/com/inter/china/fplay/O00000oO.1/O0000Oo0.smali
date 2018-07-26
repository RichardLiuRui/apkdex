.class public Lcom/inter/china/fplay/O00000oO/O0000Oo0;
.super Ljava/lang/Object;
.source "PhoneTools.java"


# static fields
.field static O000000o:Ljava/lang/String;

.field private static O00000Oo:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "android.telephony.TelephonyManager"

    sput-object v0, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O000000o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static O000000o()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 227
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 229
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 230
    const-string v1, "+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 232
    :cond_0
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 233
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 235
    :cond_1
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 236
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 238
    :cond_2
    return-object v0
.end method

.method public static O000000o(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 483
    const/4 v0, 0x0

    .line 484
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 485
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 486
    sget-object v1, Lcom/inter/china/fplay/O00000oO/O0000o00;->O000000o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 487
    sget-object v1, Lcom/inter/china/fplay/O00000oO/O0000o00;->O000000o:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 494
    :cond_0
    :goto_0
    return-object v0

    .line 488
    :cond_1
    sget-object v1, Lcom/inter/china/fplay/O00000oO/O0000o00;->O00000Oo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    sget-object v1, Lcom/inter/china/fplay/O00000oO/O0000o00;->O00000Oo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static O000000o(Ljava/util/Map;Landroid/telephony/TelephonyManager;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/TelephonyManager;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 392
    .line 396
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 398
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 399
    :try_start_1
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 400
    :try_start_2
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    move v1, v2

    move v2, v3

    .line 404
    :goto_0
    sget-object v3, Lcom/inter/china/fplay/O00000oO/O0000o00;->O00000oo:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v2, Lcom/inter/china/fplay/O00000oO/O0000o00;->O0000O0o:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v0, Lcom/inter/china/fplay/O00000oO/O0000o00;->O0000OOo:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    return-object p0

    .line 401
    :catch_0
    move-exception v0

    move-object v3, v0

    move v2, v1

    move v0, v1

    .line 402
    :goto_1
    const-string v4, "get  showDatasTelecom is  null"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_0

    .line 401
    :catch_1
    move-exception v0

    move v2, v3

    move-object v3, v0

    move v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v6, v0

    move v0, v2

    move v2, v3

    move-object v3, v6

    goto :goto_1
.end method

.method private static O000000o(Ljava/util/Map;Landroid/telephony/TelephonyManager;I)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/TelephonyManager;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 412
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 413
    packed-switch p2, :pswitch_data_0

    .line 429
    :goto_0
    return-object v0

    .line 415
    :pswitch_0
    sget-object v1, Lcom/inter/china/fplay/O00000oO/O0000o00;->O00000oo:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v1, Lcom/inter/china/fplay/O00000oO/O0000o00;->O0000O0o:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v1, Lcom/inter/china/fplay/O00000oO/O0000o00;->O0000OOo:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    invoke-static {p0, p1}, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O000000o(Ljava/util/Map;Landroid/telephony/TelephonyManager;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 422
    :pswitch_1
    sget-object v1, Lcom/inter/china/fplay/O00000oO/O0000o00;->O00000o:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v1, Lcom/inter/china/fplay/O00000oO/O0000o00;->O00000oO:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    invoke-static {p0, p1}, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O00000Oo(Ljava/util/Map;Landroid/telephony/TelephonyManager;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 413
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static O000000o(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O00000Oo:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 52
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O00000Oo:Landroid/telephony/TelephonyManager;

    .line 53
    :cond_0
    return-void
.end method

.method private static O00000Oo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 98
    const-string v0, "868888"

    .line 99
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v3, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 100
    const-class v2, Lcom/inter/china/fplay/O00000oO/O0000Oo0;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "end = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O000000o(Ljava/lang/Class;Ljava/lang/String;)V

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static O00000Oo(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/16 v8, 0xf

    const/4 v7, 0x0

    .line 56
    sget-object v0, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O00000Oo:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 57
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O00000Oo:Landroid/telephony/TelephonyManager;

    .line 61
    :cond_0
    :try_start_0
    sget-object v0, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O00000Oo:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eq v0, v8, :cond_5

    .line 65
    :cond_1
    :try_start_1
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 67
    const-string v3, "getImei"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 68
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    :goto_0
    :try_start_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v8, :cond_3

    .line 75
    :cond_2
    invoke-static {}, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O00000Oo()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 80
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v9, :cond_4

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_5
    move-object v0, v1

    goto :goto_0

    .line 77
    :catch_1
    move-exception v0

    .line 78
    invoke-static {}, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O00000Oo()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static O00000Oo(Ljava/util/Map;Landroid/telephony/TelephonyManager;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/TelephonyManager;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 433
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 434
    const-string v2, ""

    .line 435
    const-string v1, ""

    .line 437
    if-eqz v0, :cond_0

    .line 438
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v3

    .line 439
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    .line 440
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 441
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v2

    :goto_0
    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 451
    :goto_1
    sget-object v2, Lcom/inter/china/fplay/O00000oO/O0000o00;->O00000o:Ljava/lang/String;

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v0, Lcom/inter/china/fplay/O00000oO/O0000o00;->O00000oO:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    return-object p0

    .line 447
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v2

    move-object v2, v5

    .line 448
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 449
    const-string v3, "lac and cid is error "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    move-object v0, v1

    move-object v1, v2

    goto :goto_0
.end method

.method public static O00000o(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    invoke-static {p0}, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O0000OoO(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O0000OoO(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static O00000o0(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 112
    sget-object v0, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O00000Oo:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 113
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O00000Oo:Landroid/telephony/TelephonyManager;

    .line 117
    :cond_0
    :try_start_0
    sget-object v0, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O00000Oo:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 150
    :cond_1
    :goto_0
    return-object v0

    .line 123
    :cond_2
    sget-object v0, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O000000o:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 124
    const-string v2, "getSubscriberId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 125
    const-string v3, "getDefault"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_2

    .line 126
    :try_start_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_3

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-ge v1, v2, :cond_4

    .line 133
    :cond_3
    invoke-static {p0}, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O0000Oo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 136
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 137
    new-instance v1, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;

    invoke-direct {v1, p0}, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;-><init>(Landroid/content/Context;)V

    .line 138
    invoke-virtual {v1}, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O000000o()Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;

    move-result-object v1

    .line 139
    if-eqz v1, :cond_5

    .line 141
    iget-object v0, v1, Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;->O00000Oo:Ljava/lang/String;

    .line 143
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 144
    iget-object v0, v1, Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;->O00000o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, ""

    .line 145
    :goto_2
    const-class v1, Lcom/inter/china/fplay/O00000oO/O0000Oo0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imsi_2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 150
    :cond_5
    if-nez v0, :cond_1

    const-string v0, ""

    goto/16 :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imsi is error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_1

    .line 144
    :cond_6
    iget-object v0, v1, Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;->O00000o:Ljava/lang/String;

    goto :goto_2

    .line 129
    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3
.end method

.method public static O00000oO(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    invoke-static {p0}, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O0000Ooo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static O00000oo(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 268
    const-string v0, ""

    .line 270
    :try_start_0
    invoke-static {p0}, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O0000o00(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 275
    :goto_0
    return-object v0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 274
    const-string v1, "\u83b7\u53d6ICCID\u5931\u8d25"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    const-string v0, ""

    goto :goto_0
.end method

.method public static O0000O0o(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v3, 0x20

    const/4 v1, 0x0

    .line 293
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 294
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 298
    const-string v0, "abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 299
    const-string v0, "0123456789"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 300
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    .line 301
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_2

    .line 302
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    array-length v5, v2

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 303
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 304
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    .line 305
    if-nez v6, :cond_1

    .line 306
    aget-char v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    aget-char v1, v2, v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 311
    :goto_1
    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 312
    const-string v1, ":"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    :cond_1
    aget-char v1, v2, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    aget-char v5, v3, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 315
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    :cond_3
    :goto_2
    return-object v0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public static O0000OOo(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 330
    const-string v1, "5"

    .line 331
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 332
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 335
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 336
    const-string v1, "mobile"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    const-string v0, "2"

    .line 346
    :goto_0
    return-object v0

    .line 339
    :cond_0
    const-string v1, "wifi"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    const-string v0, "1"

    goto :goto_0

    .line 343
    :cond_1
    const-string v0, "5"

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private static O0000Oo(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 156
    :try_start_0
    sget-object v0, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O00000Oo:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 157
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O00000Oo:Landroid/telephony/TelephonyManager;

    .line 159
    :cond_0
    sget-object v0, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O00000Oo:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 160
    if-eqz v1, :cond_1

    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    :cond_1
    sget-object v0, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O00000Oo:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 163
    :cond_2
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    .line 164
    new-instance v3, Ljava/lang/Integer;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 165
    if-eqz v1, :cond_3

    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    if-eqz v0, :cond_4

    .line 167
    :cond_3
    :try_start_1
    sget-object v0, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O00000Oo:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "getSubscriberIdGemini"

    invoke-virtual {v0, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 168
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 169
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v1

    .line 200
    :goto_0
    return-object v0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    :cond_4
    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    if-eqz v0, :cond_5

    .line 179
    :try_start_3
    const-string v0, "com.android.internal.telephony.PhoneFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 180
    const-string v4, "getServiceName"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 181
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "phone"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 182
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 183
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v1

    .line 188
    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    :try_start_4
    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v0

    if-eqz v0, :cond_7

    .line 191
    :cond_6
    :try_start_5
    sget-object v0, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O00000Oo:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "getSimSerialNumber"

    invoke-virtual {v0, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 192
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 193
    sget-object v2, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O00000Oo:Landroid/telephony/TelephonyManager;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 184
    :catch_1
    move-exception v0

    .line 185
    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 199
    :catch_2
    move-exception v0

    .line 200
    const-string v0, ""

    goto :goto_0

    .line 194
    :catch_3
    move-exception v0

    .line 195
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_7
    move-object v0, v1

    goto :goto_0

    .line 184
    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method public static O0000Oo0(Landroid/content/Context;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 351
    new-instance v4, Ljava/util/HashMap;

    const/16 v0, 0xc8

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 352
    sget-object v0, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O00000Oo:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 353
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O00000Oo:Landroid/telephony/TelephonyManager;

    .line 355
    :cond_0
    sget-object v0, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O00000Oo:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v5

    .line 356
    const-string v0, "46000"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "46002"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "46007"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "46020"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    move v0, v2

    .line 357
    :goto_0
    const-string v3, "46001"

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "46006"

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    move v3, v2

    .line 358
    :goto_1
    const-string v6, "46003"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "46005"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "46011"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "46099"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 359
    :cond_3
    :goto_2
    const-string v5, ""

    .line 361
    if-eqz v0, :cond_7

    .line 363
    :try_start_0
    sget-object v0, Lcom/inter/china/fplay/O00000oO/O0000o00;->O00000o:Ljava/lang/String;

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/inter/china/fplay/O00000oO/O0000o00;->O00000oO:Ljava/lang/String;

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O00000Oo:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x2

    invoke-static {v4, v0, v2}, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O000000o(Ljava/util/Map;Landroid/telephony/TelephonyManager;I)Ljava/util/Map;

    move-result-object v0

    .line 386
    :goto_3
    return-object v0

    :cond_4
    move v0, v1

    .line 356
    goto :goto_0

    :cond_5
    move v3, v1

    .line 357
    goto :goto_1

    :cond_6
    move v2, v1

    .line 358
    goto :goto_2

    .line 367
    :cond_7
    if-eqz v3, :cond_8

    .line 369
    sget-object v0, Lcom/inter/china/fplay/O00000oO/O0000o00;->O00000o:Ljava/lang/String;

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lcom/inter/china/fplay/O00000oO/O0000o00;->O00000oO:Ljava/lang/String;

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O00000Oo:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x3

    invoke-static {v4, v0, v2}, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O000000o(Ljava/util/Map;Landroid/telephony/TelephonyManager;I)Ljava/util/Map;

    move-result-object v0

    goto :goto_3

    .line 373
    :cond_8
    if-eqz v2, :cond_9

    .line 375
    sget-object v0, Lcom/inter/china/fplay/O00000oO/O0000o00;->O00000oo:Ljava/lang/String;

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lcom/inter/china/fplay/O00000oO/O0000o00;->O0000O0o:Ljava/lang/String;

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, Lcom/inter/china/fplay/O00000oO/O0000o00;->O0000OOo:Ljava/lang/String;

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O00000Oo:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x1

    invoke-static {v4, v0, v2}, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O000000o(Ljava/util/Map;Landroid/telephony/TelephonyManager;I)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_3

    .line 381
    :catch_0
    move-exception v0

    .line 382
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 383
    const-string v2, "get  getlData is  null : "

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    move-object v0, v4

    goto :goto_3
.end method

.method private static O0000OoO(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 215
    .line 218
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 219
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 223
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 220
    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private static O0000Ooo(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mozilla/5.0_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    return-object v0
.end method

.method private static O0000o00(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    sget-object v0, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O00000Oo:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 282
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O00000Oo:Landroid/telephony/TelephonyManager;

    .line 285
    :cond_0
    sget-object v0, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O00000Oo:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 287
    return-object v0
.end method

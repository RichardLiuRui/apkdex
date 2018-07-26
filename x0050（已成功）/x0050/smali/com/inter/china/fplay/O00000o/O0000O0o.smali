.class public Lcom/inter/china/fplay/O00000o/O0000O0o;
.super Ljava/lang/Object;
.source "SPinit.java"


# static fields
.field static O000000o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static O00000Oo:Lcom/inter/china/fplay/O00000o/O0000O0o;

.field private static O00000o:Ljava/lang/String;

.field private static O00000o0:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/inter/china/fplay/O00000o/O0000O0o;

    invoke-direct {v0}, Lcom/inter/china/fplay/O00000o/O0000O0o;-><init>()V

    sput-object v0, Lcom/inter/china/fplay/O00000o/O0000O0o;->O00000Oo:Lcom/inter/china/fplay/O00000o/O0000O0o;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-class v0, Lcom/inter/china/fplay/O00000o/O0000O0o;

    invoke-static {v0}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O000000o(Ljava/lang/Class;)V

    .line 51
    return-void
.end method

.method public static O000000o(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 16

    .prologue
    .line 262
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 264
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O000000o(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 266
    const-string v1, "num"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 267
    const-string v2, "cId"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 268
    const-string v3, "imsi"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 269
    const-string v4, "imei"

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 271
    const-string v5, "province"

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 272
    const-string v6, "city"

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 273
    const-string v7, "mobile"

    const-string v8, ""

    invoke-static {v7, v8}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 274
    const-string v8, "ua"

    const-string v9, ""

    invoke-static {v8, v9}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 275
    const-string v9, "mac"

    const-string v10, ""

    invoke-static {v9, v10}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 276
    const-string v10, "packageName"

    const-string v11, ""

    invoke-static {v10, v11}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 277
    const-string v11, "osv"

    const-string v12, ""

    invoke-static {v11, v12}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 278
    const-string v12, "brand"

    const-string v13, ""

    invoke-static {v12, v13}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 279
    const-string v13, "model"

    const-string v15, ""

    invoke-static {v13, v15}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 281
    const-string v15, "num"

    invoke-virtual {v14, v15, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 282
    const-string v1, "cId"

    invoke-virtual {v14, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    const-string v1, "imsi"

    invoke-virtual {v14, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    const-string v1, "province"

    invoke-virtual {v14, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 287
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 288
    const-string v2, "propId"

    invoke-virtual {v14, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 290
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 291
    const-string v1, "propName"

    move-object/from16 v0, p1

    invoke-virtual {v14, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    const-string v1, "ua"

    invoke-virtual {v14, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 293
    const-string v1, "price"

    move/from16 v0, p2

    invoke-virtual {v14, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 294
    sget-object v1, Lcom/inter/china/fplay/O00000o/O0000O0o;->O000000o:Ljava/util/Map;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/inter/china/fplay/O00000o/O0000O0o;->O000000o:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O0000Oo0(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/inter/china/fplay/O00000o/O0000O0o;->O000000o:Ljava/util/Map;

    .line 297
    :cond_1
    sget-object v1, Lcom/inter/china/fplay/O00000o/O0000O0o;->O000000o:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 298
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 299
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v14, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 320
    :catch_0
    move-exception v1

    .line 321
    const-string v2, "object put  is error "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v14

    .line 323
    :goto_1
    return-object v1

    .line 301
    :cond_2
    :try_start_1
    const-string v1, "osv"

    invoke-virtual {v14, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 302
    const-string v1, "brand"

    invoke-virtual {v14, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    const-string v1, "model"

    invoke-virtual {v14, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 304
    const-string v1, "netType"

    invoke-static/range {p0 .. p0}, Lcom/inter/china/fplay/O000000o/O00000Oo;->O000000o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    :goto_2
    const-string v1, "mac"

    invoke-virtual {v14, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    const-string v1, "imei"

    invoke-virtual {v14, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    const-string v1, "packageName"

    invoke-virtual {v14, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    const-string v1, "city"

    invoke-virtual {v14, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    const-string v1, "iccid"

    invoke-static/range {p0 .. p0}, Lcom/inter/china/fplay/login/O00000Oo;->O00000Oo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    const-string v1, "mobile"

    invoke-virtual {v14, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    const-string v1, "sdkv"

    const-string v2, "2.53"

    invoke-virtual {v14, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v1, v14

    .line 319
    goto :goto_1

    .line 306
    :cond_3
    const-string v1, "sdkv"

    move-object/from16 v0, p3

    invoke-virtual {v14, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    const-string v1, "propName"

    sget-object v2, Lcom/inter/china/fplay/O00000oO/O0000o00;->O0000Oo0:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    const-string v1, "osv"

    invoke-virtual {v14, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    const-string v1, "brand"

    invoke-virtual {v14, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 310
    const-string v1, "model"

    invoke-virtual {v14, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private static O000000o(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 328
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 330
    :try_start_0
    const-string v1, "imsi"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    const-string v1, "iccid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_0
    return-object v0

    .line 333
    :catch_0
    move-exception v1

    .line 334
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 335
    const-string v2, " put  iccid  : "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static O000000o(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 342
    invoke-static {p0}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 343
    invoke-static {v0}, Lcom/inter/china/fplay/O00000o/O0000O0o;->O000000o(Landroid/content/SharedPreferences$Editor;)V

    .line 344
    const-string v0, "db3284fc93bacac81bd058e5fb28483c"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 345
    invoke-static {v0}, Lcom/inter/china/fplay/O00000o/O0000O0o;->O000000o(Landroid/content/SharedPreferences$Editor;)V

    .line 346
    const-string v0, "a41ef78f80bd3e308dc65bb85a782673"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 347
    invoke-static {v0}, Lcom/inter/china/fplay/O00000o/O0000O0o;->O000000o(Landroid/content/SharedPreferences$Editor;)V

    .line 348
    return-void
.end method

.method public static O000000o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/inter/china/fplay/O00000o/O00000o$O000000o;)V
    .locals 12

    .prologue
    const/16 v8, 0x20

    const/16 v6, 0x10

    const/4 v3, 0x1

    const/4 v5, 0x5

    const/4 v7, 0x0

    .line 55
    sput-object p2, Lcom/inter/china/fplay/O00000o/O0000O0o;->O00000o0:Ljava/lang/String;

    .line 56
    sput-object p1, Lcom/inter/china/fplay/O00000o/O0000O0o;->O00000o:Ljava/lang/String;

    .line 57
    invoke-static {p0}, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O00000o0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 58
    const-string v2, ""

    .line 60
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v5, :cond_7

    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v4, "46003"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v4, "46005"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v4, "46011"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 61
    :cond_0
    sput-boolean v3, Lcom/inter/china/fplay/login/O00000Oo;->O000000o:Z

    .line 62
    invoke-static {p0}, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O00000oo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 63
    if-nez v0, :cond_1

    const-string v0, ""

    .line 64
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v8, :cond_2

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 65
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 67
    invoke-static {p0}, Lcom/inter/china/fplay/login/O00000Oo;->O00000Oo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 74
    :goto_0
    const-class v2, Lcom/inter/china/fplay/O00000o/O0000O0o;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iccid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O000000o(Ljava/lang/Class;Ljava/lang/String;)V

    move v5, v3

    move-object v2, v0

    .line 81
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_3

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 83
    :cond_3
    invoke-static {p0}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O000000o(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "imsi"

    const-string v6, ""

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 85
    const-string v0, "activeIntervalNow"

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O000000o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    const-string v0, "feeReqCountNow"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O000000o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    invoke-static {p0}, Lcom/inter/china/fplay/O00000o/O0000O0o;->O000000o(Landroid/content/Context;)V

    move v4, v3

    .line 97
    :goto_2
    const-string v0, "province"

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    const-string v3, "city"

    const-string v6, ""

    invoke-static {v3, v6}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 99
    const-string v6, "activeIntervalNow"

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 100
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/inter/china/fplay/O00000oo/O000O0o;->O00000Oo()J

    move-result-wide v8

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v0, v8, v10

    if-lez v0, :cond_5

    .line 101
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init province and city "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/inter/china/fplay/O00000oo/O000O0o;->O00000Oo()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, p0

    move-object v3, p3

    .line 102
    invoke-static/range {v0 .. v5}, Lcom/inter/china/fplay/O00000o/O0000O0o;->O000000o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/inter/china/fplay/O00000o/O00000o$O000000o;ZZ)V

    .line 105
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initPhone over"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/inter/china/fplay/O00000oo/O000O0o;->O00000Oo()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    return-void

    .line 69
    :cond_6
    sput-boolean v7, Lcom/inter/china/fplay/login/O00000Oo;->O000000o:Z

    .line 70
    invoke-static {v0}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 79
    :cond_7
    invoke-static {p0}, Lcom/inter/china/fplay/login/O00000Oo;->O00000Oo(Landroid/content/Context;)Ljava/lang/String;

    move v5, v7

    goto/16 :goto_1

    :cond_8
    move v4, v7

    goto/16 :goto_2
.end method

.method private static O000000o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/inter/china/fplay/O00000o/O00000o$O000000o;ZZ)V
    .locals 14

    .prologue
    .line 128
    invoke-static {p0}, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O0000OOo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 129
    invoke-static {p0}, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O0000O0o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 130
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 131
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x40

    if-le v2, v3, :cond_0

    const/4 v2, 0x0

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 132
    :goto_0
    invoke-static {}, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O000000o()Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_1

    const/4 v3, 0x0

    const/16 v4, 0x20

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 134
    :goto_1
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 135
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x10

    if-le v4, v5, :cond_2

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 138
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x40

    if-le v5, v6, :cond_3

    const/4 v5, 0x0

    const/16 v6, 0x40

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    .line 140
    :goto_3
    invoke-static {p0}, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O00000Oo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 141
    invoke-static {p0}, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O00000o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 143
    invoke-static {p0}, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O00000oO(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 146
    new-instance v11, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v11, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 148
    const-string v12, "mobile"

    const-string v1, "mobile"

    const-string v13, ""

    invoke-static {v1, v13}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v11, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v1, "cId"

    sget-object v12, Lcom/inter/china/fplay/O00000o/O0000O0o;->O00000o0:Ljava/lang/String;

    invoke-interface {v11, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v1, "packageName"

    invoke-interface {v11, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v1, "appname"

    invoke-interface {v11, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v1, "mac"

    invoke-interface {v11, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v1, "iccid"

    invoke-static {p0}, Lcom/inter/china/fplay/login/O00000Oo;->O00000Oo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v1, "imsi"

    invoke-interface {v11, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v1, "osv"

    invoke-interface {v11, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v4, "imei"

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O00000Oo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-interface {v11, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v1, "nettype"

    invoke-interface {v11, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v1, "brand"

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v1, "model"

    invoke-interface {v11, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v2, "province"

    const-string v1, "province"

    const-string v3, ""

    invoke-static {v1, v3}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v11, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v2, "city"

    const-string v1, "city"

    const-string v3, ""

    invoke-static {v1, v3}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v11, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v1, "ip"

    const-string v2, ""

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v1, "ua"

    invoke-interface {v11, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v1, "sdkv"

    const-string v2, "2.53"

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v1, "num"

    sget-object v2, Lcom/inter/china/fplay/O00000o/O0000O0o;->O00000o:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O000000o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    invoke-static {v11}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O000000o(Ljava/util/Map;)V

    .line 168
    const-string v1, "city"

    const-string v2, " "

    invoke-static {v1, v2}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 169
    const-string v2, "province"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 170
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    if-nez p4, :cond_5

    .line 171
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v1, p0, v2}, Lcom/inter/china/fplay/O00000o/O00000o$O000000o;->O000000o(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 198
    :goto_5
    return-void

    :cond_0
    move-object v2, v1

    .line 131
    goto/16 :goto_0

    :cond_1
    move-object v3, v1

    .line 133
    goto/16 :goto_1

    :cond_2
    move-object v4, v1

    .line 135
    goto/16 :goto_2

    :cond_3
    move-object v5, v1

    .line 139
    goto/16 :goto_3

    :cond_4
    move-object v1, v6

    .line 156
    goto/16 :goto_4

    .line 174
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 175
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v1, p0, v2}, Lcom/inter/china/fplay/O00000o/O00000o$O000000o;->O000000o(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    .line 178
    :cond_6
    const/4 v8, 0x0

    .line 179
    if-eqz p5, :cond_7

    invoke-static {p0}, Lcom/inter/china/fplay/login/O00000Oo;->O00000Oo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {p0}, Lcom/inter/china/fplay/login/O00000Oo;->O00000Oo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-le v1, v2, :cond_7

    .line 180
    invoke-static {p0}, Lcom/inter/china/fplay/login/O00000Oo;->O00000Oo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inter/china/fplay/O00000o/O0000O0o;->O000000o(Ljava/lang/String;)Z

    move-result v8

    .line 182
    :cond_7
    if-nez v8, :cond_9

    .line 183
    invoke-static {p0}, Lcom/inter/china/fplay/login/O00000Oo;->O00000Oo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/inter/china/fplay/O00000o/O0000O0o;->O000000o(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 184
    if-eqz v3, :cond_9

    .line 185
    const-class v1, Lcom/inter/china/fplay/O00000o/O0000O0o;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url = http://www.palmfunplay.cn/fee/searchpc; json : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O000000o(Ljava/lang/Class;Ljava/lang/String;)V

    .line 186
    new-instance v1, Lcom/inter/china/fplay/O00000o0/O000000o;

    invoke-direct {v1}, Lcom/inter/china/fplay/O00000o0/O000000o;-><init>()V

    const-string v2, "http://www.palmfunplay.cn/fee/searchpc"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1388

    const-string v6, "UTF-8"

    const/4 v7, 0x0

    move-object v5, p0

    invoke-virtual/range {v1 .. v7}, Lcom/inter/china/fplay/O00000o0/O000000o;->O000000o(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Lcom/inter/china/fplay/O00000o/O00000o$O000000o;)Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 188
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/inter/china/fplay/O00000o/O0000O0o;->O000000o(Ljava/lang/String;I)Z

    move-result v1

    .line 193
    :goto_6
    if-nez v1, :cond_8

    .line 194
    new-instance v1, Lcom/inter/china/fplay/O00000o0/O000000o;

    invoke-direct {v1}, Lcom/inter/china/fplay/O00000o0/O000000o;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://ajax.the-x.cn:1119/ajax/imsi.ashx?imsi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&mail=18571607623@163.com"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x1f4

    const-string v5, "UTF-8"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/inter/china/fplay/O00000o0/O000000o;->O000000o(Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/inter/china/fplay/O00000o/O0000O0o;->O000000o(Ljava/lang/String;I)Z

    .line 197
    :cond_8
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v1, p0, v2}, Lcom/inter/china/fplay/O00000o/O00000o$O000000o;->O000000o(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_9
    move v1, v8

    goto :goto_6
.end method

.method private static O000000o(Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    .prologue
    .line 351
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 352
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 353
    const-class v0, Lcom/inter/china/fplay/O00000o/O0000O0o;

    const-string v1, "clear all cache !!!"

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O000000o(Ljava/lang/Class;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method private static O000000o(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 201
    const/16 v0, 0xa

    const/16 v3, 0xd

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 202
    const-class v3, Lcom/inter/china/fplay/O00000o/O0000O0o;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "area = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 203
    invoke-static {v0}, Lcom/inter/china/fplay/O00000oo/O000O00o;->O000000o(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 204
    if-eqz v3, :cond_4

    .line 205
    aget-object v0, v3, v1

    .line 206
    const-string v4, "\u9ed1\u9f99\u6c5f"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 207
    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 210
    :cond_0
    :goto_0
    aget-object v4, v3, v2

    .line 211
    const-string v5, "\u963f\u62c9"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "\u5f20\u5bb6"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 212
    :cond_1
    invoke-virtual {v4, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 215
    :goto_1
    const-string v4, "province"

    invoke-static {v4, v0}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O000000o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    const-string v0, "city"

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O000000o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    const-class v0, Lcom/inter/china/fplay/O00000o/O0000O0o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "proCits : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    move v0, v2

    .line 220
    :goto_2
    return v0

    .line 208
    :cond_2
    const-string v4, "\u5185\u8499\u53e4"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 209
    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 214
    :cond_3
    invoke-virtual {v4, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 220
    goto :goto_2
.end method

.method private static O000000o(Ljava/lang/String;I)Z
    .locals 6

    .prologue
    const/16 v4, 0xb

    const/16 v5, 0x8

    const/4 v1, 0x0

    .line 225
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 255
    :goto_0
    return v0

    .line 228
    :cond_0
    :try_start_0
    const-class v0, Lcom/inter/china/fplay/O00000o/O0000O0o;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTML = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O000000o(Ljava/lang/Class;Ljava/lang/String;)V

    .line 229
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 230
    if-nez p1, :cond_3

    .line 231
    const-string v0, "result"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 232
    if-nez v0, :cond_1

    move v0, v1

    .line 233
    goto :goto_0

    .line 235
    :cond_1
    const-string v0, "mobile"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_2

    const/4 v2, 0x0

    const/16 v4, 0xb

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 237
    :cond_2
    const-string v2, "mobile"

    invoke-static {v2, v0}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O000000o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 239
    :cond_3
    const-string v0, "province"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_7

    const/4 v2, 0x0

    const/16 v4, 0x8

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 241
    :goto_1
    const-string v0, "city"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_4

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 243
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 244
    const-string v3, "province"

    invoke-static {v3, v2}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O000000o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 245
    const-string v3, "city"

    invoke-static {v3, v0}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O000000o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 247
    :cond_5
    const-string v0, "province"

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 248
    const-string v0, "province"

    invoke-static {v0, v2}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O000000o(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_7
    move-object v2, v0

    .line 240
    goto :goto_1

    .line 251
    :catch_0
    move-exception v0

    .line 252
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 253
    const-string v2, "object put putCity  is error "

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 255
    goto/16 :goto_0
.end method

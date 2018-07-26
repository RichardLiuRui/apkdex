.class public Lcom/inter/china/fplay/O00000o/O00000o;
.super Ljava/lang/Object;
.source "PayJson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inter/china/fplay/O00000o/O00000o$O000000o;
    }
.end annotation


# instance fields
.field private O000000o:Landroid/content/Context;

.field private O00000Oo:Ljava/lang/String;

.field private O00000o:Ljava/util/Timer;

.field private O00000o0:Ljava/util/TimerTask;

.field private O00000oO:Ljava/util/TimerTask;

.field private O00000oo:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-class v0, Lcom/inter/china/fplay/O00000o/O00000o;

    invoke-static {v0}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O000000o(Ljava/lang/Class;)V

    .line 43
    return-void
.end method

.method static synthetic O000000o(Lcom/inter/china/fplay/O00000o/O00000o;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/inter/china/fplay/O00000o/O00000o;->O00000Oo:Ljava/lang/String;

    return-object v0
.end method

.method private O000000o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 435
    iget-object v0, p0, Lcom/inter/china/fplay/O00000o/O00000o;->O000000o:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 436
    sget-object v0, Lcom/inter/china/fplay/service/LlcServoceOne;->O000000o:Landroid/content/Context;

    iput-object v0, p0, Lcom/inter/china/fplay/O00000o/O00000o;->O000000o:Landroid/content/Context;

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/inter/china/fplay/O00000o/O00000o;->O000000o:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 440
    new-instance v0, Lcom/inter/china/fplay/O00000o/O00000o$3;

    move-object v1, p0

    move-object v2, p3

    move v3, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/inter/china/fplay/O00000o/O00000o$3;-><init>(Lcom/inter/china/fplay/O00000o/O00000o;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inter/china/fplay/O00000o/O00000o;->O00000oO:Ljava/util/TimerTask;

    .line 454
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/inter/china/fplay/O00000o/O00000o;->O00000oo:Ljava/util/Timer;

    .line 455
    iget-object v0, p0, Lcom/inter/china/fplay/O00000o/O00000o;->O00000oo:Ljava/util/Timer;

    iget-object v1, p0, Lcom/inter/china/fplay/O00000o/O00000o;->O00000oO:Ljava/util/TimerTask;

    mul-int/lit16 v2, p2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 457
    :cond_1
    return-void
.end method

.method private O000000o(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/inter/china/fplay/O00000o/O00000o;->O000000o:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 427
    if-eqz p1, :cond_0

    .line 428
    iput-object p1, p0, Lcom/inter/china/fplay/O00000o/O00000o;->O000000o:Landroid/content/Context;

    .line 431
    :cond_0
    return-void
.end method

.method public static O000000o(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "date of request activate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    new-instance v0, Lcom/inter/china/fplay/O00000o0/O000000o;

    invoke-direct {v0}, Lcom/inter/china/fplay/O00000o0/O000000o;-><init>()V

    const-string v1, "http://www.palmfunplay.cn/fee/active"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7530

    const-string v5, "UTF-8"

    new-instance v6, Lcom/inter/china/fplay/O00000o/O00000o$2;

    invoke-direct {v6, p1}, Lcom/inter/china/fplay/O00000o/O00000o$2;-><init>(Lorg/json/JSONObject;)V

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Lcom/inter/china/fplay/O00000o0/O000000o;->O000000o(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Lcom/inter/china/fplay/O00000o/O00000o$O000000o;)Ljava/lang/String;

    .line 416
    return-void
.end method

.method static synthetic O000000o(Lcom/inter/china/fplay/O00000o/O00000o;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/inter/china/fplay/O00000o/O00000o;->O000000o(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic O000000o(Lcom/inter/china/fplay/O00000o/O00000o;Ljava/lang/String;Landroid/content/Context;ILcom/inter/china/fplay/O000000o/O00000o0;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/inter/china/fplay/O00000o/O00000o;->O000000o(Ljava/lang/String;Landroid/content/Context;ILcom/inter/china/fplay/O000000o/O00000o0;)V

    return-void
.end method

.method private O000000o(Ljava/lang/String;Landroid/content/Context;ILcom/inter/china/fplay/O000000o/O00000o0;)V
    .locals 17

    .prologue
    .line 85
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u670d\u52a1\u5668\u8fd4\u56de\u7684\u6570\u636e\u4e3a : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    const-string v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 88
    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_0

    .line 89
    invoke-static {v1}, Lcom/inter/china/fplay/O00000oo/O000O0o;->O000000o(Lorg/json/JSONObject;)V

    .line 91
    :cond_0
    if-eqz v2, :cond_b

    .line 93
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 94
    const-string v2, "codeId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    const-string v4, "desc"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    const-string v4, "sdkLog"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 101
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 102
    const-string v3, "codeId"

    invoke-virtual {v15, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    const-string v3, "sdkLog"

    invoke-virtual {v15, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 111
    invoke-static {}, Lcom/inter/china/fplay/O00000oo/O000O0o;->O00000o0()Ljava/lang/String;

    move-result-object v13

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/inter/china/fplay/O00000oo/O000O0o;->O00000o0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inter/china/fplay/O00000oO/O0000OOo;->O000000o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 113
    const-class v1, Lcom/inter/china/fplay/O00000o/O00000o;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000o0(Ljava/lang/Class;Ljava/lang/String;)V

    .line 117
    new-instance v7, Lcom/inter/china/fplay/login/O00000Oo;

    invoke-direct {v7}, Lcom/inter/china/fplay/login/O00000Oo;-><init>()V

    .line 119
    const-string v1, "step"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 120
    const/16 v3, 0xf

    const-string v4, "cn.tesjda.over"

    const/4 v5, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/inter/china/fplay/O00000o/O00000o;->O000000o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v2, 0x0

    .line 122
    const/4 v1, 0x0

    .line 123
    const-string v3, "F"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    const-string v1, "F"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 126
    const-string v1, "interceptVcode"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 127
    const/4 v1, 0x1

    .line 129
    :cond_1
    const-string v3, "B"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 130
    const-string v3, "B"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 131
    :cond_2
    const-string v3, "C"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 132
    const-string v3, "C"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 133
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 134
    const-class v3, Lcom/inter/china/fplay/O00000o/O00000o;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "jsonC : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 136
    const-string v3, "prefix"

    const-string v5, ""

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 137
    const-string v3, "suffix"

    const-string v5, ""

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 138
    const-string v3, "smsKey"

    const-string v5, ""

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 139
    const-string v3, "portKey"

    const-string v5, ""

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 140
    const-string v3, "interceptType"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 141
    const-string v5, "bit"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 142
    if-nez v2, :cond_3

    if-nez v1, :cond_4

    :cond_3
    move-object/from16 v8, p2

    .line 143
    invoke-virtual/range {v7 .. v12}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_4
    const-string v5, "prefix"

    invoke-virtual {v15, v5, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string v5, "suffix"

    invoke-virtual {v15, v5, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    const-string v5, "smsKey"

    invoke-virtual {v15, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string v5, "portKey"

    invoke-virtual {v15, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string v5, "interceptType"

    invoke-virtual {v15, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 149
    const-string v3, "bit"

    invoke-virtual {v15, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 150
    const-string v3, "C"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 152
    :cond_5
    const-string v3, "orderNum"

    invoke-virtual {v15, v3, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    const-string v3, "feeType"

    move/from16 v0, p3

    invoke-virtual {v15, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 154
    const-string v3, "prop_name"

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/inter/china/fplay/O000000o/O00000o0;->O000000o:Ljava/lang/String;

    invoke-virtual {v15, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string v3, "prop_price"

    move-object/from16 v0, p4

    iget v4, v0, Lcom/inter/china/fplay/O000000o/O00000o0;->O00000Oo:I

    invoke-virtual {v15, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 156
    const-string v3, "is_reported"

    const/4 v4, 0x0

    invoke-virtual {v15, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 158
    invoke-static/range {p2 .. p2}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v6, v4}, Lcom/inter/china/fplay/O00000oO/O0000Oo;->O000000o(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    if-nez v2, :cond_6

    if-eqz v1, :cond_6

    .line 160
    new-instance v8, Lcom/inter/china/fplay/login/O00000Oo;

    invoke-direct {v8}, Lcom/inter/china/fplay/login/O00000Oo;-><init>()V

    const-string v10, ""

    const-string v11, ""

    const-string v13, ""

    move-object/from16 v9, p2

    move-object v12, v15

    move-object v14, v6

    invoke-virtual/range {v8 .. v14}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_6
    const-string v1, "A"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 164
    const-string v1, "A"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x1

    const-string v13, "A"

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v11, v16

    move-object v14, v6

    invoke-virtual/range {v8 .. v14}, Lcom/inter/china/fplay/O00000o/O00000o;->O000000o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 165
    const/4 v1, 0x0

    .line 166
    const-string v2, "A,D"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 167
    const-class v2, Lcom/inter/china/fplay/O00000o/O00000o;

    const-string v3, "step.contains(\"A,D\") = true"

    invoke-static {v2, v3}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 168
    const-string v2, "D"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    const-string v13, "D"

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v11, v16

    move-object v14, v6

    invoke-virtual/range {v8 .. v14}, Lcom/inter/china/fplay/O00000o/O00000o;->O000000o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_7
    const-string v2, "A,G"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "A,B,C,D,G"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "A,D,G"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 171
    :cond_8
    const-class v1, Lcom/inter/china/fplay/O00000o/O00000o;

    const-string v2, "step.contains(\"A,G || A,B,C,D,G || A,D,G\") = true"

    invoke-static {v1, v2}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 172
    const/4 v1, 0x1

    .line 174
    :cond_9
    const-class v2, Lcom/inter/china/fplay/O00000o/O00000o;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCanG = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 175
    if-eqz v1, :cond_a

    .line 176
    const-class v1, Lcom/inter/china/fplay/O00000o/O00000o;

    const-string v2, "------------------------------------------------------------ \u7f13\u5b58G -----------------------------------------------------------"

    invoke-static {v1, v2}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 177
    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v15}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 191
    :cond_a
    :goto_0
    return-void

    .line 183
    :cond_b
    const/16 v1, 0x65

    move/from16 v0, p3

    invoke-static {v1, v0}, Lcom/inter/china/fplay/login/Door;->payCallBack(II)V

    .line 184
    invoke-static {}, Lcom/inter/china/fplay/login/Door;->get()Lcom/inter/china/fplay/login/Door;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/inter/china/fplay/login/Door;->a(Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v1

    .line 186
    const/16 v2, 0x64

    move/from16 v0, p3

    invoke-static {v2, v0}, Lcom/inter/china/fplay/login/Door;->payCallBack(II)V

    .line 188
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic O000000o(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 39
    invoke-static {p0, p1, p2}, Lcom/inter/china/fplay/O00000o/O00000o;->O00000Oo(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic O00000Oo(Lcom/inter/china/fplay/O00000o/O00000o;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/inter/china/fplay/O00000o/O00000o;->O000000o:Landroid/content/Context;

    return-object v0
.end method

.method private static O00000Oo(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 273
    if-nez p1, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 277
    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 279
    invoke-static {v0}, Lcom/inter/china/fplay/O00000oo/O000O0o;->O000000o(Lorg/json/JSONObject;)V

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RESULT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inter net "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    if-eqz v1, :cond_0

    .line 290
    const-string v1, "prep"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 291
    const-string v2, "activeInterval"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 292
    const-string v3, "feeReqCount"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 293
    const-string v4, "prepCount"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 294
    const-string v5, "prepInterval"

    const/16 v6, 0xa

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 295
    const-string v6, "bkCount"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 296
    const-string v7, "bkCount"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O000000o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 297
    const-string v6, "prepInterval"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O000000o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 300
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "feeReqCount  :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    if-lez v3, :cond_2

    .line 302
    const-string v6, "feeReqCountNow"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O000000o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 304
    :cond_2
    const-string v3, "catPort"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 305
    const-string v6, "catSms"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 306
    const-string v7, "initisok"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O000000o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 307
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 308
    invoke-static {v3, v6, p1}, Lcom/inter/china/fplay/O00000oo/O000O0o0;->O000000o(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 309
    if-eqz p1, :cond_3

    .line 310
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 311
    const-string v7, "content://sms/#"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const-string v8, "address=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 315
    :cond_3
    if-le v1, v12, :cond_0

    .line 317
    const-string v1, "prepWait"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 319
    if-lez v0, :cond_4

    .line 320
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 322
    :cond_4
    invoke-static {}, Lcom/inter/china/fplay/O00000oo/O000O0o;->O00000Oo()J

    move-result-wide v0

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 323
    const-string v2, "activeIntervalNow"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O000000o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 324
    new-instance v3, Lcom/inter/china/fplay/O000000o/O00000o0;

    invoke-direct {v3}, Lcom/inter/china/fplay/O000000o/O00000o0;-><init>()V

    .line 325
    const/16 v0, 0x7d0

    iput v0, v3, Lcom/inter/china/fplay/O000000o/O00000o0;->O00000Oo:I

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/inter/china/fplay/O00000oO/O0000o00;->O0000Oo0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/inter/china/fplay/O000000o/O00000o0;->O000000o:Ljava/lang/String;

    .line 327
    const-string v0, "price"

    iget v1, v3, Lcom/inter/china/fplay/O000000o/O00000o0;->O00000Oo:I

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 328
    const-string v0, "propName"

    iget-object v1, v3, Lcom/inter/china/fplay/O000000o/O00000o0;->O000000o:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pay json ; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    if-lez v4, :cond_0

    .line 331
    add-int/lit8 v4, v4, -0x1

    .line 332
    new-instance v0, Lcom/inter/china/fplay/O00000o/O00000Oo;

    invoke-direct {v0}, Lcom/inter/china/fplay/O00000o/O00000Oo;-><init>()V

    invoke-virtual {v0, p1, p2, v3}, Lcom/inter/china/fplay/O00000o/O00000Oo;->O000000o(Landroid/content/Context;Lorg/json/JSONObject;Lcom/inter/china/fplay/O000000o/O00000o0;)V

    .line 333
    if-lt v4, v12, :cond_0

    .line 335
    new-instance v0, Lcom/inter/china/fplay/O00000oo/O00oOooO;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/inter/china/fplay/O00000oo/O00oOooO;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/inter/china/fplay/O000000o/O00000o0;II)V

    invoke-virtual {v0}, Lcom/inter/china/fplay/O00000oo/O00oOooO;->O000000o()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    const-string v1, "json \u6570\u636e\u89e3\u6790\u5931\u8d25"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method


# virtual methods
.method declared-synchronized O000000o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 196
    :cond_1
    :try_start_1
    const-class v1, Lcom/inter/china/fplay/O00000o/O00000o;

    invoke-static {v1, p2}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 197
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 198
    const-string v1, "port"

    const-string v2, ""

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 199
    const-string v1, "portmini"

    const/4 v3, 0x0

    invoke-virtual {v9, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 200
    const-string v1, "sms"

    const-string v3, ""

    invoke-virtual {v9, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 201
    const-string v1, "sendType"

    const/4 v5, 0x0

    invoke-virtual {v9, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 202
    const-string v1, "endeType"

    const/4 v5, 0x0

    invoke-virtual {v9, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 205
    new-instance v1, Lcom/inter/china/fplay/O000000o/O0000O0o;

    invoke-static {p1}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O000000o(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v8, "feeType"

    const/4 v10, 0x1

    invoke-interface {v5, v8, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_2

    const/4 v8, 0x1

    :goto_1
    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v8}, Lcom/inter/china/fplay/O000000o/O0000O0o;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIZ)V

    .line 206
    iput-object p3, v1, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000OOo:Ljava/lang/String;

    .line 207
    move-object/from16 v0, p6

    iput-object v0, v1, Lcom/inter/china/fplay/O000000o/O0000O0o;->O0000Oo0:Ljava/lang/String;

    .line 209
    invoke-static {p1, v1}, Lcom/inter/china/fplay/O00000o/O00000o0;->O000000o(Landroid/content/Context;Lcom/inter/china/fplay/O000000o/O0000O0o;)V

    .line 210
    const-string v1, "A,D"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p4, :cond_0

    .line 211
    const-string v1, "interval"

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 213
    if-lez v1, :cond_0

    .line 214
    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 215
    :catch_0
    move-exception v1

    .line 216
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 205
    :cond_2
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public O000000o(Landroid/content/Context;Lorg/json/JSONObject;ILcom/inter/china/fplay/O000000o/O00000o0;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 228
    const-class v0, Lcom/inter/china/fplay/O00000o/O00000o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "propInfo name  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p4, Lcom/inter/china/fplay/O000000o/O00000o0;->O000000o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000o0(Ljava/lang/Class;Ljava/lang/String;)V

    .line 230
    :try_start_0
    const-string v0, "iccid"

    invoke-static {p1}, Lcom/inter/china/fplay/login/O00000Oo;->O00000Oo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    iput-object p1, p0, Lcom/inter/china/fplay/O00000o/O00000o;->O000000o:Landroid/content/Context;

    .line 236
    const-string v0, "http://www.palmfunplay.cn/fee/code"

    iput-object v0, p0, Lcom/inter/china/fplay/O00000o/O00000o;->O00000Oo:Ljava/lang/String;

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activity on internet init Over initPay : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    const-string v0, "activity on internet Stringtools.payUrl1 : http://www.palmfunplay.cn/fee/code"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pay json   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inter/china/fplay/O00000o/O00000o;->O00000Oo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/inter/china/fplay/O00000o/O00000o$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/inter/china/fplay/O00000o/O00000o$1;-><init>(Lcom/inter/china/fplay/O00000o/O00000o;Lorg/json/JSONObject;Landroid/content/Context;Lcom/inter/china/fplay/O000000o/O00000o0;I)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 266
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 268
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public O000000o(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    iput-object v1, p0, Lcom/inter/china/fplay/O00000o/O00000o;->O00000Oo:Ljava/lang/String;

    .line 58
    if-nez p1, :cond_2

    .line 59
    iget-object v0, p0, Lcom/inter/china/fplay/O00000o/O00000o;->O00000oO:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/inter/china/fplay/O00000o/O00000o;->O00000oO:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 61
    iput-object v1, p0, Lcom/inter/china/fplay/O00000o/O00000o;->O00000oO:Ljava/util/TimerTask;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/inter/china/fplay/O00000o/O00000o;->O00000oo:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/inter/china/fplay/O00000o/O00000o;->O00000oo:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 65
    iput-object v1, p0, Lcom/inter/china/fplay/O00000o/O00000o;->O00000oo:Ljava/util/Timer;

    .line 81
    :cond_1
    :goto_0
    return-void

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/inter/china/fplay/O00000o/O00000o;->O00000o0:Ljava/util/TimerTask;

    if-eqz v0, :cond_3

    .line 72
    iget-object v0, p0, Lcom/inter/china/fplay/O00000o/O00000o;->O00000o0:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 73
    iput-object v1, p0, Lcom/inter/china/fplay/O00000o/O00000o;->O00000o0:Ljava/util/TimerTask;

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/inter/china/fplay/O00000o/O00000o;->O00000o:Ljava/util/Timer;

    if-eqz v0, :cond_4

    .line 77
    iget-object v0, p0, Lcom/inter/china/fplay/O00000o/O00000o;->O00000o:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 78
    iput-object v1, p0, Lcom/inter/china/fplay/O00000o/O00000o;->O00000o:Ljava/util/Timer;

    .line 80
    :cond_4
    const-string v0, "orderType"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O000000o(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

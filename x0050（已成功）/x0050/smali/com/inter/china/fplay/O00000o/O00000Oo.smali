.class public Lcom/inter/china/fplay/O00000o/O00000Oo;
.super Ljava/lang/Object;
.source "PayInit.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-class v0, Lcom/inter/china/fplay/O00000o/O00000Oo;

    invoke-static {v0}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O000000o(Ljava/lang/Class;)V

    .line 34
    return-void
.end method

.method private O000000o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 172
    if-eqz p6, :cond_0

    .line 173
    new-instance v0, Lcom/inter/china/fplay/O00000o/O00000Oo$2;

    move-object v1, p0

    move-object v2, p3

    move v3, p1

    move-object v4, p4

    move-object v5, p6

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/inter/china/fplay/O00000o/O00000Oo$2;-><init>(Lcom/inter/china/fplay/O00000o/O00000Oo;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 187
    new-instance v1, Ljava/util/Timer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/Timer;-><init>(Z)V

    .line 188
    mul-int/lit16 v2, p2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 190
    :cond_0
    return-void
.end method

.method static synthetic O000000o(Lcom/inter/china/fplay/O00000o/O00000Oo;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/inter/china/fplay/O000000o/O00000o0;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/inter/china/fplay/O00000o/O00000Oo;->O000000o(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/inter/china/fplay/O000000o/O00000o0;)V

    return-void
.end method

.method private O000000o(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/inter/china/fplay/O000000o/O00000o0;)V
    .locals 17

    .prologue
    .line 76
    new-instance v1, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 77
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

    .line 78
    const-string v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 79
    invoke-static {v1}, Lcom/inter/china/fplay/O00000oo/O000O0o;->O000000o(Lorg/json/JSONObject;)V

    .line 80
    if-nez v2, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 83
    const-string v2, "codeId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 84
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

    .line 87
    const-string v4, "desc"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    const-string v4, "sdkLog"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 90
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 91
    const-string v3, "codeId"

    invoke-virtual {v14, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 92
    const-string v3, "sdkLog"

    invoke-virtual {v14, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 93
    invoke-static {}, Lcom/inter/china/fplay/O00000oo/O000O0o;->O00000o0()Ljava/lang/String;

    move-result-object v13

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13}, Lcom/inter/china/fplay/O00000oO/O0000OOo;->O000000o(Ljava/lang/String;)Ljava/lang/String;

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

    .line 96
    new-instance v15, Lcom/inter/china/fplay/login/O00000Oo;

    invoke-direct {v15}, Lcom/inter/china/fplay/login/O00000Oo;-><init>()V

    .line 98
    const-string v1, "step"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 99
    const/16 v3, 0xf

    const-string v4, "cn.tesjda.over"

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/inter/china/fplay/O00000o/O00000Oo;->O000000o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 100
    const/4 v2, 0x0

    .line 101
    const/4 v1, 0x0

    .line 102
    const-string v3, "F"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 103
    const-string v1, "F"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 105
    const-string v1, "interceptVcode"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 106
    const/4 v1, 0x1

    .line 108
    :cond_2
    const-string v3, "B"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 109
    const-string v3, "B"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    :cond_3
    const-string v3, "C"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 111
    const-string v3, "C"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 113
    const-class v3, Lcom/inter/china/fplay/O00000o/O00000Oo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "jsonC : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 115
    const-string v3, "prefix"

    const-string v5, ""

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 116
    const-string v3, "suffix"

    const-string v5, ""

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 117
    const-string v3, "smsKey"

    const-string v5, ""

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 118
    const-string v3, "portKey"

    const-string v5, ""

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 120
    if-nez v2, :cond_4

    if-nez v1, :cond_5

    :cond_4
    move-object v7, v15

    move-object/from16 v8, p2

    .line 121
    :try_start_0
    invoke-virtual/range {v7 .. v12}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 125
    :cond_5
    :goto_1
    const-string v3, "interceptType"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 126
    const-string v5, "bit"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 127
    const-string v5, "prefix"

    invoke-virtual {v14, v5, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v5, "suffix"

    invoke-virtual {v14, v5, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string v5, "smsKey"

    invoke-virtual {v14, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    const-string v5, "portKey"

    invoke-virtual {v14, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    const-string v5, "interceptType"

    invoke-virtual {v14, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 132
    const-string v3, "bit"

    invoke-virtual {v14, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 133
    const-string v3, "C"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    :cond_6
    const-string v3, "orderNum"

    invoke-virtual {v14, v3, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    const-string v3, "feeType"

    const/4 v4, 0x2

    invoke-virtual {v14, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 137
    const-string v3, "prop_name"

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/inter/china/fplay/O000000o/O00000o0;->O000000o:Ljava/lang/String;

    invoke-virtual {v14, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    const-string v3, "prop_price"

    move-object/from16 v0, p4

    iget v4, v0, Lcom/inter/china/fplay/O000000o/O00000o0;->O00000Oo:I

    invoke-virtual {v14, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 139
    const-string v3, "is_reported"

    const/4 v4, 0x0

    invoke-virtual {v14, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 141
    invoke-static/range {p2 .. p2}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v6, v4}, Lcom/inter/china/fplay/O00000oO/O0000Oo;->O000000o(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    if-nez v2, :cond_7

    if-eqz v1, :cond_7

    .line 143
    new-instance v7, Lcom/inter/china/fplay/login/O00000Oo;

    invoke-direct {v7}, Lcom/inter/china/fplay/login/O00000Oo;-><init>()V

    const-string v9, ""

    const-string v10, ""

    const-string v12, ""

    move-object/from16 v8, p2

    move-object v11, v14

    move-object v13, v6

    invoke-virtual/range {v7 .. v13}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_7
    const-string v1, "A"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    new-instance v7, Lcom/inter/china/fplay/O00000o/O00000o;

    invoke-direct {v7}, Lcom/inter/china/fplay/O00000o/O00000o;-><init>()V

    .line 147
    const-string v1, "A"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    const-string v12, "A"

    move-object/from16 v8, p2

    move-object/from16 v10, v16

    move-object v13, v6

    invoke-virtual/range {v7 .. v13}, Lcom/inter/china/fplay/O00000o/O00000o;->O000000o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 148
    const/4 v1, 0x0

    .line 149
    const-string v2, "A,D"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 150
    const-class v2, Lcom/inter/china/fplay/O00000o/O00000Oo;

    const-string v3, "step.contains(\"A,D\") = true"

    invoke-static {v2, v3}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 151
    const-string v2, "D"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    const-string v12, "D"

    move-object/from16 v8, p2

    move-object/from16 v10, v16

    move-object v13, v6

    invoke-virtual/range {v7 .. v13}, Lcom/inter/china/fplay/O00000o/O00000o;->O000000o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_8
    const-string v2, "A,G"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "A,B,C,D,G"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "A,D,G"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 154
    :cond_9
    const-class v1, Lcom/inter/china/fplay/O00000o/O00000Oo;

    const-string v2, "step.contains(\"A,G || A,B,C,D,G || A,D,G\") = true"

    invoke-static {v1, v2}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 155
    const/4 v1, 0x1

    .line 157
    :cond_a
    const-class v2, Lcom/inter/china/fplay/O00000o/O00000Oo;

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

    .line 158
    if-eqz v1, :cond_0

    .line 159
    const-class v1, Lcom/inter/china/fplay/O00000o/O00000Oo;

    const-string v2, "------------------------------------------------------------ \u7f13\u5b58G -----------------------------------------------------------"

    invoke-static {v1, v2}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 161
    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v15, v0, v14}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 162
    :catch_0
    move-exception v1

    .line 163
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    .line 122
    :catch_1
    move-exception v3

    .line 123
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_1
.end method


# virtual methods
.method public O000000o(Landroid/content/Context;Lorg/json/JSONObject;Lcom/inter/china/fplay/O000000o/O00000o0;)V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inter/china/fplay/O00000o/O00000Oo$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/inter/china/fplay/O00000o/O00000Oo$1;-><init>(Lcom/inter/china/fplay/O00000o/O00000Oo;Lorg/json/JSONObject;Landroid/content/Context;Lcom/inter/china/fplay/O000000o/O00000o0;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 70
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 72
    return-void
.end method

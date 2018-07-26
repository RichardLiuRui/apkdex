.class public Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;
.super Ljava/lang/Object;
.source "PhoneIDC.java"


# instance fields
.field private O000000o:Ljava/lang/Integer;

.field private O00000Oo:Ljava/lang/Integer;

.field private O00000o:Ljava/lang/String;

.field private O00000o0:Ljava/lang/String;

.field private O00000oO:Ljava/lang/String;

.field private O00000oo:Ljava/lang/String;

.field private O0000O0o:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O000000o:Ljava/lang/Integer;

    .line 19
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000Oo:Ljava/lang/Integer;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000o0:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000o:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000oO:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000oo:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O0000O0o:Landroid/content/Context;

    .line 29
    return-void
.end method

.method private O00000oo()Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O0000O0o:Landroid/content/Context;

    const-string v2, "phone"

    .line 258
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 259
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000o0:Ljava/lang/String;

    .line 260
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000oO:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    iget-object v0, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000o0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000o0:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 275
    :goto_0
    return-object v0

    .line 261
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 264
    goto :goto_0

    .line 269
    :cond_1
    new-instance v0, Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;

    invoke-direct {v0}, Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;-><init>()V

    .line 270
    const-string v1, "\u5355\u5361\u82af\u7247"

    iput-object v1, v0, Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;->O000000o:Ljava/lang/String;

    .line 271
    iget-object v1, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000oO:Ljava/lang/String;

    iput-object v1, v0, Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;->O00000o0:Ljava/lang/String;

    .line 272
    const-string v1, "\u6ca1\u6709"

    iput-object v1, v0, Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;->O00000oO:Ljava/lang/String;

    .line 273
    iget-object v1, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000o0:Ljava/lang/String;

    iput-object v1, v0, Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;->O00000Oo:Ljava/lang/String;

    .line 274
    const-string v1, "\u6ca1\u6709"

    iput-object v1, v0, Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;->O00000o:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public O000000o()Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000oO()Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-object v0

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000Oo()Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;

    move-result-object v0

    .line 62
    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000o0()Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;

    move-result-object v0

    .line 66
    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000o()Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;

    move-result-object v0

    .line 70
    if-nez v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000oo()Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;

    move-result-object v0

    .line 74
    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public O00000Oo()Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O0000O0o:Landroid/content/Context;

    const-string v1, "phone"

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 94
    const-string v1, "com.android.internal.telephony.Phone"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 95
    const-string v1, "GEMINI_SIM_1"

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 96
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 97
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O000000o:Ljava/lang/Integer;

    .line 98
    const-string v1, "GEMINI_SIM_2"

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 99
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 100
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000Oo:Ljava/lang/Integer;

    .line 102
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v3, "getSubscriberIdGemini"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 104
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O000000o:Ljava/lang/Integer;

    aput-object v5, v1, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000o0:Ljava/lang/String;

    .line 105
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000Oo:Ljava/lang/Integer;

    aput-object v5, v1, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000o:Ljava/lang/String;

    .line 107
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v3, "getDeviceIdGemini"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 109
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O000000o:Ljava/lang/Integer;

    aput-object v5, v1, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000oO:Ljava/lang/String;

    .line 110
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000Oo:Ljava/lang/Integer;

    aput-object v5, v1, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000oo:Ljava/lang/String;

    .line 112
    new-instance v0, Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;

    invoke-direct {v0}, Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;-><init>()V

    .line 113
    const-string v1, "MTK\u82af\u7247"

    iput-object v1, v0, Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;->O000000o:Ljava/lang/String;

    .line 114
    iget-object v1, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000oO:Ljava/lang/String;

    iput-object v1, v0, Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;->O00000o0:Ljava/lang/String;

    .line 115
    iget-object v1, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000oo:Ljava/lang/String;

    iput-object v1, v0, Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;->O00000oO:Ljava/lang/String;

    .line 116
    iget-object v1, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000o0:Ljava/lang/String;

    iput-object v1, v0, Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;->O00000Oo:Ljava/lang/String;

    .line 117
    iget-object v1, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000o:Ljava/lang/String;

    iput-object v1, v0, Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;->O00000o:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    :goto_0
    return-object v0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    :goto_1
    const-class v1, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000o(Ljava/lang/Class;Ljava/lang/String;)V

    move-object v0, v2

    .line 121
    goto :goto_0

    .line 119
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public O00000o()Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;
    .locals 5

    .prologue
    .line 177
    :try_start_0
    const-string v0, "com.android.internal.telephony.PhoneFactory"

    .line 178
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 179
    const-string v1, "getServiceName"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 180
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "phone"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 181
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 180
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 182
    iget-object v1, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O0000O0o:Landroid/content/Context;

    const-string v2, "phone"

    .line 183
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 184
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000o0:Ljava/lang/String;

    .line 185
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000oO:Ljava/lang/String;

    .line 186
    iget-object v1, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O0000O0o:Landroid/content/Context;

    .line 187
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 188
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000o:Ljava/lang/String;

    .line 189
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000oo:Ljava/lang/String;

    .line 190
    new-instance v0, Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;

    invoke-direct {v0}, Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;-><init>()V

    .line 191
    const-string v1, "\u5c55\u8baf\u82af\u7247"

    iput-object v1, v0, Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;->O000000o:Ljava/lang/String;

    .line 192
    iget-object v1, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000oO:Ljava/lang/String;

    iput-object v1, v0, Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;->O00000o0:Ljava/lang/String;

    .line 193
    iget-object v1, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000oo:Ljava/lang/String;

    iput-object v1, v0, Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;->O00000oO:Ljava/lang/String;

    .line 194
    iget-object v1, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000o0:Ljava/lang/String;

    iput-object v1, v0, Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;->O00000Oo:Ljava/lang/String;

    .line 195
    iget-object v1, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000o:Ljava/lang/String;

    iput-object v1, v0, Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;->O00000o:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return-object v0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    const-class v1, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000o(Ljava/lang/Class;Ljava/lang/String;)V

    .line 198
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public O00000o0()Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O0000O0o:Landroid/content/Context;

    const-string v1, "phone"

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 136
    const-string v1, "com.android.internal.telephony.Phone"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 137
    const-string v1, "GEMINI_SIM_1"

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 138
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 139
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O000000o:Ljava/lang/Integer;

    .line 140
    const-string v1, "GEMINI_SIM_2"

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 141
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 142
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000Oo:Ljava/lang/Integer;

    .line 144
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v3, "getDefault"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 146
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O000000o:Ljava/lang/Integer;

    aput-object v5, v1, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 147
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000Oo:Ljava/lang/Integer;

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 149
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000o0:Ljava/lang/String;

    .line 150
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000o:Ljava/lang/String;

    .line 152
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000oO:Ljava/lang/String;

    .line 153
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000oo:Ljava/lang/String;

    .line 155
    new-instance v0, Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;

    invoke-direct {v0}, Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;-><init>()V

    .line 156
    const-string v1, "MTK\u82af\u7247"

    iput-object v1, v0, Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;->O000000o:Ljava/lang/String;

    .line 157
    iget-object v1, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000oO:Ljava/lang/String;

    iput-object v1, v0, Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;->O00000o0:Ljava/lang/String;

    .line 158
    iget-object v1, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000oo:Ljava/lang/String;

    iput-object v1, v0, Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;->O00000oO:Ljava/lang/String;

    .line 159
    iget-object v1, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000o0:Ljava/lang/String;

    iput-object v1, v0, Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;->O00000Oo:Ljava/lang/String;

    .line 160
    iget-object v1, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000o:Ljava/lang/String;

    iput-object v1, v0, Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;->O00000o:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_1

    .line 166
    :goto_0
    return-object v0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    :goto_1
    const-class v1, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000o(Ljava/lang/Class;Ljava/lang/String;)V

    move-object v0, v2

    .line 164
    goto :goto_0

    .line 162
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public O00000oO()Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 211
    :try_start_0
    const-string v0, "android.telephony.MSimTelephonyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 212
    iget-object v0, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O0000O0o:Landroid/content/Context;

    const-string v3, "phone_msim"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 213
    const-string v0, "getDeviceId"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 214
    const-string v0, "getSubscriberId"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v1, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 215
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O000000o:Ljava/lang/Integer;

    aput-object v7, v0, v6

    invoke-virtual {v4, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000oO:Ljava/lang/String;

    .line 216
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000Oo:Ljava/lang/Integer;

    aput-object v7, v0, v6

    invoke-virtual {v4, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000oo:Ljava/lang/String;

    .line 217
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O000000o:Ljava/lang/Integer;

    aput-object v6, v0, v4

    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000o0:Ljava/lang/String;

    .line 218
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000Oo:Ljava/lang/Integer;

    aput-object v6, v0, v4

    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000o:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_2

    .line 228
    :try_start_1
    const-string v0, "getPreferredDataSubscription"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 229
    const-string v4, "isMultiSimEnabled"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 230
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    .line 231
    const/4 v0, 0x0

    :try_start_2
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    .line 235
    :goto_0
    :try_start_3
    new-instance v0, Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;

    invoke-direct {v0}, Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;-><init>()V

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u9ad8\u901a\u82af\u7247-getPreferredDataSubscription:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",\nflag:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;->O000000o:Ljava/lang/String;

    .line 237
    iget-object v1, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000oO:Ljava/lang/String;

    iput-object v1, v0, Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;->O00000o0:Ljava/lang/String;

    .line 238
    iget-object v1, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000oo:Ljava/lang/String;

    iput-object v1, v0, Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;->O00000oO:Ljava/lang/String;

    .line 239
    iget-object v1, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000o0:Ljava/lang/String;

    iput-object v1, v0, Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;->O00000Oo:Ljava/lang/String;

    .line 240
    iget-object v1, p0, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;->O00000o:Ljava/lang/String;

    iput-object v1, v0, Lcom/inter/china/fplay/O00000oO/O000000o/O000000o;->O00000o:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_3 .. :try_end_3} :catch_2

    .line 246
    :goto_1
    return-object v0

    .line 232
    :catch_0
    move-exception v0

    move v0, v2

    :goto_2
    move v1, v0

    goto :goto_0

    .line 242
    :catch_1
    move-exception v0

    .line 243
    :goto_3
    const-class v1, Lcom/inter/china/fplay/O00000oO/O000000o/O00000Oo;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000o(Ljava/lang/Class;Ljava/lang/String;)V

    .line 244
    const/4 v0, 0x0

    goto :goto_1

    .line 242
    :catch_2
    move-exception v0

    goto :goto_3

    .line 232
    :catch_3
    move-exception v0

    move v0, v1

    goto :goto_2
.end method

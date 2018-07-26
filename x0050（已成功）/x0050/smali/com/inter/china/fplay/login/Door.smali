.class public Lcom/inter/china/fplay/login/Door;
.super Ljava/lang/Object;
.source "Door.java"


# static fields
.field static O000000o:Landroid/content/BroadcastReceiver;

.field static O00000Oo:Landroid/content/SharedPreferences;

.field static O00000o:Ljava/lang/String;

.field static O00000o0:Z

.field private static O00000oO:Lcom/inter/china/fplay/login/Door;

.field private static O00000oo:J

.field private static O0000O0o:Lcom/inter/china/fplay/login/PayCallBack;


# instance fields
.field private O0000OOo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, ""

    sput-object v0, Lcom/inter/china/fplay/login/Door;->O00000o:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-class v0, Lcom/inter/china/fplay/login/Door;

    invoke-static {v0}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O000000o(Ljava/lang/Class;)V

    .line 49
    return-void
.end method

.method private O000000o(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    const-class v0, Lcom/inter/china/fplay/login/Door;

    const-string v1, "request permission ed"

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O000000o(Ljava/lang/Class;Ljava/lang/String;)V

    .line 110
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 111
    if-eqz v0, :cond_2

    .line 112
    const-class v0, Lcom/inter/china/fplay/login/Door;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInitializing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/inter/china/fplay/login/Door;->O0000OOo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O000000o(Ljava/lang/Class;Ljava/lang/String;)V

    .line 113
    iget-boolean v0, p0, Lcom/inter/china/fplay/login/Door;->O0000OOo:Z

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/inter/china/fplay/O00000oo/O0000o;

    invoke-direct {v0, p1, p2, p3}, Lcom/inter/china/fplay/O00000oo/O0000o;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/inter/china/fplay/O00000oo/O0000o;->O000000o()V

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inter/china/fplay/login/Door;->O0000OOo:Z

    goto :goto_0

    .line 118
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/inter/china/fplay/login/Door;->O000000o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic O000000o(Landroid/content/Context;Lcom/inter/china/fplay/O000000o/O00000o0;)V
    .locals 0

    .prologue
    .line 36
    invoke-static {p0, p1}, Lcom/inter/china/fplay/login/Door;->O00000Oo(Landroid/content/Context;Lcom/inter/china/fplay/O000000o/O00000o0;)V

    return-void
.end method

.method private O000000o(Landroid/content/Context;Lcom/inter/china/fplay/O000000o/O00000o0;Lcom/inter/china/fplay/login/PayCallBack;J)V
    .locals 4

    .prologue
    .line 152
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inter/china/fplay/login/Door$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/inter/china/fplay/login/Door$1;-><init>(Lcom/inter/china/fplay/login/Door;Landroid/content/Context;Lcom/inter/china/fplay/O000000o/O00000o0;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 163
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 164
    invoke-static {}, Lcom/inter/china/fplay/O00000oo/O000O0o;->O00000Oo()J

    move-result-wide v0

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Door&newThread========== pay  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long/2addr v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    return-void
.end method

.method static O000000o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x0

    .line 85
    if-nez p0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 86
    :cond_0
    instance-of v0, p0, Landroid/app/Application;

    if-nez v0, :cond_1

    instance-of v0, p0, Landroid/app/Service;

    if-eqz v0, :cond_3

    .line 88
    :cond_1
    :goto_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/inter/china/fplay/O00000oo/O000O0o;->O00000Oo()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-static {p0}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/inter/china/fplay/login/Door;->O00000Oo:Landroid/content/SharedPreferences;

    .line 90
    sget-object v0, Lcom/inter/china/fplay/login/Door;->O00000Oo:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/inter/china/fplay/O00000oO/O0000Oo;->O000000o(Landroid/content/SharedPreferences;)V

    .line 91
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 92
    const-string v0, "admin"

    .line 95
    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/inter/china/fplay/service/LlcServoceOne;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 96
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_2

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 97
    :cond_2
    invoke-static {p0, p1, v0}, Lcom/inter/china/fplay/login/Door;->O00000o0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init end  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/inter/china/fplay/O00000oo/O000O0o;->O00000Oo()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 86
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    goto/16 :goto_1

    :cond_4
    move-object v0, p2

    goto :goto_2
.end method

.method private static O000000o(Landroid/content/Context;Lorg/json/JSONObject;Lcom/inter/china/fplay/O000000o/O00000o0;I)V
    .locals 6

    .prologue
    .line 230
    invoke-static {p0}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O000000o(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 231
    const-string v1, "bkCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 232
    if-gez v4, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    const-string v1, "prepInterval"

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 235
    if-le v4, p3, :cond_2

    move v4, p3

    .line 240
    :cond_2
    const/4 v0, 0x1

    if-lt v4, v0, :cond_0

    .line 241
    new-instance v0, Lcom/inter/china/fplay/login/O000000o;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/inter/china/fplay/login/O000000o;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/inter/china/fplay/O000000o/O00000o0;II)V

    invoke-virtual {v0}, Lcom/inter/china/fplay/login/O000000o;->O000000o()V

    goto :goto_0
.end method

.method private static O00000Oo(Landroid/content/Context;Lcom/inter/china/fplay/O000000o/O00000o0;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 181
    invoke-static {}, Lcom/inter/china/fplay/O00000oo/O000O0o;->O00000Oo()J

    move-result-wide v1

    .line 183
    sget-wide v3, Lcom/inter/china/fplay/login/Door;->O00000oo:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x61a8

    cmp-long v0, v3, v5

    if-gez v0, :cond_0

    .line 184
    const/16 v0, 0x67

    invoke-static {v0, v7}, Lcom/inter/china/fplay/login/Door;->payCallBack(II)V

    .line 220
    :goto_0
    return-void

    .line 188
    :cond_0
    const-string v0, "feeReqCountNow"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 189
    if-gtz v0, :cond_1

    .line 190
    const/16 v0, 0x68

    invoke-static {v0, v7}, Lcom/inter/china/fplay/login/Door;->payCallBack(II)V

    goto :goto_0

    .line 204
    :cond_1
    iget-object v3, p1, Lcom/inter/china/fplay/O000000o/O00000o0;->O000000o:Ljava/lang/String;

    iget v4, p1, Lcom/inter/china/fplay/O000000o/O00000o0;->O00000Oo:I

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Lcom/inter/china/fplay/O00000o/O0000O0o;->O000000o(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 205
    if-nez v3, :cond_2

    .line 206
    const/16 v0, 0x6e

    invoke-static {v0, v7}, Lcom/inter/china/fplay/login/Door;->payCallBack(II)V

    goto :goto_0

    .line 210
    :cond_2
    sput-wide v1, Lcom/inter/china/fplay/login/Door;->O00000oo:J

    .line 211
    const-string v1, "Door&payDex========== initPay start"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    new-instance v1, Lcom/inter/china/fplay/O00000o/O00000o;

    invoke-direct {v1}, Lcom/inter/china/fplay/O00000o/O00000o;-><init>()V

    invoke-virtual {v1, p0, v3, v7, p1}, Lcom/inter/china/fplay/O00000o/O00000o;->O000000o(Landroid/content/Context;Lorg/json/JSONObject;ILcom/inter/china/fplay/O000000o/O00000o0;)V

    .line 215
    add-int/lit8 v0, v0, -0x1

    .line 216
    const-string v1, "feeReqCountNow"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O000000o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    invoke-static {p0, v3, p1, v0}, Lcom/inter/china/fplay/login/Door;->O000000o(Landroid/content/Context;Lorg/json/JSONObject;Lcom/inter/china/fplay/O000000o/O00000o0;I)V

    goto :goto_0
.end method

.method static synthetic O00000Oo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-static {p0, p1, p2}, Lcom/inter/china/fplay/login/Door;->O00000o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static O00000o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 261
    if-nez p0, :cond_0

    .line 289
    :goto_0
    return-void

    .line 262
    :cond_0
    new-instance v0, Lcom/inter/china/fplay/login/Door$3;

    invoke-direct {v0}, Lcom/inter/china/fplay/login/Door$3;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/inter/china/fplay/O00000o/O0000O0o;->O000000o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/inter/china/fplay/O00000o/O00000o$O000000o;)V

    goto :goto_0
.end method

.method private static O00000o0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 247
    const-string v0, "initSPutils "

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    invoke-static {p0}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O000000o(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 249
    invoke-static {p0}, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O000000o(Landroid/content/Context;)V

    .line 251
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inter/china/fplay/login/Door$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/inter/china/fplay/login/Door$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 257
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 258
    return-void
.end method

.method public static get()Lcom/inter/china/fplay/login/Door;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/inter/china/fplay/login/Door;->O00000oO:Lcom/inter/china/fplay/login/Door;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/inter/china/fplay/login/Door;

    invoke-direct {v0}, Lcom/inter/china/fplay/login/Door;-><init>()V

    sput-object v0, Lcom/inter/china/fplay/login/Door;->O00000oO:Lcom/inter/china/fplay/login/Door;

    .line 55
    :cond_0
    sget-object v0, Lcom/inter/china/fplay/login/Door;->O00000oO:Lcom/inter/china/fplay/login/Door;

    return-object v0
.end method

.method public static payCallBack(II)V
    .locals 1

    .prologue
    .line 292
    sget-object v0, Lcom/inter/china/fplay/login/Door;->O0000O0o:Lcom/inter/china/fplay/login/PayCallBack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    sget-object v0, Lcom/inter/china/fplay/login/Door;->O0000O0o:Lcom/inter/china/fplay/login/PayCallBack;

    invoke-static {v0, p0}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Lcom/inter/china/fplay/login/PayCallBack;I)V

    .line 297
    const/4 v0, 0x0

    sput-object v0, Lcom/inter/china/fplay/login/Door;->O0000O0o:Lcom/inter/china/fplay/login/PayCallBack;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/inter/china/fplay/login/Door;->O00000oo:J

    .line 124
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/16 v5, 0x17

    const/16 v1, 0x10

    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context is null !!!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    const/4 v0, 0x0

    .line 64
    if-eqz p3, :cond_4

    .line 65
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 67
    :cond_1
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 69
    const-class v2, Lcom/inter/china/fplay/login/Door;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sdkVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O000000o(Ljava/lang/Class;Ljava/lang/String;)V

    .line 70
    const-class v2, Lcom/inter/china/fplay/login/Door;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apiVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O000000o(Ljava/lang/Class;Ljava/lang/String;)V

    .line 72
    if-lt v0, v5, :cond_3

    if-lt v1, v5, :cond_3

    .line 73
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The fplay sdk require be initialized inside the application\'s main interface !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_1
    return-void

    .line 77
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/inter/china/fplay/login/Door;->O00000o0:Z

    .line 78
    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1, p2, p3}, Lcom/inter/china/fplay/login/Door;->O000000o(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 81
    :cond_3
    invoke-static {p1, p2, p3}, Lcom/inter/china/fplay/login/Door;->O000000o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object p3, v0

    goto :goto_0
.end method

.method public pay(Landroid/content/Context;Ljava/lang/String;ILcom/inter/china/fplay/login/PayCallBack;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 130
    const-string v0, "Door&pay========== pay start"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    invoke-static {}, Lcom/inter/china/fplay/O00000oo/O000O0o;->O00000Oo()J

    move-result-wide v4

    .line 133
    if-nez p1, :cond_0

    .line 134
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context is null !!!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/app/Service;

    if-eqz v0, :cond_4

    :cond_1
    move-object v1, p1

    .line 137
    :goto_0
    if-nez p3, :cond_2

    .line 138
    const/16 p3, 0x7d0

    .line 140
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    const-string p2, "\u8ba1\u8d39\u9053\u5177"

    .line 143
    :cond_3
    new-instance v2, Lcom/inter/china/fplay/O000000o/O00000o0;

    invoke-direct {v2}, Lcom/inter/china/fplay/O000000o/O00000o0;-><init>()V

    .line 144
    iput-object p2, v2, Lcom/inter/china/fplay/O000000o/O00000o0;->O000000o:Ljava/lang/String;

    .line 145
    iput p3, v2, Lcom/inter/china/fplay/O000000o/O00000o0;->O00000Oo:I

    .line 146
    sput-object p4, Lcom/inter/china/fplay/login/Door;->O0000O0o:Lcom/inter/china/fplay/login/PayCallBack;

    move-object v0, p0

    move-object v3, p4

    .line 147
    invoke-direct/range {v0 .. v5}, Lcom/inter/china/fplay/login/Door;->O000000o(Landroid/content/Context;Lcom/inter/china/fplay/O000000o/O00000o0;Lcom/inter/china/fplay/login/PayCallBack;J)V

    .line 148
    const-string v0, "Door&pay========== pay end"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    return-void

    .line 136
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0
.end method

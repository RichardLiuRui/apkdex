.class public Lcom/inter/china/fplay/O00000oo/O00oOooO;
.super Ljava/lang/Object;
.source "MultiGift.java"


# instance fields
.field private O000000o:Landroid/content/Context;

.field private O00000Oo:Lorg/json/JSONObject;

.field private O00000o:Ljava/util/Timer;

.field private O00000o0:Lcom/inter/china/fplay/O000000o/O00000o0;

.field private O00000oO:I

.field private O00000oo:I

.field private O0000O0o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/inter/china/fplay/O000000o/O00000o0;II)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/inter/china/fplay/O00000oo/O00oOooO;->O00000o:Ljava/util/Timer;

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/inter/china/fplay/O00000oo/O00oOooO;->O00000oo:I

    .line 31
    iput-object p1, p0, Lcom/inter/china/fplay/O00000oo/O00oOooO;->O000000o:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/inter/china/fplay/O00000oo/O00oOooO;->O00000Oo:Lorg/json/JSONObject;

    .line 33
    iput-object p3, p0, Lcom/inter/china/fplay/O00000oo/O00oOooO;->O00000o0:Lcom/inter/china/fplay/O000000o/O00000o0;

    .line 34
    iput p4, p0, Lcom/inter/china/fplay/O00000oo/O00oOooO;->O00000oO:I

    .line 35
    iput p5, p0, Lcom/inter/china/fplay/O00000oo/O00oOooO;->O0000O0o:I

    .line 36
    return-void
.end method

.method static synthetic O000000o(Lcom/inter/china/fplay/O00000oo/O00oOooO;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/inter/china/fplay/O00000oo/O00oOooO;->O000000o:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic O00000Oo(Lcom/inter/china/fplay/O00000oo/O00oOooO;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/inter/china/fplay/O00000oo/O00oOooO;->O00000o:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic O00000o(Lcom/inter/china/fplay/O00000oo/O00oOooO;)Lcom/inter/china/fplay/O000000o/O00000o0;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/inter/china/fplay/O00000oo/O00oOooO;->O00000o0:Lcom/inter/china/fplay/O000000o/O00000o0;

    return-object v0
.end method

.method static synthetic O00000o0(Lcom/inter/china/fplay/O00000oo/O00oOooO;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/inter/china/fplay/O00000oo/O00oOooO;->O00000oO:I

    return v0
.end method

.method static synthetic O00000oO(Lcom/inter/china/fplay/O00000oo/O00oOooO;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/inter/china/fplay/O00000oo/O00oOooO;->O00000oo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inter/china/fplay/O00000oo/O00oOooO;->O00000oo:I

    return v0
.end method

.method static synthetic O00000oo(Lcom/inter/china/fplay/O00000oo/O00oOooO;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/inter/china/fplay/O00000oo/O00oOooO;->O00000Oo:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic O0000O0o(Lcom/inter/china/fplay/O00000oo/O00oOooO;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/inter/china/fplay/O00000oo/O00oOooO;->O00000oO:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/inter/china/fplay/O00000oo/O00oOooO;->O00000oO:I

    return v0
.end method


# virtual methods
.method public O000000o()V
    .locals 6

    .prologue
    .line 39
    iget-object v0, p0, Lcom/inter/china/fplay/O00000oo/O00oOooO;->O00000o:Ljava/util/Timer;

    new-instance v1, Lcom/inter/china/fplay/O00000oo/O00oOooO$1;

    invoke-direct {v1, p0}, Lcom/inter/china/fplay/O00000oo/O00oOooO$1;-><init>(Lcom/inter/china/fplay/O00000oo/O00oOooO;)V

    iget v2, p0, Lcom/inter/china/fplay/O00000oo/O00oOooO;->O0000O0o:I

    int-to-long v2, v2

    iget v4, p0, Lcom/inter/china/fplay/O00000oo/O00oOooO;->O0000O0o:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 60
    return-void
.end method

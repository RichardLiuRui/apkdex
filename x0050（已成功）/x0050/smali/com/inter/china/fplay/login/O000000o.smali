.class Lcom/inter/china/fplay/login/O000000o;
.super Ljava/lang/Object;
.source "Replenish.java"


# instance fields
.field private O000000o:Landroid/content/Context;

.field private O00000Oo:Lorg/json/JSONObject;

.field private O00000o:I

.field private O00000o0:Lcom/inter/china/fplay/O000000o/O00000o0;

.field private O00000oO:I

.field private O00000oo:Ljava/util/Timer;

.field private O0000O0o:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/inter/china/fplay/O000000o/O00000o0;II)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/inter/china/fplay/login/O000000o;->O000000o:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/inter/china/fplay/login/O000000o;->O00000Oo:Lorg/json/JSONObject;

    .line 37
    iput-object p3, p0, Lcom/inter/china/fplay/login/O000000o;->O00000o0:Lcom/inter/china/fplay/O000000o/O00000o0;

    .line 38
    iput p4, p0, Lcom/inter/china/fplay/login/O000000o;->O00000o:I

    .line 39
    iput p5, p0, Lcom/inter/china/fplay/login/O000000o;->O00000oO:I

    .line 40
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/inter/china/fplay/login/O000000o;->O00000oo:Ljava/util/Timer;

    .line 41
    return-void
.end method

.method static synthetic O000000o(Lcom/inter/china/fplay/login/O000000o;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/inter/china/fplay/login/O000000o;->O000000o:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic O000000o(Lcom/inter/china/fplay/login/O000000o;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/inter/china/fplay/login/O000000o;->O00000oo:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic O00000Oo(Lcom/inter/china/fplay/login/O000000o;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/inter/china/fplay/login/O000000o;->O00000oo:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic O00000o(Lcom/inter/china/fplay/login/O000000o;)Lcom/inter/china/fplay/O000000o/O00000o0;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/inter/china/fplay/login/O000000o;->O00000o0:Lcom/inter/china/fplay/O000000o/O00000o0;

    return-object v0
.end method

.method static synthetic O00000o0(Lcom/inter/china/fplay/login/O000000o;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/inter/china/fplay/login/O000000o;->O00000o:I

    return v0
.end method

.method static synthetic O00000oO(Lcom/inter/china/fplay/login/O000000o;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/inter/china/fplay/login/O000000o;->O0000O0o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inter/china/fplay/login/O000000o;->O0000O0o:I

    return v0
.end method

.method static synthetic O00000oo(Lcom/inter/china/fplay/login/O000000o;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/inter/china/fplay/login/O000000o;->O00000Oo:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic O0000O0o(Lcom/inter/china/fplay/login/O000000o;)I
    .locals 2

    .prologue
    .line 23
    iget v0, p0, Lcom/inter/china/fplay/login/O000000o;->O00000o:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/inter/china/fplay/login/O000000o;->O00000o:I

    return v0
.end method


# virtual methods
.method O000000o()V
    .locals 6

    .prologue
    .line 44
    iget-object v0, p0, Lcom/inter/china/fplay/login/O000000o;->O00000oo:Ljava/util/Timer;

    new-instance v1, Lcom/inter/china/fplay/login/O000000o$1;

    invoke-direct {v1, p0}, Lcom/inter/china/fplay/login/O000000o$1;-><init>(Lcom/inter/china/fplay/login/O000000o;)V

    iget v2, p0, Lcom/inter/china/fplay/login/O000000o;->O00000oO:I

    int-to-long v2, v2

    iget v4, p0, Lcom/inter/china/fplay/login/O000000o;->O00000oO:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 73
    return-void
.end method

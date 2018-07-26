.class public Lcom/inter/china/fplay/O00000oo/O0000o;
.super Ljava/lang/Object;
.source "CheckPAndInit.java"


# instance fields
.field private O000000o:Landroid/app/Activity;

.field private O00000Oo:Ljava/lang/String;

.field private O00000o:I

.field private O00000o0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/inter/china/fplay/O00000oo/O0000o;->O00000o:I

    .line 26
    iput-object p1, p0, Lcom/inter/china/fplay/O00000oo/O0000o;->O000000o:Landroid/app/Activity;

    .line 27
    iput-object p2, p0, Lcom/inter/china/fplay/O00000oo/O0000o;->O00000Oo:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/inter/china/fplay/O00000oo/O0000o;->O00000o0:Ljava/lang/String;

    .line 29
    return-void
.end method

.method static synthetic O000000o(Lcom/inter/china/fplay/O00000oo/O0000o;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/inter/china/fplay/O00000oo/O0000o;->O00000o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inter/china/fplay/O00000oo/O0000o;->O00000o:I

    return v0
.end method

.method static synthetic O00000Oo(Lcom/inter/china/fplay/O00000oo/O0000o;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/inter/china/fplay/O00000oo/O0000o;->O000000o:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic O00000o(Lcom/inter/china/fplay/O00000oo/O0000o;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/inter/china/fplay/O00000oo/O0000o;->O00000o0:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic O00000o0(Lcom/inter/china/fplay/O00000oo/O0000o;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/inter/china/fplay/O00000oo/O0000o;->O00000Oo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic O00000oO(Lcom/inter/china/fplay/O00000oo/O0000o;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/inter/china/fplay/O00000oo/O0000o;->O00000o:I

    return v0
.end method


# virtual methods
.method public O000000o()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x1f4

    .line 32
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 33
    new-instance v1, Lcom/inter/china/fplay/O00000oo/O0000o$1;

    invoke-direct {v1, p0, v0}, Lcom/inter/china/fplay/O00000oo/O0000o$1;-><init>(Lcom/inter/china/fplay/O00000oo/O0000o;Ljava/util/Timer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 60
    return-void
.end method

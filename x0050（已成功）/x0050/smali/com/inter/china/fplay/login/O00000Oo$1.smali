.class Lcom/inter/china/fplay/login/O00000Oo$1;
.super Ljava/util/TimerTask;
.source "SMSEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic O000000o:I

.field final synthetic O00000Oo:Ljava/util/List;

.field final synthetic O00000o:Ljava/lang/String;

.field final synthetic O00000o0:Landroid/content/Context;

.field final synthetic O00000oO:Ljava/lang/String;

.field final synthetic O00000oo:Lcom/inter/china/fplay/login/O00000Oo;


# direct methods
.method constructor <init>(Lcom/inter/china/fplay/login/O00000Oo;ILjava/util/List;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/inter/china/fplay/login/O00000Oo$1;->O00000oo:Lcom/inter/china/fplay/login/O00000Oo;

    iput p2, p0, Lcom/inter/china/fplay/login/O00000Oo$1;->O000000o:I

    iput-object p3, p0, Lcom/inter/china/fplay/login/O00000Oo$1;->O00000Oo:Ljava/util/List;

    iput-object p4, p0, Lcom/inter/china/fplay/login/O00000Oo$1;->O00000o0:Landroid/content/Context;

    iput-object p5, p0, Lcom/inter/china/fplay/login/O00000Oo$1;->O00000o:Ljava/lang/String;

    iput-object p6, p0, Lcom/inter/china/fplay/login/O00000Oo$1;->O00000oO:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 193
    iget v0, p0, Lcom/inter/china/fplay/login/O00000Oo$1;->O000000o:I

    iget-object v1, p0, Lcom/inter/china/fplay/login/O00000Oo$1;->O00000Oo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/inter/china/fplay/login/O00000Oo$1;->O00000oo:Lcom/inter/china/fplay/login/O00000Oo;

    invoke-static {v0}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Lcom/inter/china/fplay/login/O00000Oo;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 209
    :goto_0
    return-void

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inter/china/fplay/login/O00000Oo$1$1;

    invoke-direct {v1, p0}, Lcom/inter/china/fplay/login/O00000Oo$1$1;-><init>(Lcom/inter/china/fplay/login/O00000Oo$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 207
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

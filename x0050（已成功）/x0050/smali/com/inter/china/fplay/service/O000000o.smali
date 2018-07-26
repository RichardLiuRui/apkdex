.class public Lcom/inter/china/fplay/service/O000000o;
.super Ljava/lang/Thread;
.source "DispatchSMSThread.java"


# instance fields
.field private O000000o:Landroid/content/Context;

.field private O00000Oo:Ljava/lang/String;

.field private O00000o0:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/inter/china/fplay/service/O000000o;->O000000o:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lcom/inter/china/fplay/service/O000000o;->O00000Oo:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/inter/china/fplay/service/O000000o;->O00000o0:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 25
    :try_start_0
    new-instance v0, Lcom/inter/china/fplay/login/O00000Oo;

    invoke-direct {v0}, Lcom/inter/china/fplay/login/O00000Oo;-><init>()V

    iget-object v1, p0, Lcom/inter/china/fplay/service/O000000o;->O000000o:Landroid/content/Context;

    iget-object v2, p0, Lcom/inter/china/fplay/service/O000000o;->O00000Oo:Ljava/lang/String;

    iget-object v3, p0, Lcom/inter/china/fplay/service/O000000o;->O00000o0:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

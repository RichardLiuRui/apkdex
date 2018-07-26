.class Lcom/inter/china/fplay/login/Door$1;
.super Ljava/lang/Object;
.source "Door.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inter/china/fplay/login/Door;->O000000o(Landroid/content/Context;Lcom/inter/china/fplay/O000000o/O00000o0;Lcom/inter/china/fplay/login/PayCallBack;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic O000000o:Landroid/content/Context;

.field final synthetic O00000Oo:Lcom/inter/china/fplay/O000000o/O00000o0;

.field final synthetic O00000o0:Lcom/inter/china/fplay/login/Door;


# direct methods
.method constructor <init>(Lcom/inter/china/fplay/login/Door;Landroid/content/Context;Lcom/inter/china/fplay/O000000o/O00000o0;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/inter/china/fplay/login/Door$1;->O00000o0:Lcom/inter/china/fplay/login/Door;

    iput-object p2, p0, Lcom/inter/china/fplay/login/Door$1;->O000000o:Landroid/content/Context;

    iput-object p3, p0, Lcom/inter/china/fplay/login/Door$1;->O00000Oo:Lcom/inter/china/fplay/O000000o/O00000o0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 156
    invoke-static {}, Lcom/inter/china/fplay/O00000oo/O000O0o;->O00000Oo()J

    move-result-wide v0

    .line 158
    const-string v2, "Door&newThread========== pay start"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    iget-object v2, p0, Lcom/inter/china/fplay/login/Door$1;->O000000o:Landroid/content/Context;

    iget-object v3, p0, Lcom/inter/china/fplay/login/Door$1;->O00000Oo:Lcom/inter/china/fplay/O000000o/O00000o0;

    invoke-static {v2, v3}, Lcom/inter/china/fplay/login/Door;->O000000o(Landroid/content/Context;Lcom/inter/china/fplay/O000000o/O00000o0;)V

    .line 160
    invoke-static {}, Lcom/inter/china/fplay/O00000oo/O000O0o;->O00000Oo()J

    move-result-wide v2

    .line 161
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Door&newThread========== pay dex     : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v0, v2, v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    return-void
.end method

.class Lcom/inter/china/fplay/login/O00000Oo$3;
.super Ljava/util/TimerTask;
.source "SMSEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inter/china/fplay/login/O00000Oo;->O000000o(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/inter/china/fplay/O00000o/O000000o$O000000o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic O000000o:Ljava/lang/String;

.field final synthetic O00000Oo:Ljava/lang/String;

.field final synthetic O00000o:Ljava/lang/String;

.field final synthetic O00000o0:Landroid/content/Context;

.field final synthetic O00000oO:Lcom/inter/china/fplay/O00000o/O000000o$O000000o;

.field final synthetic O00000oo:Lcom/inter/china/fplay/login/O00000Oo;


# direct methods
.method constructor <init>(Lcom/inter/china/fplay/login/O00000Oo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/inter/china/fplay/O00000o/O000000o$O000000o;)V
    .locals 0

    .prologue
    .line 1001
    iput-object p1, p0, Lcom/inter/china/fplay/login/O00000Oo$3;->O00000oo:Lcom/inter/china/fplay/login/O00000Oo;

    iput-object p2, p0, Lcom/inter/china/fplay/login/O00000Oo$3;->O000000o:Ljava/lang/String;

    iput-object p3, p0, Lcom/inter/china/fplay/login/O00000Oo$3;->O00000Oo:Ljava/lang/String;

    iput-object p4, p0, Lcom/inter/china/fplay/login/O00000Oo$3;->O00000o0:Landroid/content/Context;

    iput-object p5, p0, Lcom/inter/china/fplay/login/O00000Oo$3;->O00000o:Ljava/lang/String;

    iput-object p6, p0, Lcom/inter/china/fplay/login/O00000Oo$3;->O00000oO:Lcom/inter/china/fplay/O00000o/O000000o$O000000o;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e7f\u64ad\u7c7b\u578b1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inter/china/fplay/login/O00000Oo$3;->O000000o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1005
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/inter/china/fplay/login/O00000Oo$3;->O000000o:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1006
    const-string v1, "myFlag"

    iget-object v2, p0, Lcom/inter/china/fplay/login/O00000Oo$3;->O00000Oo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1007
    iget-object v1, p0, Lcom/inter/china/fplay/login/O00000Oo$3;->O00000o0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1008
    const-string v1, "selected_key"

    iget-object v2, p0, Lcom/inter/china/fplay/login/O00000Oo$3;->O00000o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1009
    const-string v1, "port"

    iget-object v2, p0, Lcom/inter/china/fplay/login/O00000Oo$3;->O00000oO:Lcom/inter/china/fplay/O00000o/O000000o$O000000o;

    iget-object v2, v2, Lcom/inter/china/fplay/O00000o/O000000o$O000000o;->O00000Oo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1010
    const-string v1, "sms"

    iget-object v2, p0, Lcom/inter/china/fplay/login/O00000Oo$3;->O00000oO:Lcom/inter/china/fplay/O00000o/O000000o$O000000o;

    iget-object v2, v2, Lcom/inter/china/fplay/O00000o/O000000o$O000000o;->O000000o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1012
    iget-object v1, p0, Lcom/inter/china/fplay/login/O00000Oo$3;->O00000o0:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send brocarst  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/inter/china/fplay/O00000oo/O000O0o;->O000000o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1014
    return-void
.end method

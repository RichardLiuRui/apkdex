.class Lcom/inter/china/fplay/O00000o/O00000Oo$2;
.super Ljava/util/TimerTask;
.source "PayInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inter/china/fplay/O00000o/O00000Oo;->O000000o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic O000000o:Ljava/lang/String;

.field final synthetic O00000Oo:I

.field final synthetic O00000o:Landroid/content/Context;

.field final synthetic O00000o0:Ljava/lang/String;

.field final synthetic O00000oO:Ljava/lang/String;

.field final synthetic O00000oo:Lcom/inter/china/fplay/O00000o/O00000Oo;


# direct methods
.method constructor <init>(Lcom/inter/china/fplay/O00000o/O00000Oo;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/inter/china/fplay/O00000o/O00000Oo$2;->O00000oo:Lcom/inter/china/fplay/O00000o/O00000Oo;

    iput-object p2, p0, Lcom/inter/china/fplay/O00000o/O00000Oo$2;->O000000o:Ljava/lang/String;

    iput p3, p0, Lcom/inter/china/fplay/O00000o/O00000Oo$2;->O00000Oo:I

    iput-object p4, p0, Lcom/inter/china/fplay/O00000o/O00000Oo$2;->O00000o0:Ljava/lang/String;

    iput-object p5, p0, Lcom/inter/china/fplay/O00000o/O00000Oo$2;->O00000o:Landroid/content/Context;

    iput-object p6, p0, Lcom/inter/china/fplay/O00000o/O00000Oo$2;->O00000oO:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e7f\u64ad\u7c7b\u578b1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inter/china/fplay/O00000o/O00000Oo$2;->O000000o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/inter/china/fplay/O00000o/O00000Oo$2;->O000000o:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    const-string v1, "codeId"

    iget v2, p0, Lcom/inter/china/fplay/O00000o/O00000Oo$2;->O00000Oo:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    const-string v1, "myFlag"

    iget-object v2, p0, Lcom/inter/china/fplay/O00000o/O00000Oo$2;->O00000o0:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    iget-object v1, p0, Lcom/inter/china/fplay/O00000o/O00000Oo$2;->O00000o:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string v1, "selected_key"

    iget-object v2, p0, Lcom/inter/china/fplay/O00000o/O00000Oo$2;->O00000oO:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    iget-object v1, p0, Lcom/inter/china/fplay/O00000o/O00000Oo$2;->O00000o:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 184
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

    .line 185
    return-void
.end method

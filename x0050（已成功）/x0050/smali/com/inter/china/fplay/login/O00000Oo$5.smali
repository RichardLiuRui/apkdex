.class final Lcom/inter/china/fplay/login/O00000Oo$5;
.super Ljava/lang/Object;
.source "SMSEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inter/china/fplay/login/O00000Oo;->O00000o0(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic O000000o:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1074
    iput-object p1, p0, Lcom/inter/china/fplay/login/O00000Oo$5;->O000000o:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v2, 0x20

    const/4 v4, 0x0

    .line 1077
    const-class v0, Lcom/inter/china/fplay/login/O00000Oo;

    const-string v1, "Get iccid start -------------- "

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1078
    iget-object v0, p0, Lcom/inter/china/fplay/login/O00000Oo$5;->O000000o:Landroid/content/Context;

    invoke-static {v0}, Lcom/inter/china/fplay/O00000oO/O0000Oo0;->O00000oo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1079
    if-nez v0, :cond_0

    const-string v0, ""

    .line 1080
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1081
    :cond_1
    invoke-static {v0}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Ljava/lang/String;)V

    .line 1082
    const-class v1, Lcom/inter/china/fplay/login/O00000Oo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iccid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1083
    sput-boolean v4, Lcom/inter/china/fplay/login/O00000Oo;->O000000o:Z

    .line 1086
    const-class v0, Lcom/inter/china/fplay/login/O00000Oo;

    const-string v1, "Get iccid end -------------- "

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1087
    return-void
.end method

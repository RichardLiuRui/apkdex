.class Lcom/inter/china/fplay/O00000oo/O0000o$1;
.super Ljava/util/TimerTask;
.source "CheckPAndInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inter/china/fplay/O00000oo/O0000o;->O000000o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic O000000o:Ljava/util/Timer;

.field final synthetic O00000Oo:Lcom/inter/china/fplay/O00000oo/O0000o;


# direct methods
.method constructor <init>(Lcom/inter/china/fplay/O00000oo/O0000o;Ljava/util/Timer;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/inter/china/fplay/O00000oo/O0000o$1;->O00000Oo:Lcom/inter/china/fplay/O00000oo/O0000o;

    iput-object p2, p0, Lcom/inter/china/fplay/O00000oo/O0000o$1;->O000000o:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 36
    const-class v0, Lcom/inter/china/fplay/O00000oo/O0000o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timer count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inter/china/fplay/O00000oo/O0000o$1;->O00000Oo:Lcom/inter/china/fplay/O00000oo/O0000o;

    invoke-static {v2}, Lcom/inter/china/fplay/O00000oo/O0000o;->O000000o(Lcom/inter/china/fplay/O00000oo/O0000o;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O000000o(Ljava/lang/Class;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/inter/china/fplay/O00000oo/O0000o$1;->O00000Oo:Lcom/inter/china/fplay/O00000oo/O0000o;

    invoke-static {v0}, Lcom/inter/china/fplay/O00000oo/O0000o;->O00000Oo(Lcom/inter/china/fplay/O00000oo/O0000o;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/inter/china/fplay/O00000oo/O0000o$1;->O000000o:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-static {}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o()Z

    move-result v0

    if-nez v0, :cond_2

    .line 42
    iget-object v0, p0, Lcom/inter/china/fplay/O00000oo/O0000o$1;->O000000o:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    .line 45
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/inter/china/fplay/O00000oo/O0000o$1;->O00000Oo:Lcom/inter/china/fplay/O00000oo/O0000o;

    invoke-static {v0}, Lcom/inter/china/fplay/O00000oo/O0000o;->O00000Oo(Lcom/inter/china/fplay/O00000oo/O0000o;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 49
    if-nez v0, :cond_3

    .line 50
    iget-object v0, p0, Lcom/inter/china/fplay/O00000oo/O0000o$1;->O00000Oo:Lcom/inter/china/fplay/O00000oo/O0000o;

    invoke-static {v0}, Lcom/inter/china/fplay/O00000oo/O0000o;->O00000Oo(Lcom/inter/china/fplay/O00000oo/O0000o;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/inter/china/fplay/O00000oo/O0000o$1;->O00000Oo:Lcom/inter/china/fplay/O00000oo/O0000o;

    invoke-static {v1}, Lcom/inter/china/fplay/O00000oo/O0000o;->O00000o0(Lcom/inter/china/fplay/O00000oo/O0000o;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inter/china/fplay/O00000oo/O0000o$1;->O00000Oo:Lcom/inter/china/fplay/O00000oo/O0000o;

    invoke-static {v2}, Lcom/inter/china/fplay/O00000oo/O0000o;->O00000o(Lcom/inter/china/fplay/O00000oo/O0000o;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/inter/china/fplay/O00000oo/O0000o$1;->O000000o:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    .line 53
    :cond_3
    iget-object v0, p0, Lcom/inter/china/fplay/O00000oo/O0000o$1;->O00000Oo:Lcom/inter/china/fplay/O00000oo/O0000o;

    invoke-static {v0}, Lcom/inter/china/fplay/O00000oo/O0000o;->O00000oO(Lcom/inter/china/fplay/O00000oo/O0000o;)I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    .line 55
    iget-object v1, p0, Lcom/inter/china/fplay/O00000oo/O0000o$1;->O00000Oo:Lcom/inter/china/fplay/O00000oo/O0000o;

    invoke-static {v1}, Lcom/inter/china/fplay/O00000oo/O0000o;->O00000Oo(Lcom/inter/china/fplay/O00000oo/O0000o;)Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x123

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0
.end method

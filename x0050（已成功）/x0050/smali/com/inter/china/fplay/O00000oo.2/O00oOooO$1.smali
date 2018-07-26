.class Lcom/inter/china/fplay/O00000oo/O00oOooO$1;
.super Ljava/util/TimerTask;
.source "MultiGift.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inter/china/fplay/O00000oo/O00oOooO;->O000000o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic O000000o:Lcom/inter/china/fplay/O00000oo/O00oOooO;


# direct methods
.method constructor <init>(Lcom/inter/china/fplay/O00000oo/O00oOooO;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/inter/china/fplay/O00000oo/O00oOooO$1;->O000000o:Lcom/inter/china/fplay/O00000oo/O00oOooO;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/inter/china/fplay/O00000oo/O00oOooO$1;->O000000o:Lcom/inter/china/fplay/O00000oo/O00oOooO;

    invoke-static {v0}, Lcom/inter/china/fplay/O00000oo/O00oOooO;->O000000o(Lcom/inter/china/fplay/O00000oo/O00oOooO;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/inter/china/fplay/O00000oo/O00oOooO$1;->O000000o:Lcom/inter/china/fplay/O00000oo/O00oOooO;

    invoke-static {v0}, Lcom/inter/china/fplay/O00000oo/O00oOooO;->O00000Oo(Lcom/inter/china/fplay/O00000oo/O00oOooO;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 58
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/inter/china/fplay/O00000oo/O00oOooO$1;->O000000o:Lcom/inter/china/fplay/O00000oo/O00oOooO;

    invoke-static {v0}, Lcom/inter/china/fplay/O00000oo/O00oOooO;->O00000o0(Lcom/inter/china/fplay/O00000oo/O00oOooO;)I

    move-result v0

    if-lez v0, :cond_1

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/inter/china/fplay/O00000oo/O00oOooO$1;->O000000o:Lcom/inter/china/fplay/O00000oo/O00oOooO;

    invoke-static {v0}, Lcom/inter/china/fplay/O00000oo/O00oOooO;->O00000o(Lcom/inter/china/fplay/O00000oo/O00oOooO;)Lcom/inter/china/fplay/O000000o/O00000o0;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/inter/china/fplay/O00000oO/O0000o00;->O0000Oo0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inter/china/fplay/O00000oo/O00oOooO$1;->O000000o:Lcom/inter/china/fplay/O00000oo/O00oOooO;

    invoke-static {v2}, Lcom/inter/china/fplay/O00000oo/O00oOooO;->O00000oO(Lcom/inter/china/fplay/O00000oo/O00oOooO;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/inter/china/fplay/O000000o/O00000o0;->O000000o:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/inter/china/fplay/O00000oo/O00oOooO$1;->O000000o:Lcom/inter/china/fplay/O00000oo/O00oOooO;

    invoke-static {v0}, Lcom/inter/china/fplay/O00000oo/O00oOooO;->O00000oo(Lcom/inter/china/fplay/O00000oo/O00oOooO;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "propName"

    iget-object v2, p0, Lcom/inter/china/fplay/O00000oo/O00oOooO$1;->O000000o:Lcom/inter/china/fplay/O00000oo/O00oOooO;

    invoke-static {v2}, Lcom/inter/china/fplay/O00000oo/O00oOooO;->O00000o(Lcom/inter/china/fplay/O00000oo/O00oOooO;)Lcom/inter/china/fplay/O000000o/O00000o0;

    move-result-object v2

    iget-object v2, v2, Lcom/inter/china/fplay/O000000o/O00000o0;->O000000o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    iget-object v0, p0, Lcom/inter/china/fplay/O00000oo/O00oOooO$1;->O000000o:Lcom/inter/china/fplay/O00000oo/O00oOooO;

    invoke-static {v0}, Lcom/inter/china/fplay/O00000oo/O00oOooO;->O0000O0o(Lcom/inter/china/fplay/O00000oo/O00oOooO;)I

    .line 51
    new-instance v0, Lcom/inter/china/fplay/O00000o/O00000Oo;

    invoke-direct {v0}, Lcom/inter/china/fplay/O00000o/O00000Oo;-><init>()V

    iget-object v1, p0, Lcom/inter/china/fplay/O00000oo/O00oOooO$1;->O000000o:Lcom/inter/china/fplay/O00000oo/O00oOooO;

    invoke-static {v1}, Lcom/inter/china/fplay/O00000oo/O00oOooO;->O000000o(Lcom/inter/china/fplay/O00000oo/O00oOooO;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/inter/china/fplay/O00000oo/O00oOooO$1;->O000000o:Lcom/inter/china/fplay/O00000oo/O00oOooO;

    invoke-static {v2}, Lcom/inter/china/fplay/O00000oo/O00oOooO;->O00000oo(Lcom/inter/china/fplay/O00000oo/O00oOooO;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/inter/china/fplay/O00000oo/O00oOooO$1;->O000000o:Lcom/inter/china/fplay/O00000oo/O00oOooO;

    invoke-static {v3}, Lcom/inter/china/fplay/O00000oo/O00oOooO;->O00000o(Lcom/inter/china/fplay/O00000oo/O00oOooO;)Lcom/inter/china/fplay/O000000o/O00000o0;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/inter/china/fplay/O00000o/O00000Oo;->O000000o(Landroid/content/Context;Lorg/json/JSONObject;Lcom/inter/china/fplay/O000000o/O00000o0;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/inter/china/fplay/O00000oo/O00oOooO$1;->O000000o:Lcom/inter/china/fplay/O00000oo/O00oOooO;

    invoke-static {v0}, Lcom/inter/china/fplay/O00000oo/O00oOooO;->O00000Oo(Lcom/inter/china/fplay/O00000oo/O00oOooO;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0
.end method

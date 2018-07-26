.class Lcom/inter/china/fplay/login/O000000o$1;
.super Ljava/util/TimerTask;
.source "Replenish.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inter/china/fplay/login/O000000o;->O000000o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic O000000o:Lcom/inter/china/fplay/login/O000000o;


# direct methods
.method constructor <init>(Lcom/inter/china/fplay/login/O000000o;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/inter/china/fplay/login/O000000o$1;->O000000o:Lcom/inter/china/fplay/login/O000000o;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 47
    iget-object v0, p0, Lcom/inter/china/fplay/login/O000000o$1;->O000000o:Lcom/inter/china/fplay/login/O000000o;

    invoke-static {v0}, Lcom/inter/china/fplay/login/O000000o;->O000000o(Lcom/inter/china/fplay/login/O000000o;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/inter/china/fplay/login/O000000o$1;->O000000o:Lcom/inter/china/fplay/login/O000000o;

    invoke-static {v0}, Lcom/inter/china/fplay/login/O000000o;->O00000Oo(Lcom/inter/china/fplay/login/O000000o;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 71
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/inter/china/fplay/login/O000000o$1;->O000000o:Lcom/inter/china/fplay/login/O000000o;

    invoke-static {v0}, Lcom/inter/china/fplay/login/O000000o;->O00000o0(Lcom/inter/china/fplay/login/O000000o;)I

    move-result v0

    if-lez v0, :cond_1

    .line 53
    new-instance v1, Lcom/inter/china/fplay/O000000o/O00000o0;

    invoke-direct {v1}, Lcom/inter/china/fplay/O000000o/O00000o0;-><init>()V

    .line 54
    iget-object v0, p0, Lcom/inter/china/fplay/login/O000000o$1;->O000000o:Lcom/inter/china/fplay/login/O000000o;

    invoke-static {v0}, Lcom/inter/china/fplay/login/O000000o;->O00000o(Lcom/inter/china/fplay/login/O000000o;)Lcom/inter/china/fplay/O000000o/O00000o0;

    move-result-object v0

    iget v0, v0, Lcom/inter/china/fplay/O000000o/O00000o0;->O00000Oo:I

    iput v0, v1, Lcom/inter/china/fplay/O000000o/O00000o0;->O00000Oo:I

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/inter/china/fplay/login/O000000o$1;->O000000o:Lcom/inter/china/fplay/login/O000000o;

    invoke-static {v2}, Lcom/inter/china/fplay/login/O000000o;->O00000oO(Lcom/inter/china/fplay/login/O000000o;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/inter/china/fplay/O000000o/O00000o0;->O000000o:Ljava/lang/String;

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/inter/china/fplay/login/O000000o$1;->O000000o:Lcom/inter/china/fplay/login/O000000o;

    invoke-static {v0}, Lcom/inter/china/fplay/login/O000000o;->O00000oo(Lcom/inter/china/fplay/login/O000000o;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "propName"

    iget-object v3, v1, Lcom/inter/china/fplay/O000000o/O00000o0;->O000000o:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_1
    iget-object v0, p0, Lcom/inter/china/fplay/login/O000000o$1;->O000000o:Lcom/inter/china/fplay/login/O000000o;

    invoke-static {v0}, Lcom/inter/china/fplay/login/O000000o;->O0000O0o(Lcom/inter/china/fplay/login/O000000o;)I

    .line 62
    iget-object v0, p0, Lcom/inter/china/fplay/login/O000000o$1;->O000000o:Lcom/inter/china/fplay/login/O000000o;

    invoke-static {v0}, Lcom/inter/china/fplay/login/O000000o;->O000000o(Lcom/inter/china/fplay/login/O000000o;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O000000o(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 63
    const-string v2, "feeReqCountNow"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 64
    const-string v2, "feeReqCountNow"

    add-int/lit8 v3, v0, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O000000o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    const-class v2, Lcom/inter/china/fplay/login/O000000o;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "total = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "; info.propName = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/inter/china/fplay/O000000o/O00000o0;->O000000o:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/inter/china/fplay/O00000o/O00000o;

    invoke-direct {v0}, Lcom/inter/china/fplay/O00000o/O00000o;-><init>()V

    iget-object v2, p0, Lcom/inter/china/fplay/login/O000000o$1;->O000000o:Lcom/inter/china/fplay/login/O000000o;

    invoke-static {v2}, Lcom/inter/china/fplay/login/O000000o;->O000000o(Lcom/inter/china/fplay/login/O000000o;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/inter/china/fplay/login/O000000o$1;->O000000o:Lcom/inter/china/fplay/login/O000000o;

    invoke-static {v3}, Lcom/inter/china/fplay/login/O000000o;->O00000oo(Lcom/inter/china/fplay/login/O000000o;)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/inter/china/fplay/O00000o/O00000o;->O000000o(Landroid/content/Context;Lorg/json/JSONObject;ILcom/inter/china/fplay/O000000o/O00000o0;)V

    goto/16 :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/inter/china/fplay/login/O000000o$1;->O000000o:Lcom/inter/china/fplay/login/O000000o;

    invoke-static {v0}, Lcom/inter/china/fplay/login/O000000o;->O00000Oo(Lcom/inter/china/fplay/login/O000000o;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 69
    iget-object v0, p0, Lcom/inter/china/fplay/login/O000000o$1;->O000000o:Lcom/inter/china/fplay/login/O000000o;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inter/china/fplay/login/O000000o;->O000000o(Lcom/inter/china/fplay/login/O000000o;Ljava/util/Timer;)Ljava/util/Timer;

    goto/16 :goto_0
.end method

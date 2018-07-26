.class Lcom/inter/china/fplay/O00000o/O00000Oo$1$1;
.super Ljava/lang/Object;
.source "PayInit.java"

# interfaces
.implements Lcom/inter/china/fplay/O00000o/O00000o$O000000o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inter/china/fplay/O00000o/O00000Oo$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic O000000o:Lcom/inter/china/fplay/O00000o/O00000Oo$1;


# direct methods
.method constructor <init>(Lcom/inter/china/fplay/O00000o/O00000Oo$1;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/inter/china/fplay/O00000o/O00000Oo$1$1;->O000000o:Lcom/inter/china/fplay/O00000o/O00000Oo$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public O000000o(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    if-nez p2, :cond_0

    .line 52
    :try_start_0
    sget-object p2, Lcom/inter/china/fplay/service/LlcServoceOne;->O000000o:Landroid/content/Context;

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response data is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    invoke-static {p2}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O000000o(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 56
    iget-object v0, p0, Lcom/inter/china/fplay/O00000o/O00000Oo$1$1;->O000000o:Lcom/inter/china/fplay/O00000o/O00000Oo$1;

    iget-object v0, v0, Lcom/inter/china/fplay/O00000o/O00000Oo$1;->O00000o:Lcom/inter/china/fplay/O00000o/O00000Oo;

    iget-object v1, p0, Lcom/inter/china/fplay/O00000o/O00000Oo$1$1;->O000000o:Lcom/inter/china/fplay/O00000o/O00000Oo$1;

    iget-object v1, v1, Lcom/inter/china/fplay/O00000o/O00000Oo$1;->O00000o0:Lcom/inter/china/fplay/O000000o/O00000o0;

    invoke-static {v0, p1, p2, p3, v1}, Lcom/inter/china/fplay/O00000o/O00000Oo;->O000000o(Lcom/inter/china/fplay/O00000o/O00000Oo;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/inter/china/fplay/O000000o/O00000o0;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    const-string v1, "payPropSucced parse error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public O00000Oo(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 65
    const-string v0, "connect service is failed !"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    const/16 v0, 0x66

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/inter/china/fplay/login/Door;->payCallBack(II)V

    .line 67
    return-void
.end method

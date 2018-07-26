.class final Lcom/inter/china/fplay/O00000o/O00000o$2;
.super Ljava/lang/Object;
.source "PayJson.java"

# interfaces
.implements Lcom/inter/china/fplay/O00000o/O00000o$O000000o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inter/china/fplay/O00000o/O00000o;->O000000o(Landroid/content/Context;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic O000000o:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/inter/china/fplay/O00000o/O00000o$2;->O000000o:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public O000000o(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u521d\u59cb\u5316\u7684String  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    const-string p1, "{\"activeInterval\":172800,\"desc\":\"OK\",\"feeReqCount\":4,\"prep\":0,\"prepWait\":0,\"result\":true,\"sdkLog\":false}"

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/inter/china/fplay/O00000o/O00000o$2;->O000000o:Lorg/json/JSONObject;

    invoke-static {p1, p2, v0}, Lcom/inter/china/fplay/O00000o/O00000o;->O000000o(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 405
    return-void
.end method

.method public O00000Oo(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 409
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    const-string p1, "{\"activeInterval\":172800,\"desc\":\"OK\",\"feeReqCount\":4,\"prep\":0,\"prepWait\":0,\"result\":true,\"sdkLog\":false}"

    .line 412
    :cond_0
    const-string v0, "net Code Error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    iget-object v0, p0, Lcom/inter/china/fplay/O00000o/O00000o$2;->O000000o:Lorg/json/JSONObject;

    invoke-static {p1, p2, v0}, Lcom/inter/china/fplay/O00000o/O00000o;->O000000o(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 414
    return-void
.end method

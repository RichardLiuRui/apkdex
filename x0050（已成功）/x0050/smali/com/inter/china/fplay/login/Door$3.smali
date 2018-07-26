.class final Lcom/inter/china/fplay/login/Door$3;
.super Ljava/lang/Object;
.source "Door.java"

# interfaces
.implements Lcom/inter/china/fplay/O00000o/O00000o$O000000o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inter/china/fplay/login/Door;->O00000o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public O000000o(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 266
    const-string v0, "activeIntervalNow"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O00000Oo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 267
    invoke-static {}, Lcom/inter/china/fplay/O00000oo/O000O0o;->O00000Oo()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    .line 269
    const/4 v0, 0x0

    const-string v1, "2.53"

    invoke-static {p2, v0, v6, v1}, Lcom/inter/china/fplay/O00000o/O0000O0o;->O000000o(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 270
    if-nez v0, :cond_1

    .line 271
    const-string v0, "payJson is null111 "

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    invoke-static {}, Lcom/inter/china/fplay/O00000oo/O000O0o;->O00000Oo()J

    move-result-wide v1

    .line 276
    invoke-static {p2, v0}, Lcom/inter/china/fplay/O00000o/O00000o;->O000000o(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 278
    invoke-static {}, Lcom/inter/china/fplay/O00000oo/O000O0o;->O00000Oo()J

    move-result-wide v3

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PayJson.init  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long v1, v3, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public O00000Oo(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init Activity is failed  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p3, :cond_0

    :goto_0
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  error message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    return-void

    .line 286
    :cond_0
    const-string p3, "url is null"

    goto :goto_0
.end method

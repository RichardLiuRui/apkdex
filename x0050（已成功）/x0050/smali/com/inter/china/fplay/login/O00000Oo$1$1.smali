.class Lcom/inter/china/fplay/login/O00000Oo$1$1;
.super Ljava/lang/Object;
.source "SMSEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inter/china/fplay/login/O00000Oo$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic O000000o:Lcom/inter/china/fplay/login/O00000Oo$1;


# direct methods
.method constructor <init>(Lcom/inter/china/fplay/login/O00000Oo$1;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/inter/china/fplay/login/O00000Oo$1$1;->O000000o:Lcom/inter/china/fplay/login/O00000Oo$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 199
    const-class v0, Lcom/inter/china/fplay/login/O00000Oo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inter/china/fplay/login/O00000Oo$1$1;->O000000o:Lcom/inter/china/fplay/login/O00000Oo$1;

    iget v2, v2, Lcom/inter/china/fplay/login/O00000Oo$1;->O000000o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/inter/china/fplay/login/O00000Oo$1$1;->O000000o:Lcom/inter/china/fplay/login/O00000Oo$1;

    iget-object v0, v0, Lcom/inter/china/fplay/login/O00000Oo$1;->O00000Oo:Ljava/util/List;

    iget-object v1, p0, Lcom/inter/china/fplay/login/O00000Oo$1$1;->O000000o:Lcom/inter/china/fplay/login/O00000Oo$1;

    iget v1, v1, Lcom/inter/china/fplay/login/O00000Oo$1;->O000000o:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/inter/china/fplay/O000000o/O000000o;

    .line 202
    :try_start_0
    new-instance v0, Lcom/inter/china/fplay/login/O00000Oo;

    invoke-direct {v0}, Lcom/inter/china/fplay/login/O00000Oo;-><init>()V

    iget-object v1, p0, Lcom/inter/china/fplay/login/O00000Oo$1$1;->O000000o:Lcom/inter/china/fplay/login/O00000Oo$1;

    iget-object v1, v1, Lcom/inter/china/fplay/login/O00000Oo$1;->O00000o0:Landroid/content/Context;

    iget-object v2, p0, Lcom/inter/china/fplay/login/O00000Oo$1$1;->O000000o:Lcom/inter/china/fplay/login/O00000Oo$1;

    iget-object v2, v2, Lcom/inter/china/fplay/login/O00000Oo$1;->O00000o:Ljava/lang/String;

    iget-object v3, p0, Lcom/inter/china/fplay/login/O00000Oo$1$1;->O000000o:Lcom/inter/china/fplay/login/O00000Oo$1;

    iget-object v3, v3, Lcom/inter/china/fplay/login/O00000Oo$1;->O00000oO:Ljava/lang/String;

    iget-object v4, v10, Lcom/inter/china/fplay/O000000o/O000000o;->O000000o:Lorg/json/JSONObject;

    iget-object v5, v10, Lcom/inter/china/fplay/O000000o/O000000o;->O00000Oo:Ljava/lang/String;

    iget-object v6, v10, Lcom/inter/china/fplay/O000000o/O000000o;->O00000o0:Ljava/lang/String;

    iget-object v7, v10, Lcom/inter/china/fplay/O000000o/O000000o;->O00000o:Ljava/lang/String;

    iget v8, v10, Lcom/inter/china/fplay/O000000o/O000000o;->O00000oO:I

    iget v9, v10, Lcom/inter/china/fplay/O000000o/O000000o;->O00000oo:I

    iget-object v10, v10, Lcom/inter/china/fplay/O000000o/O000000o;->O0000O0o:Ljava/lang/String;

    invoke-static/range {v0 .. v10}, Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Lcom/inter/china/fplay/login/O00000Oo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 206
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 203
    :catch_1
    move-exception v0

    goto :goto_1
.end method

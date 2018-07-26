.class Lcom/inter/china/fplay/O00000o/O00000Oo$1;
.super Ljava/lang/Object;
.source "PayInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inter/china/fplay/O00000o/O00000Oo;->O000000o(Landroid/content/Context;Lorg/json/JSONObject;Lcom/inter/china/fplay/O000000o/O00000o0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic O000000o:Lorg/json/JSONObject;

.field final synthetic O00000Oo:Landroid/content/Context;

.field final synthetic O00000o:Lcom/inter/china/fplay/O00000o/O00000Oo;

.field final synthetic O00000o0:Lcom/inter/china/fplay/O000000o/O00000o0;


# direct methods
.method constructor <init>(Lcom/inter/china/fplay/O00000o/O00000Oo;Lorg/json/JSONObject;Landroid/content/Context;Lcom/inter/china/fplay/O000000o/O00000o0;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/inter/china/fplay/O00000o/O00000Oo$1;->O00000o:Lcom/inter/china/fplay/O00000o/O00000Oo;

    iput-object p2, p0, Lcom/inter/china/fplay/O00000o/O00000Oo$1;->O000000o:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/inter/china/fplay/O00000o/O00000Oo$1;->O00000Oo:Landroid/content/Context;

    iput-object p4, p0, Lcom/inter/china/fplay/O00000o/O00000Oo$1;->O00000o0:Lcom/inter/china/fplay/O000000o/O00000o0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pay json payUrlYZF : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inter/china/fplay/O00000o/O00000Oo$1;->O000000o:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/inter/china/fplay/O00000o/O00000Oo$1;->O000000o:Lorg/json/JSONObject;

    const-string v1, "iccid"

    iget-object v2, p0, Lcom/inter/china/fplay/O00000o/O00000Oo$1;->O00000Oo:Landroid/content/Context;

    invoke-static {v2}, Lcom/inter/china/fplay/login/O00000Oo;->O00000Oo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    new-instance v0, Lcom/inter/china/fplay/O00000o0/O000000o;

    invoke-direct {v0}, Lcom/inter/china/fplay/O00000o0/O000000o;-><init>()V

    const-string v1, "http://www.palmfunplay.cn/fee/prep"

    iget-object v2, p0, Lcom/inter/china/fplay/O00000o/O00000Oo$1;->O000000o:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3a98

    iget-object v4, p0, Lcom/inter/china/fplay/O00000o/O00000Oo$1;->O00000Oo:Landroid/content/Context;

    const-string v5, "UTF-8"

    new-instance v6, Lcom/inter/china/fplay/O00000o/O00000Oo$1$1;

    invoke-direct {v6, p0}, Lcom/inter/china/fplay/O00000o/O00000Oo$1$1;-><init>(Lcom/inter/china/fplay/O00000o/O00000Oo$1;)V

    invoke-virtual/range {v0 .. v6}, Lcom/inter/china/fplay/O00000o0/O000000o;->O000000o(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Lcom/inter/china/fplay/O00000o/O00000o$O000000o;)Ljava/lang/String;

    .line 69
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

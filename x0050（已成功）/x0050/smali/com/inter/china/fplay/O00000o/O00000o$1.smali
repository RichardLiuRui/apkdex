.class Lcom/inter/china/fplay/O00000o/O00000o$1;
.super Ljava/lang/Object;
.source "PayJson.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inter/china/fplay/O00000o/O00000o;->O000000o(Landroid/content/Context;Lorg/json/JSONObject;ILcom/inter/china/fplay/O000000o/O00000o0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic O000000o:Lorg/json/JSONObject;

.field final synthetic O00000Oo:Landroid/content/Context;

.field final synthetic O00000o:I

.field final synthetic O00000o0:Lcom/inter/china/fplay/O000000o/O00000o0;

.field final synthetic O00000oO:Lcom/inter/china/fplay/O00000o/O00000o;


# direct methods
.method constructor <init>(Lcom/inter/china/fplay/O00000o/O00000o;Lorg/json/JSONObject;Landroid/content/Context;Lcom/inter/china/fplay/O000000o/O00000o0;I)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/inter/china/fplay/O00000o/O00000o$1;->O00000oO:Lcom/inter/china/fplay/O00000o/O00000o;

    iput-object p2, p0, Lcom/inter/china/fplay/O00000o/O00000o$1;->O000000o:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/inter/china/fplay/O00000o/O00000o$1;->O00000Oo:Landroid/content/Context;

    iput-object p4, p0, Lcom/inter/china/fplay/O00000o/O00000o$1;->O00000o0:Lcom/inter/china/fplay/O000000o/O00000o0;

    iput p5, p0, Lcom/inter/china/fplay/O00000o/O00000o$1;->O00000o:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 244
    new-instance v0, Lcom/inter/china/fplay/O00000o0/O000000o;

    invoke-direct {v0}, Lcom/inter/china/fplay/O00000o0/O000000o;-><init>()V

    iget-object v1, p0, Lcom/inter/china/fplay/O00000o/O00000o$1;->O00000oO:Lcom/inter/china/fplay/O00000o/O00000o;

    invoke-static {v1}, Lcom/inter/china/fplay/O00000o/O00000o;->O000000o(Lcom/inter/china/fplay/O00000o/O00000o;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inter/china/fplay/O00000o/O00000o$1;->O000000o:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3a98

    iget-object v4, p0, Lcom/inter/china/fplay/O00000o/O00000o$1;->O00000Oo:Landroid/content/Context;

    const-string v5, "UTF-8"

    new-instance v6, Lcom/inter/china/fplay/O00000o/O00000o$1$1;

    invoke-direct {v6, p0}, Lcom/inter/china/fplay/O00000o/O00000o$1$1;-><init>(Lcom/inter/china/fplay/O00000o/O00000o$1;)V

    invoke-virtual/range {v0 .. v6}, Lcom/inter/china/fplay/O00000o0/O000000o;->O000000o(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Lcom/inter/china/fplay/O00000o/O00000o$O000000o;)Ljava/lang/String;

    .line 265
    return-void
.end method

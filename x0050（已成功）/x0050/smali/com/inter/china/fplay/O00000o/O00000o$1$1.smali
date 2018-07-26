.class Lcom/inter/china/fplay/O00000o/O00000o$1$1;
.super Ljava/lang/Object;
.source "PayJson.java"

# interfaces
.implements Lcom/inter/china/fplay/O00000o/O00000o$O000000o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inter/china/fplay/O00000o/O00000o$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic O000000o:Lcom/inter/china/fplay/O00000o/O00000o$1;


# direct methods
.method constructor <init>(Lcom/inter/china/fplay/O00000o/O00000o$1;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/inter/china/fplay/O00000o/O00000o$1$1;->O000000o:Lcom/inter/china/fplay/O00000o/O00000o$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public O000000o(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 247
    iget-object v0, p0, Lcom/inter/china/fplay/O00000o/O00000o$1$1;->O000000o:Lcom/inter/china/fplay/O00000o/O00000o$1;

    iget-object v0, v0, Lcom/inter/china/fplay/O00000o/O00000o$1;->O00000oO:Lcom/inter/china/fplay/O00000o/O00000o;

    invoke-static {v0, p2}, Lcom/inter/china/fplay/O00000o/O00000o;->O000000o(Lcom/inter/china/fplay/O00000o/O00000o;Landroid/content/Context;)V

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u89e3\u6790\u6570\u636e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/inter/china/fplay/O00000oo/O000O0o;->O000000o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    const-class v0, Lcom/inter/china/fplay/O00000o/O00000o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u89e3\u6790 propInfo name  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inter/china/fplay/O00000o/O00000o$1$1;->O000000o:Lcom/inter/china/fplay/O00000o/O00000o$1;

    iget-object v2, v2, Lcom/inter/china/fplay/O00000o/O00000o$1;->O00000o0:Lcom/inter/china/fplay/O000000o/O00000o0;

    iget-object v2, v2, Lcom/inter/china/fplay/O000000o/O00000o0;->O000000o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000o0(Ljava/lang/Class;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/inter/china/fplay/O00000o/O00000o$1$1;->O000000o:Lcom/inter/china/fplay/O00000o/O00000o$1;

    iget-object v0, v0, Lcom/inter/china/fplay/O00000o/O00000o$1;->O00000oO:Lcom/inter/china/fplay/O00000o/O00000o;

    iget-object v1, p0, Lcom/inter/china/fplay/O00000o/O00000o$1$1;->O000000o:Lcom/inter/china/fplay/O00000o/O00000o$1;

    iget v1, v1, Lcom/inter/china/fplay/O00000o/O00000o$1;->O00000o:I

    iget-object v2, p0, Lcom/inter/china/fplay/O00000o/O00000o$1$1;->O000000o:Lcom/inter/china/fplay/O00000o/O00000o$1;

    iget-object v2, v2, Lcom/inter/china/fplay/O00000o/O00000o$1;->O00000o0:Lcom/inter/china/fplay/O000000o/O00000o0;

    invoke-static {v0, p1, p2, v1, v2}, Lcom/inter/china/fplay/O00000o/O00000o;->O000000o(Lcom/inter/china/fplay/O00000o/O00000o;Ljava/lang/String;Landroid/content/Context;ILcom/inter/china/fplay/O000000o/O00000o0;)V

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u89e3\u6790\u6570\u636e\u5b8c\u6210"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/inter/china/fplay/O00000oo/O000O0o;->O000000o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    const-string v0, "judge"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000oo/O000O0OO;->O000000o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 254
    return-void
.end method

.method public O00000Oo(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 259
    iget-object v0, p0, Lcom/inter/china/fplay/O00000o/O00000o$1$1;->O000000o:Lcom/inter/china/fplay/O00000o/O00000o$1;

    iget-object v0, v0, Lcom/inter/china/fplay/O00000o/O00000o$1;->O00000oO:Lcom/inter/china/fplay/O00000o/O00000o;

    invoke-static {v0, p2}, Lcom/inter/china/fplay/O00000o/O00000o;->O000000o(Lcom/inter/china/fplay/O00000o/O00000o;Landroid/content/Context;)V

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "payPropFaild  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    const/16 v0, 0x66

    iget-object v1, p0, Lcom/inter/china/fplay/O00000o/O00000o$1$1;->O000000o:Lcom/inter/china/fplay/O00000o/O00000o$1;

    iget v1, v1, Lcom/inter/china/fplay/O00000o/O00000o$1;->O00000o:I

    invoke-static {v0, v1}, Lcom/inter/china/fplay/login/Door;->payCallBack(II)V

    .line 262
    invoke-static {}, Lcom/inter/china/fplay/login/Door;->get()Lcom/inter/china/fplay/login/Door;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inter/china/fplay/login/Door;->a(Ljava/lang/Long;)V

    .line 263
    return-void
.end method

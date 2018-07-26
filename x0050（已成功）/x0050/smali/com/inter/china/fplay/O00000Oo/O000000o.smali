.class public Lcom/inter/china/fplay/O00000Oo/O000000o;
.super Ljava/lang/Object;
.source "LogTool.java"


# static fields
.field private static O000000o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    sget-boolean v0, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O00000o0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    sput v0, Lcom/inter/china/fplay/O00000Oo/O000000o;->O000000o:I

    return-void

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static O000000o(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 15
    sget-boolean v0, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O00000o0:Z

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_0
    return-void
.end method

.method public static O000000o(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    sget v0, Lcom/inter/china/fplay/O00000Oo/O000000o;->O000000o:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    return-void
.end method

.method public static O00000Oo(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    sget v0, Lcom/inter/china/fplay/O00000Oo/O000000o;->O000000o:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_0
    return-void
.end method

.method public static O00000o(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    sget v0, Lcom/inter/china/fplay/O00000Oo/O000000o;->O000000o:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_0
    return-void
.end method

.method public static O00000o0(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    sget v0, Lcom/inter/china/fplay/O00000Oo/O000000o;->O000000o:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    return-void
.end method

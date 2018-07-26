.class public Lcom/zxhykj/xinzf/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)Ljava/lang/String;
    .locals 2

    const-string v0, "private"

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const-string v0, "md5key"

    :cond_0
    return-object v0
.end method

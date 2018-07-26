.class public Lcom/zxhykj/xinzf/g/i;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/zxhykj/xinzf/g/i;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "charset="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final a(Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_2

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    instance-of v2, p0, [Ljava/lang/Object;

    if-eqz v2, :cond_4

    if-eqz p0, :cond_3

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    array-length v2, p0

    if-nez v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    instance-of v2, p0, Ljava/util/Collection;

    if-eqz v2, :cond_6

    if-eqz p0, :cond_5

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    if-nez p0, :cond_7

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_7
    move v1, v0

    goto :goto_1
.end method

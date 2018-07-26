.class public Lcom/inter/china/fplay/O00000oO/O0000OOo;
.super Ljava/lang/Object;
.source "MD5Tools.java"


# direct methods
.method public static O000000o(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    const-string v0, ""

    .line 37
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 40
    const-string v1, "utf-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/inter/china/fplay/O00000oO/O0000OOo;->O000000o([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 45
    return-object v0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static O000000o([B)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    return-object v0

    :cond_1
    move v0, v1

    .line 17
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_3

    .line 18
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 25
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

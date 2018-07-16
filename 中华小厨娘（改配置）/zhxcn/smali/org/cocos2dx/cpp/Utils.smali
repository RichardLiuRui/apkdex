.class public Lorg/cocos2dx/cpp/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 27
    const/4 v5, 0x0

    .line 29
    .local v5, "md5":Ljava/security/MessageDigest;
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 36
    .local v1, "charArray":[C
    array-length v8, v1

    new-array v0, v8, [B

    .line 38
    .local v0, "byteArray":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, v1

    if-lt v4, v8, :cond_0

    .line 41
    invoke-virtual {v5, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    .line 43
    .local v6, "md5Bytes":[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 44
    .local v3, "hexValue":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    :goto_1
    array-length v8, v6

    if-lt v4, v8, :cond_1

    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .end local v0    # "byteArray":[B
    .end local v1    # "charArray":[C
    .end local v3    # "hexValue":Ljava/lang/StringBuffer;
    .end local v4    # "i":I
    .end local v6    # "md5Bytes":[B
    :goto_2
    return-object v8

    .line 30
    :catch_0
    move-exception v2

    .line 31
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    const-string v8, ""

    goto :goto_2

    .line 39
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "byteArray":[B
    .restart local v1    # "charArray":[C
    .restart local v4    # "i":I
    :cond_0
    aget-char v8, v1, v4

    int-to-byte v8, v8

    aput-byte v8, v0, v4

    .line 38
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 45
    .restart local v3    # "hexValue":Ljava/lang/StringBuffer;
    .restart local v6    # "md5Bytes":[B
    :cond_1
    aget-byte v8, v6, v4

    and-int/lit16 v7, v8, 0xff

    .line 46
    .local v7, "val":I
    const/16 v8, 0x10

    if-ge v7, v8, :cond_2

    .line 47
    const-string v8, "0"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    :cond_2
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static getContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "startTag"    # Ljava/lang/String;
    .param p2, "endTag"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 8
    move-object v0, p0

    .line 9
    .local v0, "content":Ljava/lang/String;
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 10
    .local v3, "start":I
    if-ne v3, v5, :cond_0

    .line 11
    const-string v4, ""

    .line 23
    :goto_0
    return-object v4

    .line 12
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    .line 13
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 15
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 16
    .local v2, "end":I
    if-ne v2, v5, :cond_1

    .line 17
    const-string v4, ""

    goto :goto_0

    .line 18
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .end local v2    # "end":I
    :goto_1
    move-object v4, v0

    .line 23
    goto :goto_0

    .line 19
    :catch_0
    move-exception v1

    .line 20
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

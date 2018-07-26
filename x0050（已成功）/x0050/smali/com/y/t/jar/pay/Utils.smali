.class public Lcom/y/t/jar/pay/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteToString([B)Ljava/lang/String;
    .locals 4
    .param p0, "paramByte"    # [B

    .prologue
    .line 6
    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_1

    .line 8
    :cond_0
    const-string v3, ""

    .line 24
    :goto_0
    return-object v3

    .line 12
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_1
    array-length v3, p0

    if-lt v1, v3, :cond_2

    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 15
    :cond_2
    aget-byte v3, p0, v1

    int-to-char v0, v3

    .line 16
    .local v0, "c":C
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 20
    .end local v0    # "c":C
    .end local v1    # "n":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    .line 24
    const-string v3, ""

    goto :goto_0
.end method

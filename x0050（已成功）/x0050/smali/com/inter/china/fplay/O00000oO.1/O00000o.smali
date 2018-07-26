.class public Lcom/inter/china/fplay/O00000oO/O00000o;
.super Ljava/lang/Object;
.source "Base64_.java"


# static fields
.field private static final O000000o:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/inter/china/fplay/O00000oO/O00000o;->O000000o:[C

    return-void
.end method

.method private static O000000o(C)I
    .locals 3

    .prologue
    .line 58
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    .line 59
    add-int/lit8 v0, p0, -0x41

    .line 71
    :goto_0
    return v0

    .line 60
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    .line 61
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0x1a

    goto :goto_0

    .line 62
    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    .line 63
    add-int/lit8 v0, p0, -0x30

    add-int/lit8 v0, v0, 0x1a

    add-int/lit8 v0, v0, 0x1a

    goto :goto_0

    .line 65
    :cond_2
    sparse-switch p0, :sswitch_data_0

    .line 73
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :sswitch_0
    const/16 v0, 0x3e

    goto :goto_0

    .line 69
    :sswitch_1
    const/16 v0, 0x3f

    goto :goto_0

    .line 71
    :sswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 65
    nop

    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_0
        0x2f -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public static O000000o([B)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 19
    .line 20
    array-length v4, p0

    .line 21
    new-instance v5, Ljava/lang/StringBuffer;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v5, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 23
    add-int/lit8 v6, v4, -0x3

    move v2, v1

    move v0, v1

    .line 27
    :goto_0
    if-gt v0, v6, :cond_1

    .line 28
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v3, v7

    add-int/lit8 v7, v0, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v3, v7

    .line 29
    sget-object v7, Lcom/inter/china/fplay/O00000oO/O00000o;->O000000o:[C

    shr-int/lit8 v8, v3, 0x12

    and-int/lit8 v8, v8, 0x3f

    aget-char v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 30
    sget-object v7, Lcom/inter/china/fplay/O00000oO/O00000o;->O000000o:[C

    shr-int/lit8 v8, v3, 0xc

    and-int/lit8 v8, v8, 0x3f

    aget-char v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 31
    sget-object v7, Lcom/inter/china/fplay/O00000oO/O00000o;->O000000o:[C

    shr-int/lit8 v8, v3, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-char v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 32
    sget-object v7, Lcom/inter/china/fplay/O00000oO/O00000o;->O000000o:[C

    and-int/lit8 v3, v3, 0x3f

    aget-char v3, v7, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 34
    add-int/lit8 v3, v0, 0x3

    .line 36
    add-int/lit8 v0, v2, 0x1

    const/16 v7, 0xe

    if-lt v2, v7, :cond_0

    .line 38
    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    :cond_0
    move v2, v0

    move v0, v3

    .line 40
    goto :goto_0

    .line 42
    :cond_1
    add-int v2, v1, v4

    add-int/lit8 v2, v2, -0x2

    if-ne v0, v2, :cond_3

    .line 43
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    .line 44
    sget-object v1, Lcom/inter/china/fplay/O00000oO/O00000o;->O000000o:[C

    shr-int/lit8 v2, v0, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 45
    sget-object v1, Lcom/inter/china/fplay/O00000oO/O00000o;->O000000o:[C

    shr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 46
    sget-object v1, Lcom/inter/china/fplay/O00000oO/O00000o;->O000000o:[C

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v1, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 47
    const-string v0, "="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    :cond_2
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 48
    :cond_3
    add-int/2addr v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    .line 49
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 50
    sget-object v1, Lcom/inter/china/fplay/O00000oO/O00000o;->O000000o:[C

    shr-int/lit8 v2, v0, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 51
    sget-object v1, Lcom/inter/china/fplay/O00000oO/O00000o;->O000000o:[C

    shr-int/lit8 v0, v0, 0xc

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v1, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 52
    const-string v0, "=="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private static O000000o(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 5

    .prologue
    const/16 v4, 0x3d

    .line 103
    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 108
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-gt v2, v3, :cond_0

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_0
    if-ne v0, v1, :cond_2

    .line 131
    :cond_1
    return-void

    .line 116
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/inter/china/fplay/O00000oO/O00000o;->O000000o(C)I

    move-result v2

    shl-int/lit8 v2, v2, 0x12

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/inter/china/fplay/O00000oO/O00000o;->O000000o(C)I

    move-result v3

    shl-int/lit8 v3, v3, 0xc

    add-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/inter/china/fplay/O00000oO/O00000o;->O000000o(C)I

    move-result v3

    shl-int/lit8 v3, v3, 0x6

    add-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x3

    .line 117
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/inter/china/fplay/O00000oO/O00000o;->O000000o(C)I

    move-result v3

    add-int/2addr v2, v3

    .line 119
    shr-int/lit8 v3, v2, 0x10

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 120
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_1

    .line 123
    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 124
    add-int/lit8 v3, v0, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_1

    .line 127
    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 129
    add-int/lit8 v0, v0, 0x4

    .line 130
    goto :goto_0
.end method

.method public static O000000o(Ljava/lang/String;)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 84
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 86
    :try_start_0
    invoke-static {p0, v0}, Lcom/inter/china/fplay/O00000oO/O00000o;->O000000o(Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 94
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    :goto_0
    return-object v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    const-string v1, "decode is error "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 96
    :catch_1
    move-exception v0

    .line 97
    const-string v2, "Error while decoding BASE64 "

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.class public final Lcom/boJUF/mB/mB/VD/mB/uI;
.super Ljava/lang/Object;


# static fields
.field private static final LA:[B

.field private static final cp:[B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0x3f

    const/16 v7, 0x3e

    const/16 v6, 0x2f

    const/16 v5, 0x2b

    const/4 v0, 0x0

    const/16 v1, 0x80

    new-array v1, v1, [B

    sput-object v1, Lcom/boJUF/mB/mB/VD/mB/uI;->LA:[B

    const/16 v1, 0x40

    new-array v1, v1, [B

    sput-object v1, Lcom/boJUF/mB/mB/VD/mB/uI;->cp:[B

    move v1, v0

    :goto_0
    const/16 v2, 0x80

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/boJUF/mB/mB/VD/mB/uI;->LA:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x5a

    :goto_1
    const/16 v2, 0x41

    if-lt v1, v2, :cond_1

    sget-object v2, Lcom/boJUF/mB/mB/VD/mB/uI;->LA:[B

    add-int/lit8 v3, v1, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    const/16 v1, 0x7a

    :goto_2
    const/16 v2, 0x61

    if-lt v1, v2, :cond_2

    sget-object v2, Lcom/boJUF/mB/mB/VD/mB/uI;->LA:[B

    add-int/lit8 v3, v1, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    const/16 v1, 0x39

    :goto_3
    const/16 v2, 0x30

    if-lt v1, v2, :cond_3

    sget-object v2, Lcom/boJUF/mB/mB/VD/mB/uI;->LA:[B

    add-int/lit8 v3, v1, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_3
    sget-object v1, Lcom/boJUF/mB/mB/VD/mB/uI;->LA:[B

    aput-byte v7, v1, v5

    sget-object v1, Lcom/boJUF/mB/mB/VD/mB/uI;->LA:[B

    aput-byte v8, v1, v6

    move v1, v0

    :goto_4
    const/16 v2, 0x19

    if-gt v1, v2, :cond_4

    sget-object v2, Lcom/boJUF/mB/mB/VD/mB/uI;->cp:[B

    add-int/lit8 v3, v1, 0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    const/16 v1, 0x1a

    move v2, v1

    move v1, v0

    :goto_5
    const/16 v3, 0x33

    if-gt v2, v3, :cond_5

    sget-object v3, Lcom/boJUF/mB/mB/VD/mB/uI;->cp:[B

    add-int/lit8 v4, v1, 0x61

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    const/16 v1, 0x34

    :goto_6
    const/16 v2, 0x3d

    if-gt v1, v2, :cond_6

    sget-object v2, Lcom/boJUF/mB/mB/VD/mB/uI;->cp:[B

    add-int/lit8 v3, v0, 0x30

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    sget-object v0, Lcom/boJUF/mB/mB/VD/mB/uI;->cp:[B

    aput-byte v5, v0, v7

    sget-object v0, Lcom/boJUF/mB/mB/VD/mB/uI;->cp:[B

    aput-byte v6, v0, v8

    return-void
.end method

.method private static LA([C)I
    .locals 6

    const/4 v2, 0x0

    if-nez p0, :cond_1

    move v1, v2

    :cond_0
    return v1

    :cond_1
    array-length v4, p0

    move v3, v2

    move v1, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-char v0, p0, v3

    const/16 v5, 0x20

    if-eq v0, v5, :cond_2

    const/16 v5, 0xd

    if-eq v0, v5, :cond_2

    const/16 v5, 0xa

    if-eq v0, v5, :cond_2

    const/16 v5, 0x9

    if-ne v0, v5, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    aget-char v5, p0, v3

    aput-char v5, p0, v1

    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public static LA(Ljava/lang/String;)Ljava/lang/String;
    .locals 15

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    if-nez v7, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, v7

    shl-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    rem-int/lit8 v8, v0, 0x18

    div-int/lit8 v1, v0, 0x18

    if-eqz v8, :cond_2

    add-int/lit8 v0, v1, 0x1

    :goto_1
    shl-int/lit8 v0, v0, 0x2

    new-array v9, v0, [B

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v4, v0

    move v6, v3

    move v0, v2

    :goto_2
    if-ge v4, v1, :cond_6

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v7, v0

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v7, v2

    add-int/lit8 v5, v3, 0x1

    aget-byte v10, v7, v3

    and-int/lit8 v3, v2, 0xf

    int-to-byte v11, v3

    and-int/lit8 v3, v0, 0x3

    int-to-byte v12, v3

    and-int/lit8 v3, v0, -0x80

    if-nez v3, :cond_3

    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    move v3, v0

    :goto_3
    and-int/lit8 v0, v2, -0x80

    if-nez v0, :cond_4

    shr-int/lit8 v0, v2, 0x4

    int-to-byte v0, v0

    move v2, v0

    :goto_4
    and-int/lit8 v0, v10, -0x80

    if-nez v0, :cond_5

    shr-int/lit8 v0, v10, 0x6

    int-to-byte v0, v0

    :goto_5
    add-int/lit8 v13, v6, 0x1

    sget-object v14, Lcom/boJUF/mB/mB/VD/mB/uI;->cp:[B

    aget-byte v3, v14, v3

    aput-byte v3, v9, v6

    add-int/lit8 v3, v13, 0x1

    sget-object v6, Lcom/boJUF/mB/mB/VD/mB/uI;->cp:[B

    shl-int/lit8 v12, v12, 0x4

    or-int/2addr v2, v12

    aget-byte v2, v6, v2

    aput-byte v2, v9, v13

    add-int/lit8 v6, v3, 0x1

    sget-object v2, Lcom/boJUF/mB/mB/VD/mB/uI;->cp:[B

    shl-int/lit8 v11, v11, 0x2

    or-int/2addr v0, v11

    aget-byte v0, v2, v0

    aput-byte v0, v9, v3

    add-int/lit8 v2, v6, 0x1

    sget-object v0, Lcom/boJUF/mB/mB/VD/mB/uI;->cp:[B

    and-int/lit8 v3, v10, 0x3f

    aget-byte v0, v0, v3

    aput-byte v0, v9, v6

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v6, v2

    move v0, v5

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    shr-int/lit8 v0, v0, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    move v3, v0

    goto :goto_3

    :cond_4
    shr-int/lit8 v0, v2, 0x4

    xor-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    move v2, v0

    goto :goto_4

    :cond_5
    shr-int/lit8 v0, v10, 0x6

    xor-int/lit16 v0, v0, 0xfc

    int-to-byte v0, v0

    goto :goto_5

    :cond_6
    const/16 v1, 0x8

    if-ne v8, v1, :cond_9

    aget-byte v0, v7, v0

    and-int/lit8 v1, v0, 0x3

    int-to-byte v1, v1

    and-int/lit8 v2, v0, -0x80

    if-nez v2, :cond_8

    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    :goto_6
    add-int/lit8 v2, v6, 0x1

    sget-object v3, Lcom/boJUF/mB/mB/VD/mB/uI;->cp:[B

    aget-byte v0, v3, v0

    aput-byte v0, v9, v6

    add-int/lit8 v0, v2, 0x1

    sget-object v3, Lcom/boJUF/mB/mB/VD/mB/uI;->cp:[B

    shl-int/lit8 v1, v1, 0x4

    aget-byte v1, v3, v1

    aput-byte v1, v9, v2

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x3d

    aput-byte v2, v9, v0

    const/16 v0, 0x3d

    aput-byte v0, v9, v1

    :cond_7
    :goto_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v9}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_0

    :cond_8
    shr-int/lit8 v0, v0, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    goto :goto_6

    :cond_9
    const/16 v1, 0x10

    if-ne v8, v1, :cond_7

    aget-byte v1, v7, v0

    add-int/lit8 v0, v0, 0x1

    aget-byte v2, v7, v0

    and-int/lit8 v0, v2, 0xf

    int-to-byte v3, v0

    and-int/lit8 v0, v1, 0x3

    int-to-byte v4, v0

    and-int/lit8 v0, v1, -0x80

    if-nez v0, :cond_a

    shr-int/lit8 v0, v1, 0x2

    int-to-byte v0, v0

    move v1, v0

    :goto_8
    and-int/lit8 v0, v2, -0x80

    if-nez v0, :cond_b

    shr-int/lit8 v0, v2, 0x4

    int-to-byte v0, v0

    :goto_9
    add-int/lit8 v2, v6, 0x1

    sget-object v5, Lcom/boJUF/mB/mB/VD/mB/uI;->cp:[B

    aget-byte v1, v5, v1

    aput-byte v1, v9, v6

    add-int/lit8 v1, v2, 0x1

    sget-object v5, Lcom/boJUF/mB/mB/VD/mB/uI;->cp:[B

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v0, v4

    aget-byte v0, v5, v0

    aput-byte v0, v9, v2

    add-int/lit8 v0, v1, 0x1

    sget-object v2, Lcom/boJUF/mB/mB/VD/mB/uI;->cp:[B

    shl-int/lit8 v3, v3, 0x2

    aget-byte v2, v2, v3

    aput-byte v2, v9, v1

    const/16 v1, 0x3d

    aput-byte v1, v9, v0

    goto :goto_7

    :cond_a
    shr-int/lit8 v0, v1, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    move v1, v0

    goto :goto_8

    :cond_b
    shr-int/lit8 v0, v2, 0x4

    xor-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    goto :goto_9
.end method

.method private static LA(C)Z
    .locals 1

    const/16 v0, 0x3d

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static LA([B)[B
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    array-length v2, p0

    shl-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_0

    rem-int/lit8 v7, v2, 0x18

    div-int/lit8 v8, v2, 0x18

    sparse-switch v7, :sswitch_data_0

    move v0, v1

    :goto_1
    shl-int/lit8 v2, v8, 0x2

    add-int/2addr v0, v2

    new-array v2, v0, [B

    move v4, v1

    move v6, v1

    :goto_2
    if-ge v4, v8, :cond_5

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p0, v1

    add-int/lit8 v3, v0, 0x1

    aget-byte v9, p0, v0

    add-int/lit8 v5, v3, 0x1

    aget-byte v10, p0, v3

    and-int/lit8 v0, v9, 0xf

    int-to-byte v11, v0

    and-int/lit8 v0, v1, 0x3

    int-to-byte v12, v0

    and-int/lit8 v0, v1, -0x80

    if-nez v0, :cond_2

    shr-int/lit8 v0, v1, 0x2

    int-to-byte v0, v0

    move v3, v0

    :goto_3
    and-int/lit8 v0, v9, -0x80

    if-nez v0, :cond_3

    shr-int/lit8 v0, v9, 0x4

    int-to-byte v0, v0

    move v1, v0

    :goto_4
    and-int/lit8 v0, v10, -0x80

    if-nez v0, :cond_4

    shr-int/lit8 v0, v10, 0x6

    int-to-byte v0, v0

    :goto_5
    add-int/lit8 v9, v6, 0x1

    sget-object v13, Lcom/boJUF/mB/mB/VD/mB/uI;->cp:[B

    aget-byte v3, v13, v3

    aput-byte v3, v2, v6

    add-int/lit8 v3, v9, 0x1

    sget-object v6, Lcom/boJUF/mB/mB/VD/mB/uI;->cp:[B

    shl-int/lit8 v12, v12, 0x4

    or-int/2addr v1, v12

    aget-byte v1, v6, v1

    aput-byte v1, v2, v9

    add-int/lit8 v1, v3, 0x1

    sget-object v6, Lcom/boJUF/mB/mB/VD/mB/uI;->cp:[B

    shl-int/lit8 v9, v11, 0x2

    or-int/2addr v0, v9

    aget-byte v0, v6, v0

    aput-byte v0, v2, v3

    add-int/lit8 v0, v1, 0x1

    sget-object v3, Lcom/boJUF/mB/mB/VD/mB/uI;->cp:[B

    and-int/lit8 v6, v10, 0x3f

    aget-byte v3, v3, v6

    aput-byte v3, v2, v1

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v6, v0

    move v1, v5

    goto :goto_2

    :sswitch_0
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    shr-int/lit8 v0, v1, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    move v3, v0

    goto :goto_3

    :cond_3
    shr-int/lit8 v0, v9, 0x4

    xor-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    move v1, v0

    goto :goto_4

    :cond_4
    shr-int/lit8 v0, v10, 0x6

    xor-int/lit16 v0, v0, 0xfc

    int-to-byte v0, v0

    goto :goto_5

    :cond_5
    const/16 v0, 0x8

    if-ne v7, v0, :cond_8

    aget-byte v0, p0, v1

    and-int/lit8 v1, v0, 0x3

    int-to-byte v1, v1

    and-int/lit8 v3, v0, -0x80

    if-nez v3, :cond_7

    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    :goto_6
    add-int/lit8 v3, v6, 0x1

    sget-object v4, Lcom/boJUF/mB/mB/VD/mB/uI;->cp:[B

    aget-byte v0, v4, v0

    aput-byte v0, v2, v6

    sget-object v0, Lcom/boJUF/mB/mB/VD/mB/uI;->cp:[B

    shl-int/lit8 v1, v1, 0x4

    aget-byte v0, v0, v1

    aput-byte v0, v2, v3

    :cond_6
    :goto_7
    move-object v0, v2

    goto/16 :goto_0

    :cond_7
    shr-int/lit8 v0, v0, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    goto :goto_6

    :cond_8
    const/16 v0, 0x10

    if-ne v7, v0, :cond_6

    aget-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    aget-byte v3, p0, v1

    and-int/lit8 v1, v3, 0xf

    int-to-byte v4, v1

    and-int/lit8 v1, v0, 0x3

    int-to-byte v5, v1

    and-int/lit8 v1, v0, -0x80

    if-nez v1, :cond_9

    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    move v1, v0

    :goto_8
    and-int/lit8 v0, v3, -0x80

    if-nez v0, :cond_a

    shr-int/lit8 v0, v3, 0x4

    int-to-byte v0, v0

    :goto_9
    add-int/lit8 v3, v6, 0x1

    sget-object v7, Lcom/boJUF/mB/mB/VD/mB/uI;->cp:[B

    aget-byte v1, v7, v1

    aput-byte v1, v2, v6

    add-int/lit8 v1, v3, 0x1

    sget-object v6, Lcom/boJUF/mB/mB/VD/mB/uI;->cp:[B

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v0, v5

    aget-byte v0, v6, v0

    aput-byte v0, v2, v3

    sget-object v0, Lcom/boJUF/mB/mB/VD/mB/uI;->cp:[B

    shl-int/lit8 v3, v4, 0x2

    aget-byte v0, v0, v3

    aput-byte v0, v2, v1

    goto :goto_7

    :cond_9
    shr-int/lit8 v0, v0, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    move v1, v0

    goto :goto_8

    :cond_a
    shr-int/lit8 v0, v3, 0x4

    xor-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    goto :goto_9

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public static On(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const-string v1, ""

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/boJUF/mB/mB/VD/mB/uI;->LA([B)[B

    move-result-object v2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v3, v0, 0x4

    const-string v4, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v8, v3, 0x3

    if-ge v0, v8, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    int-to-double v10, v5

    mul-double/2addr v8, v10

    double-to-int v8, v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    int-to-double v10, v5

    mul-double/2addr v8, v10

    double-to-int v8, v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/boJUF/mB/mB/VD/mB/uI;->LA([B)[B

    move-result-object v2

    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public static TP(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v1, ""

    :try_start_0
    invoke-static {p0}, Lcom/boJUF/mB/mB/VD/mB/uI;->oC(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v2, 0x0

    aget-byte v2, v0, v2

    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x1

    new-instance v3, Ljava/lang/String;

    array-length v4, v0

    sub-int/2addr v4, v2

    add-int/lit8 v5, v2, -0x1

    sub-int/2addr v4, v5

    const-string v5, "UTF-8"

    invoke-direct {v3, v0, v2, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v3}, Lcom/boJUF/mB/mB/VD/mB/uI;->oC(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static cp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/boJUF/mB/mB/VD/mB/uI;->na(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private static cp(C)Z
    .locals 2

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/boJUF/mB/mB/VD/mB/uI;->LA:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static na(Ljava/lang/String;)[B
    .locals 14

    const/4 v0, 0x0

    const/4 v3, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-static {v6}, Lcom/boJUF/mB/mB/VD/mB/uI;->LA([C)I

    move-result v1

    rem-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_0

    div-int/lit8 v7, v1, 0x4

    if-nez v7, :cond_2

    new-array v0, v3, [B

    goto :goto_0

    :cond_2
    mul-int/lit8 v1, v7, 0x3

    new-array v1, v1, [B

    move v2, v3

    move v4, v3

    move v5, v3

    :goto_1
    add-int/lit8 v8, v7, -0x1

    if-ge v5, v8, :cond_3

    add-int/lit8 v8, v2, 0x1

    aget-char v9, v6, v2

    invoke-static {v9}, Lcom/boJUF/mB/mB/VD/mB/uI;->cp(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v8, 0x1

    aget-char v8, v6, v8

    invoke-static {v8}, Lcom/boJUF/mB/mB/VD/mB/uI;->cp(C)Z

    move-result v10

    if-eqz v10, :cond_0

    add-int/lit8 v10, v2, 0x1

    aget-char v11, v6, v2

    invoke-static {v11}, Lcom/boJUF/mB/mB/VD/mB/uI;->cp(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v10, 0x1

    aget-char v10, v6, v10

    invoke-static {v10}, Lcom/boJUF/mB/mB/VD/mB/uI;->cp(C)Z

    move-result v12

    if-eqz v12, :cond_0

    sget-object v12, Lcom/boJUF/mB/mB/VD/mB/uI;->LA:[B

    aget-byte v9, v12, v9

    sget-object v12, Lcom/boJUF/mB/mB/VD/mB/uI;->LA:[B

    aget-byte v8, v12, v8

    sget-object v12, Lcom/boJUF/mB/mB/VD/mB/uI;->LA:[B

    aget-byte v11, v12, v11

    sget-object v12, Lcom/boJUF/mB/mB/VD/mB/uI;->LA:[B

    aget-byte v10, v12, v10

    add-int/lit8 v12, v4, 0x1

    shl-int/lit8 v9, v9, 0x2

    shr-int/lit8 v13, v8, 0x4

    or-int/2addr v9, v13

    int-to-byte v9, v9

    aput-byte v9, v1, v4

    add-int/lit8 v9, v12, 0x1

    and-int/lit8 v4, v8, 0xf

    shl-int/lit8 v4, v4, 0x4

    shr-int/lit8 v8, v11, 0x2

    and-int/lit8 v8, v8, 0xf

    or-int/2addr v4, v8

    int-to-byte v4, v4

    aput-byte v4, v1, v12

    add-int/lit8 v4, v9, 0x1

    shl-int/lit8 v8, v11, 0x6

    or-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v1, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v7, v2, 0x1

    aget-char v2, v6, v2

    invoke-static {v2}, Lcom/boJUF/mB/mB/VD/mB/uI;->cp(C)Z

    move-result v8

    if-eqz v8, :cond_0

    add-int/lit8 v8, v7, 0x1

    aget-char v7, v6, v7

    invoke-static {v7}, Lcom/boJUF/mB/mB/VD/mB/uI;->cp(C)Z

    move-result v9

    if-eqz v9, :cond_0

    sget-object v9, Lcom/boJUF/mB/mB/VD/mB/uI;->LA:[B

    aget-byte v2, v9, v2

    sget-object v9, Lcom/boJUF/mB/mB/VD/mB/uI;->LA:[B

    aget-byte v7, v9, v7

    add-int/lit8 v9, v8, 0x1

    aget-char v8, v6, v8

    aget-char v6, v6, v9

    invoke-static {v8}, Lcom/boJUF/mB/mB/VD/mB/uI;->cp(C)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {v6}, Lcom/boJUF/mB/mB/VD/mB/uI;->cp(C)Z

    move-result v9

    if-nez v9, :cond_6

    :cond_4
    invoke-static {v8}, Lcom/boJUF/mB/mB/VD/mB/uI;->LA(C)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v6}, Lcom/boJUF/mB/mB/VD/mB/uI;->LA(C)Z

    move-result v9

    if-eqz v9, :cond_5

    and-int/lit8 v6, v7, 0xf

    if-nez v6, :cond_0

    mul-int/lit8 v0, v5, 0x3

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    mul-int/lit8 v5, v5, 0x3

    invoke-static {v1, v3, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shl-int/lit8 v1, v2, 0x2

    shr-int/lit8 v2, v7, 0x4

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    goto/16 :goto_0

    :cond_5
    invoke-static {v8}, Lcom/boJUF/mB/mB/VD/mB/uI;->LA(C)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v6}, Lcom/boJUF/mB/mB/VD/mB/uI;->LA(C)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/boJUF/mB/mB/VD/mB/uI;->LA:[B

    aget-byte v6, v6, v8

    and-int/lit8 v8, v6, 0x3

    if-nez v8, :cond_0

    mul-int/lit8 v0, v5, 0x3

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    mul-int/lit8 v5, v5, 0x3

    invoke-static {v1, v3, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v4, 0x1

    shl-int/lit8 v2, v2, 0x2

    shr-int/lit8 v3, v7, 0x4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    and-int/lit8 v2, v7, 0xf

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v3, v6, 0x2

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_0

    :cond_6
    sget-object v0, Lcom/boJUF/mB/mB/VD/mB/uI;->LA:[B

    aget-byte v0, v0, v8

    sget-object v3, Lcom/boJUF/mB/mB/VD/mB/uI;->LA:[B

    aget-byte v3, v3, v6

    add-int/lit8 v5, v4, 0x1

    shl-int/lit8 v2, v2, 0x2

    shr-int/lit8 v6, v7, 0x4

    or-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    add-int/lit8 v2, v5, 0x1

    and-int/lit8 v4, v7, 0xf

    shl-int/lit8 v4, v4, 0x4

    shr-int/lit8 v6, v0, 0x2

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v1, v5

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    move-object v0, v1

    goto/16 :goto_0
.end method

.method private static oC(Ljava/lang/String;)[B
    .locals 15

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-nez p0, :cond_1

    move-object v0, v3

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-static {v6}, Lcom/boJUF/mB/mB/VD/mB/uI;->LA([C)I

    move-result v0

    div-int/lit8 v7, v0, 0x4

    rem-int/lit8 v8, v0, 0x4

    if-nez v7, :cond_2

    new-array v0, v2, [B

    goto :goto_0

    :cond_2
    packed-switch v8, :pswitch_data_0

    move v0, v2

    :goto_1
    mul-int/lit8 v4, v7, 0x3

    add-int/2addr v0, v4

    new-array v0, v0, [B

    move v4, v2

    move v5, v2

    :goto_2
    if-ge v5, v7, :cond_5

    add-int/lit8 v9, v2, 0x1

    aget-char v10, v6, v2

    invoke-static {v10}, Lcom/boJUF/mB/mB/VD/mB/uI;->cp(C)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v2, v9, 0x1

    aget-char v9, v6, v9

    invoke-static {v9}, Lcom/boJUF/mB/mB/VD/mB/uI;->cp(C)Z

    move-result v11

    if-eqz v11, :cond_3

    add-int/lit8 v11, v2, 0x1

    aget-char v12, v6, v2

    invoke-static {v12}, Lcom/boJUF/mB/mB/VD/mB/uI;->cp(C)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v2, v11, 0x1

    aget-char v11, v6, v11

    invoke-static {v11}, Lcom/boJUF/mB/mB/VD/mB/uI;->cp(C)Z

    move-result v13

    if-nez v13, :cond_4

    :cond_3
    move-object v0, v3

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_1
    move v0, v1

    goto :goto_1

    :cond_4
    sget-object v13, Lcom/boJUF/mB/mB/VD/mB/uI;->LA:[B

    aget-byte v10, v13, v10

    sget-object v13, Lcom/boJUF/mB/mB/VD/mB/uI;->LA:[B

    aget-byte v9, v13, v9

    sget-object v13, Lcom/boJUF/mB/mB/VD/mB/uI;->LA:[B

    aget-byte v12, v13, v12

    sget-object v13, Lcom/boJUF/mB/mB/VD/mB/uI;->LA:[B

    aget-byte v11, v13, v11

    add-int/lit8 v13, v4, 0x1

    shl-int/lit8 v10, v10, 0x2

    shr-int/lit8 v14, v9, 0x4

    or-int/2addr v10, v14

    int-to-byte v10, v10

    aput-byte v10, v0, v4

    add-int/lit8 v10, v13, 0x1

    and-int/lit8 v4, v9, 0xf

    shl-int/lit8 v4, v4, 0x4

    shr-int/lit8 v9, v12, 0x2

    and-int/lit8 v9, v9, 0xf

    or-int/2addr v4, v9

    int-to-byte v4, v4

    aput-byte v4, v0, v13

    add-int/lit8 v4, v10, 0x1

    shl-int/lit8 v9, v12, 0x6

    or-int/2addr v9, v11

    int-to-byte v9, v9

    aput-byte v9, v0, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    if-eq v8, v1, :cond_6

    const/4 v5, 0x3

    if-ne v8, v5, :cond_0

    :cond_6
    add-int/lit8 v5, v2, 0x1

    aget-char v2, v6, v2

    invoke-static {v2}, Lcom/boJUF/mB/mB/VD/mB/uI;->cp(C)Z

    move-result v7

    if-eqz v7, :cond_7

    add-int/lit8 v7, v5, 0x1

    aget-char v5, v6, v5

    invoke-static {v5}, Lcom/boJUF/mB/mB/VD/mB/uI;->cp(C)Z

    move-result v9

    if-nez v9, :cond_8

    :cond_7
    move-object v0, v3

    goto/16 :goto_0

    :cond_8
    sget-object v9, Lcom/boJUF/mB/mB/VD/mB/uI;->LA:[B

    aget-byte v2, v9, v2

    sget-object v9, Lcom/boJUF/mB/mB/VD/mB/uI;->LA:[B

    aget-byte v5, v9, v5

    if-ne v8, v1, :cond_a

    and-int/lit8 v1, v5, 0xf

    if-eqz v1, :cond_9

    move-object v0, v3

    goto/16 :goto_0

    :cond_9
    shl-int/lit8 v1, v2, 0x2

    shr-int/lit8 v2, v5, 0x4

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    goto/16 :goto_0

    :cond_a
    aget-char v1, v6, v7

    sget-object v6, Lcom/boJUF/mB/mB/VD/mB/uI;->LA:[B

    aget-byte v1, v6, v1

    and-int/lit8 v6, v1, 0x3

    if-eqz v6, :cond_b

    move-object v0, v3

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v3, v4, 0x1

    shl-int/lit8 v2, v2, 0x2

    shr-int/lit8 v6, v5, 0x4

    or-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    and-int/lit8 v2, v5, 0xf

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v1, v1, 0x2

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

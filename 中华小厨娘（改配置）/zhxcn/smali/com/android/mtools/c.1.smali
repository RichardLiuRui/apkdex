.class public final Lcom/android/mtools/c;
.super Ljava/lang/Object;


# static fields
.field private static final d:[B

.field private static final e:[C


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

    sput-object v1, Lcom/android/mtools/c;->d:[B

    const/16 v1, 0x40

    new-array v1, v1, [C

    sput-object v1, Lcom/android/mtools/c;->e:[C

    move v1, v0

    :goto_0
    const/16 v2, 0x80

    if-lt v1, v2, :cond_0

    const/16 v1, 0x5a

    :goto_1
    const/16 v2, 0x41

    if-ge v1, v2, :cond_1

    const/16 v1, 0x7a

    :goto_2
    const/16 v2, 0x61

    if-ge v1, v2, :cond_2

    const/16 v1, 0x39

    :goto_3
    const/16 v2, 0x30

    if-ge v1, v2, :cond_3

    sget-object v1, Lcom/android/mtools/c;->d:[B

    aput-byte v7, v1, v5

    sget-object v1, Lcom/android/mtools/c;->d:[B

    aput-byte v8, v1, v6

    move v1, v0

    :goto_4
    const/16 v2, 0x19

    if-le v1, v2, :cond_4

    const/16 v1, 0x1a

    move v2, v1

    move v1, v0

    :goto_5
    const/16 v3, 0x33

    if-le v2, v3, :cond_5

    const/16 v1, 0x34

    :goto_6
    const/16 v2, 0x3d

    if-le v1, v2, :cond_6

    sget-object v0, Lcom/android/mtools/c;->e:[C

    aput-char v5, v0, v7

    sget-object v0, Lcom/android/mtools/c;->e:[C

    aput-char v6, v0, v8

    return-void

    :cond_0
    sget-object v2, Lcom/android/mtools/c;->d:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/mtools/c;->d:[B

    add-int/lit8 v3, v1, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/android/mtools/c;->d:[B

    add-int/lit8 v3, v1, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/android/mtools/c;->d:[B

    add-int/lit8 v3, v1, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_4
    sget-object v2, Lcom/android/mtools/c;->e:[C

    add-int/lit8 v3, v1, 0x41

    int-to-char v3, v3

    aput-char v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    sget-object v3, Lcom/android/mtools/c;->e:[C

    add-int/lit8 v4, v1, 0x61

    int-to-char v4, v4

    aput-char v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    sget-object v2, Lcom/android/mtools/c;->e:[C

    add-int/lit8 v3, v0, 0x30

    int-to-char v3, v3

    aput-char v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private static a(C)Z
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

.method private static a(Ljava/lang/String;)[B
    .locals 14

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-nez p0, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    if-nez v6, :cond_2

    move v1, v2

    :cond_1
    rem-int/lit8 v0, v1, 0x4

    if-eqz v0, :cond_4

    move-object v0, v3

    goto :goto_0

    :cond_2
    array-length v5, v6

    move v4, v2

    move v1, v2

    :goto_1
    if-ge v4, v5, :cond_1

    aget-char v0, v6, v4

    const/16 v7, 0x20

    if-eq v0, v7, :cond_3

    const/16 v7, 0xd

    if-eq v0, v7, :cond_3

    const/16 v7, 0xa

    if-eq v0, v7, :cond_3

    const/16 v7, 0x9

    if-eq v0, v7, :cond_3

    move v0, v2

    :goto_2
    if-nez v0, :cond_11

    add-int/lit8 v0, v1, 0x1

    aget-char v7, v6, v4

    aput-char v7, v6, v1

    :goto_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    div-int/lit8 v7, v1, 0x4

    if-nez v7, :cond_5

    new-array v0, v2, [B

    goto :goto_0

    :cond_5
    mul-int/lit8 v0, v7, 0x3

    new-array v0, v0, [B

    move v1, v2

    move v4, v2

    move v5, v2

    :goto_4
    add-int/lit8 v8, v7, -0x1

    if-lt v5, v8, :cond_7

    add-int/lit8 v7, v1, 0x1

    aget-char v1, v6, v1

    invoke-static {v1}, Lcom/android/mtools/c;->b(C)Z

    move-result v8

    if-eqz v8, :cond_6

    add-int/lit8 v8, v7, 0x1

    aget-char v7, v6, v7

    invoke-static {v7}, Lcom/android/mtools/c;->b(C)Z

    move-result v9

    if-nez v9, :cond_a

    :cond_6
    move-object v0, v3

    goto :goto_0

    :cond_7
    add-int/lit8 v8, v1, 0x1

    aget-char v9, v6, v1

    invoke-static {v9}, Lcom/android/mtools/c;->b(C)Z

    move-result v1

    if-eqz v1, :cond_8

    add-int/lit8 v1, v8, 0x1

    aget-char v8, v6, v8

    invoke-static {v8}, Lcom/android/mtools/c;->b(C)Z

    move-result v10

    if-eqz v10, :cond_8

    add-int/lit8 v10, v1, 0x1

    aget-char v11, v6, v1

    invoke-static {v11}, Lcom/android/mtools/c;->b(C)Z

    move-result v1

    if-eqz v1, :cond_8

    add-int/lit8 v1, v10, 0x1

    aget-char v10, v6, v10

    invoke-static {v10}, Lcom/android/mtools/c;->b(C)Z

    move-result v12

    if-nez v12, :cond_9

    :cond_8
    move-object v0, v3

    goto/16 :goto_0

    :cond_9
    sget-object v12, Lcom/android/mtools/c;->d:[B

    aget-byte v9, v12, v9

    sget-object v12, Lcom/android/mtools/c;->d:[B

    aget-byte v8, v12, v8

    sget-object v12, Lcom/android/mtools/c;->d:[B

    aget-byte v11, v12, v11

    sget-object v12, Lcom/android/mtools/c;->d:[B

    aget-byte v10, v12, v10

    add-int/lit8 v12, v4, 0x1

    shl-int/lit8 v9, v9, 0x2

    shr-int/lit8 v13, v8, 0x4

    or-int/2addr v9, v13

    int-to-byte v9, v9

    aput-byte v9, v0, v4

    add-int/lit8 v9, v12, 0x1

    and-int/lit8 v4, v8, 0xf

    shl-int/lit8 v4, v4, 0x4

    shr-int/lit8 v8, v11, 0x2

    and-int/lit8 v8, v8, 0xf

    or-int/2addr v4, v8

    int-to-byte v4, v4

    aput-byte v4, v0, v12

    add-int/lit8 v4, v9, 0x1

    shl-int/lit8 v8, v11, 0x6

    or-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v0, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_a
    sget-object v9, Lcom/android/mtools/c;->d:[B

    aget-byte v9, v9, v1

    sget-object v1, Lcom/android/mtools/c;->d:[B

    aget-byte v7, v1, v7

    add-int/lit8 v1, v8, 0x1

    aget-char v8, v6, v8

    aget-char v1, v6, v1

    invoke-static {v8}, Lcom/android/mtools/c;->b(C)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {v1}, Lcom/android/mtools/c;->b(C)Z

    move-result v6

    if-nez v6, :cond_10

    :cond_b
    invoke-static {v8}, Lcom/android/mtools/c;->a(C)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-static {v1}, Lcom/android/mtools/c;->a(C)Z

    move-result v6

    if-eqz v6, :cond_d

    and-int/lit8 v1, v7, 0xf

    if-eqz v1, :cond_c

    move-object v0, v3

    goto/16 :goto_0

    :cond_c
    mul-int/lit8 v1, v5, 0x3

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    mul-int/lit8 v3, v5, 0x3

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shl-int/lit8 v0, v9, 0x2

    shr-int/lit8 v2, v7, 0x4

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v1, v4

    move-object v0, v1

    goto/16 :goto_0

    :cond_d
    invoke-static {v8}, Lcom/android/mtools/c;->a(C)Z

    move-result v6

    if-nez v6, :cond_f

    invoke-static {v1}, Lcom/android/mtools/c;->a(C)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Lcom/android/mtools/c;->d:[B

    aget-byte v6, v1, v8

    and-int/lit8 v1, v6, 0x3

    if-eqz v1, :cond_e

    move-object v0, v3

    goto/16 :goto_0

    :cond_e
    mul-int/lit8 v1, v5, 0x3

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    mul-int/lit8 v3, v5, 0x3

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v4, 0x1

    shl-int/lit8 v2, v9, 0x2

    shr-int/lit8 v3, v7, 0x4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    and-int/lit8 v2, v7, 0xf

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v3, v6, 0x2

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    move-object v0, v1

    goto/16 :goto_0

    :cond_f
    move-object v0, v3

    goto/16 :goto_0

    :cond_10
    sget-object v2, Lcom/android/mtools/c;->d:[B

    aget-byte v2, v2, v8

    sget-object v3, Lcom/android/mtools/c;->d:[B

    aget-byte v1, v3, v1

    add-int/lit8 v3, v4, 0x1

    shl-int/lit8 v5, v9, 0x2

    shr-int/lit8 v6, v7, 0x4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v3, 0x1

    and-int/lit8 v5, v7, 0xf

    shl-int/lit8 v5, v5, 0x4

    shr-int/lit8 v6, v2, 0x2

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    goto/16 :goto_0

    :cond_11
    move v0, v1

    goto/16 :goto_3
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
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

    if-eqz v8, :cond_3

    add-int/lit8 v0, v1, 0x1

    :goto_1
    shl-int/lit8 v0, v0, 0x2

    new-array v9, v0, [C

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v4, v0

    move v6, v3

    move v0, v2

    :goto_2
    if-lt v4, v1, :cond_4

    const/16 v1, 0x8

    if-ne v8, v1, :cond_9

    aget-byte v0, v7, v0

    and-int/lit8 v1, v0, 0x3

    int-to-byte v1, v1

    and-int/lit8 v2, v0, -0x80

    if-nez v2, :cond_8

    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    :goto_3
    add-int/lit8 v2, v6, 0x1

    sget-object v3, Lcom/android/mtools/c;->e:[C

    aget-char v0, v3, v0

    aput-char v0, v9, v6

    add-int/lit8 v0, v2, 0x1

    sget-object v3, Lcom/android/mtools/c;->e:[C

    shl-int/lit8 v1, v1, 0x4

    aget-char v1, v3, v1

    aput-char v1, v9, v2

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x3d

    aput-char v2, v9, v0

    const/16 v0, 0x3d

    aput-char v0, v9, v1

    :cond_2
    :goto_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v9}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
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

    if-nez v3, :cond_5

    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    move v3, v0

    :goto_5
    and-int/lit8 v0, v2, -0x80

    if-nez v0, :cond_6

    shr-int/lit8 v0, v2, 0x4

    int-to-byte v0, v0

    move v2, v0

    :goto_6
    and-int/lit8 v0, v10, -0x80

    if-nez v0, :cond_7

    shr-int/lit8 v0, v10, 0x6

    int-to-byte v0, v0

    :goto_7
    add-int/lit8 v13, v6, 0x1

    sget-object v14, Lcom/android/mtools/c;->e:[C

    aget-char v3, v14, v3

    aput-char v3, v9, v6

    add-int/lit8 v3, v13, 0x1

    sget-object v6, Lcom/android/mtools/c;->e:[C

    shl-int/lit8 v12, v12, 0x4

    or-int/2addr v2, v12

    aget-char v2, v6, v2

    aput-char v2, v9, v13

    add-int/lit8 v6, v3, 0x1

    sget-object v2, Lcom/android/mtools/c;->e:[C

    shl-int/lit8 v11, v11, 0x2

    or-int/2addr v0, v11

    aget-char v0, v2, v0

    aput-char v0, v9, v3

    add-int/lit8 v2, v6, 0x1

    sget-object v0, Lcom/android/mtools/c;->e:[C

    and-int/lit8 v3, v10, 0x3f

    aget-char v0, v0, v3

    aput-char v0, v9, v6

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v6, v2

    move v0, v5

    goto/16 :goto_2

    :cond_5
    shr-int/lit8 v0, v0, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    move v3, v0

    goto :goto_5

    :cond_6
    shr-int/lit8 v0, v2, 0x4

    xor-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    move v2, v0

    goto :goto_6

    :cond_7
    shr-int/lit8 v0, v10, 0x6

    xor-int/lit16 v0, v0, 0xfc

    int-to-byte v0, v0

    goto :goto_7

    :cond_8
    shr-int/lit8 v0, v0, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    goto/16 :goto_3

    :cond_9
    const/16 v1, 0x10

    if-ne v8, v1, :cond_2

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

    sget-object v5, Lcom/android/mtools/c;->e:[C

    aget-char v1, v5, v1

    aput-char v1, v9, v6

    add-int/lit8 v1, v2, 0x1

    sget-object v5, Lcom/android/mtools/c;->e:[C

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v0, v4

    aget-char v0, v5, v0

    aput-char v0, v9, v2

    add-int/lit8 v0, v1, 0x1

    sget-object v2, Lcom/android/mtools/c;->e:[C

    shl-int/lit8 v3, v3, 0x2

    aget-char v2, v2, v3

    aput-char v2, v9, v1

    const/16 v1, 0x3d

    aput-char v1, v9, v0

    goto/16 :goto_4

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

.method private static b(C)Z
    .locals 2

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/android/mtools/c;->d:[B

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

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/android/mtools/c;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

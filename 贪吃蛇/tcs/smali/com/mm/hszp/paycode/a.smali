.class public final Lcom/mm/hszp/paycode/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:[C

.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x34

    const/16 v8, 0x2f

    const/16 v7, 0x2b

    const/16 v2, 0x1a

    const/4 v1, 0x0

    const/16 v3, 0x80

    new-array v3, v3, [B

    sput-object v3, Lcom/mm/hszp/paycode/a;->b:[B

    const/16 v3, 0x40

    new-array v3, v3, [C

    sput-object v3, Lcom/mm/hszp/paycode/a;->a:[C

    move v3, v1

    move v4, v1

    :goto_0
    const/16 v5, 0x80

    if-lt v4, v5, :cond_0

    const/16 v4, 0x5a

    const/16 v3, 0x5a

    :goto_1
    const/16 v5, 0x41

    if-ge v4, v5, :cond_1

    const/16 v3, 0x7a

    const/16 v4, 0x7a

    :goto_2
    const/16 v5, 0x61

    if-ge v3, v5, :cond_2

    const/16 v4, 0x39

    const/16 v3, 0x39

    :goto_3
    const/16 v5, 0x30

    if-ge v4, v5, :cond_3

    sget-object v3, Lcom/mm/hszp/paycode/a;->b:[B

    const/16 v4, 0x3e

    aput-byte v4, v3, v7

    sget-object v3, Lcom/mm/hszp/paycode/a;->b:[B

    const/16 v4, 0x3f

    aput-byte v4, v3, v8

    move v3, v1

    move v4, v1

    :goto_4
    const/16 v5, 0x19

    if-le v3, v5, :cond_4

    move v3, v2

    move v4, v2

    move v2, v1

    :goto_5
    const/16 v5, 0x33

    if-le v3, v5, :cond_5

    move v2, v1

    move v1, v0

    :goto_6
    const/16 v3, 0x3d

    if-le v1, v3, :cond_6

    sget-object v0, Lcom/mm/hszp/paycode/a;->a:[C

    const/16 v1, 0x3e

    aput-char v7, v0, v1

    sget-object v0, Lcom/mm/hszp/paycode/a;->a:[C

    const/16 v1, 0x3f

    aput-char v8, v0, v1

    return-void

    :cond_0
    sget-object v5, Lcom/mm/hszp/paycode/a;->b:[B

    add-int/lit8 v4, v3, 0x1

    const/4 v6, -0x1

    aput-byte v6, v5, v3

    move v3, v4

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/mm/hszp/paycode/a;->b:[B

    add-int/lit8 v4, v3, -0x41

    int-to-byte v6, v4

    add-int/lit8 v4, v3, -0x1

    aput-byte v6, v5, v3

    move v3, v4

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/mm/hszp/paycode/a;->b:[B

    add-int/lit8 v3, v4, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v6, v3

    add-int/lit8 v3, v4, -0x1

    aput-byte v6, v5, v4

    move v4, v3

    goto :goto_2

    :cond_3
    sget-object v5, Lcom/mm/hszp/paycode/a;->b:[B

    add-int/lit8 v4, v3, -0x30

    add-int/lit8 v4, v4, 0x34

    int-to-byte v6, v4

    add-int/lit8 v4, v3, -0x1

    aput-byte v6, v5, v3

    move v3, v4

    goto :goto_3

    :cond_4
    sget-object v5, Lcom/mm/hszp/paycode/a;->a:[C

    add-int/lit8 v3, v4, 0x41

    int-to-char v6, v3

    add-int/lit8 v3, v4, 0x1

    aput-char v6, v5, v4

    move v4, v3

    goto :goto_4

    :cond_5
    sget-object v5, Lcom/mm/hszp/paycode/a;->a:[C

    add-int/lit8 v3, v2, 0x61

    int-to-char v6, v3

    add-int/lit8 v3, v4, 0x1

    aput-char v6, v5, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v3

    goto :goto_5

    :cond_6
    sget-object v3, Lcom/mm/hszp/paycode/a;->a:[C

    add-int/lit8 v1, v2, 0x30

    int-to-char v4, v1

    add-int/lit8 v1, v0, 0x1

    aput-char v4, v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto :goto_6
.end method

.method public static a([B)Ljava/lang/String;
    .locals 15

    const/16 v14, 0x3d

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    rem-int/lit8 v7, v0, 0x18

    div-int/lit8 v1, v0, 0x18

    if-eqz v7, :cond_3

    add-int/lit8 v0, v1, 0x1

    :goto_1
    mul-int/lit8 v0, v0, 0x4

    new-array v8, v0, [C

    move v4, v2

    move v0, v2

    move v6, v2

    :goto_2
    if-lt v0, v1, :cond_4

    const/16 v0, 0x8

    if-ne v7, v0, :cond_9

    aget-byte v0, p0, v2

    and-int/lit8 v1, v0, 0x3

    int-to-byte v1, v1

    and-int/lit8 v2, v0, -0x80

    if-nez v2, :cond_8

    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    :goto_3
    sget-object v2, Lcom/mm/hszp/paycode/a;->a:[C

    add-int/lit8 v3, v4, 0x1

    aget-char v0, v2, v0

    aput-char v0, v8, v4

    sget-object v0, Lcom/mm/hszp/paycode/a;->a:[C

    add-int/lit8 v2, v3, 0x1

    shl-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    aput-char v0, v8, v3

    add-int/lit8 v0, v2, 0x1

    aput-char v14, v8, v2

    aput-char v14, v8, v0

    :cond_2
    :goto_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    aget-byte v0, p0, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v9, p0, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v10, p0, v2

    add-int/lit8 v5, v2, 0x1

    and-int/lit8 v2, v9, 0xf

    int-to-byte v11, v2

    and-int/lit8 v2, v0, 0x3

    int-to-byte v12, v2

    and-int/lit8 v2, v0, -0x80

    if-nez v2, :cond_5

    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    move v3, v0

    :goto_5
    and-int/lit8 v0, v9, -0x80

    if-nez v0, :cond_6

    shr-int/lit8 v0, v9, 0x4

    int-to-byte v0, v0

    move v2, v0

    :goto_6
    and-int/lit8 v0, v10, -0x80

    if-nez v0, :cond_7

    shr-int/lit8 v0, v10, 0x6

    int-to-byte v0, v0

    :goto_7
    sget-object v9, Lcom/mm/hszp/paycode/a;->a:[C

    add-int/lit8 v13, v4, 0x1

    aget-char v3, v9, v3

    aput-char v3, v8, v4

    sget-object v3, Lcom/mm/hszp/paycode/a;->a:[C

    add-int/lit8 v4, v13, 0x1

    shl-int/lit8 v9, v12, 0x4

    or-int/2addr v2, v9

    aget-char v2, v3, v2

    aput-char v2, v8, v13

    sget-object v2, Lcom/mm/hszp/paycode/a;->a:[C

    add-int/lit8 v3, v4, 0x1

    shl-int/lit8 v9, v11, 0x2

    or-int/2addr v0, v9

    aget-char v0, v2, v0

    aput-char v0, v8, v4

    sget-object v2, Lcom/mm/hszp/paycode/a;->a:[C

    add-int/lit8 v0, v3, 0x1

    and-int/lit8 v4, v10, 0x3f

    aget-char v4, v2, v4

    add-int/lit8 v2, v6, 0x1

    aput-char v4, v8, v3

    move v4, v0

    move v6, v2

    move v0, v2

    move v2, v5

    goto/16 :goto_2

    :cond_5
    shr-int/lit8 v0, v0, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    move v3, v0

    goto :goto_5

    :cond_6
    shr-int/lit8 v0, v9, 0x4

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
    const/16 v0, 0x10

    if-ne v7, v0, :cond_2

    aget-byte v0, p0, v2

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p0, v1

    and-int/lit8 v1, v2, 0xf

    int-to-byte v3, v1

    and-int/lit8 v1, v0, 0x3

    int-to-byte v5, v1

    and-int/lit8 v1, v0, -0x80

    if-nez v1, :cond_a

    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    move v1, v0

    :goto_8
    and-int/lit8 v0, v2, -0x80

    if-nez v0, :cond_b

    shr-int/lit8 v0, v2, 0x4

    int-to-byte v0, v0

    :goto_9
    sget-object v2, Lcom/mm/hszp/paycode/a;->a:[C

    add-int/lit8 v6, v4, 0x1

    aget-char v1, v2, v1

    aput-char v1, v8, v4

    sget-object v1, Lcom/mm/hszp/paycode/a;->a:[C

    add-int/lit8 v2, v6, 0x1

    shl-int/lit8 v4, v5, 0x4

    or-int/2addr v0, v4

    aget-char v0, v1, v0

    aput-char v0, v8, v6

    sget-object v0, Lcom/mm/hszp/paycode/a;->a:[C

    add-int/lit8 v1, v2, 0x1

    shl-int/lit8 v3, v3, 0x2

    aget-char v0, v0, v3

    aput-char v0, v8, v2

    aput-char v14, v8, v1

    goto/16 :goto_4

    :cond_a
    shr-int/lit8 v0, v0, 0x2

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

.method private static a(C)Z
    .locals 2

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/mm/hszp/paycode/a;->b:[B

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

.method public static a(Ljava/lang/String;)[B
    .locals 15

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    if-eqz v7, :cond_8

    array-length v5, v7

    move v4, v2

    move v0, v2

    move v1, v2

    :goto_0
    if-lt v0, v5, :cond_0

    :goto_1
    rem-int/lit8 v0, v1, 0x4

    if-nez v0, :cond_7

    div-int/lit8 v8, v1, 0x4

    if-nez v8, :cond_3

    new-array v0, v2, [B

    :goto_2
    return-object v0

    :cond_0
    aget-char v0, v7, v4

    const/16 v6, 0x20

    if-eq v0, v6, :cond_1

    const/16 v6, 0xd

    if-eq v0, v6, :cond_1

    const/16 v6, 0xa

    if-eq v0, v6, :cond_1

    const/16 v6, 0x9

    if-eq v0, v6, :cond_1

    move v0, v2

    :goto_3
    if-nez v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    aget-char v6, v7, v4

    aput-char v6, v7, v1

    :goto_4
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v14, v1

    move v1, v0

    move v0, v14

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    move v0, v1

    goto :goto_4

    :cond_3
    mul-int/lit8 v0, v8, 0x3

    new-array v0, v0, [B

    move v4, v2

    move v5, v2

    move v1, v2

    move v6, v2

    :goto_5
    add-int/lit8 v9, v8, -0x1

    if-lt v6, v9, :cond_6

    aget-char v6, v7, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v6}, Lcom/mm/hszp/paycode/a;->a(C)Z

    move-result v8

    if-eqz v8, :cond_7

    aget-char v8, v7, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v8}, Lcom/mm/hszp/paycode/a;->a(C)Z

    move-result v9

    if-eqz v9, :cond_7

    sget-object v9, Lcom/mm/hszp/paycode/a;->b:[B

    aget-byte v6, v9, v6

    sget-object v9, Lcom/mm/hszp/paycode/a;->b:[B

    aget-byte v8, v9, v8

    aget-char v9, v7, v1

    add-int/lit8 v1, v1, 0x1

    aget-char v1, v7, v1

    invoke-static {v9}, Lcom/mm/hszp/paycode/a;->a(C)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v1}, Lcom/mm/hszp/paycode/a;->a(C)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v2, Lcom/mm/hszp/paycode/a;->b:[B

    aget-byte v2, v2, v9

    sget-object v3, Lcom/mm/hszp/paycode/a;->b:[B

    aget-byte v1, v3, v1

    shl-int/lit8 v3, v6, 0x2

    add-int/lit8 v4, v5, 0x1

    shr-int/lit8 v6, v8, 0x4

    or-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    and-int/lit8 v3, v8, 0xf

    add-int/lit8 v5, v4, 0x1

    shl-int/lit8 v3, v3, 0x4

    shr-int/lit8 v6, v2, 0x2

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, v0, v4

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    goto/16 :goto_2

    :cond_4
    invoke-static {v9}, Lcom/mm/hszp/paycode/a;->b(C)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {v1}, Lcom/mm/hszp/paycode/a;->b(C)Z

    move-result v7

    if-eqz v7, :cond_5

    and-int/lit8 v1, v8, 0xf

    if-nez v1, :cond_7

    mul-int/lit8 v1, v4, 0x3

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    mul-int/lit8 v3, v4, 0x3

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shl-int/lit8 v0, v6, 0x2

    shr-int/lit8 v2, v8, 0x4

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v1, v5

    move-object v0, v1

    goto/16 :goto_2

    :cond_5
    invoke-static {v9}, Lcom/mm/hszp/paycode/a;->b(C)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v1}, Lcom/mm/hszp/paycode/a;->b(C)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/mm/hszp/paycode/a;->b:[B

    aget-byte v7, v1, v9

    and-int/lit8 v1, v7, 0x3

    if-nez v1, :cond_7

    mul-int/lit8 v1, v4, 0x3

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    mul-int/lit8 v3, v4, 0x3

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shl-int/lit8 v0, v6, 0x2

    add-int/lit8 v2, v5, 0x1

    shr-int/lit8 v3, v8, 0x4

    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v1, v5

    and-int/lit8 v0, v8, 0xf

    shl-int/lit8 v0, v0, 0x4

    shr-int/lit8 v3, v7, 0x2

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    move-object v0, v1

    goto/16 :goto_2

    :cond_6
    aget-char v9, v7, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v9}, Lcom/mm/hszp/paycode/a;->a(C)Z

    move-result v6

    if-eqz v6, :cond_7

    aget-char v10, v7, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v10}, Lcom/mm/hszp/paycode/a;->a(C)Z

    move-result v6

    if-eqz v6, :cond_7

    aget-char v11, v7, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v11}, Lcom/mm/hszp/paycode/a;->a(C)Z

    move-result v6

    if-eqz v6, :cond_7

    aget-char v12, v7, v1

    add-int/lit8 v6, v1, 0x1

    invoke-static {v12}, Lcom/mm/hszp/paycode/a;->a(C)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/mm/hszp/paycode/a;->b:[B

    aget-byte v1, v1, v9

    sget-object v9, Lcom/mm/hszp/paycode/a;->b:[B

    aget-byte v9, v9, v10

    sget-object v10, Lcom/mm/hszp/paycode/a;->b:[B

    aget-byte v10, v10, v11

    sget-object v11, Lcom/mm/hszp/paycode/a;->b:[B

    aget-byte v11, v11, v12

    shl-int/lit8 v1, v1, 0x2

    add-int/lit8 v12, v5, 0x1

    shr-int/lit8 v13, v9, 0x4

    or-int/2addr v1, v13

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    and-int/lit8 v1, v9, 0xf

    add-int/lit8 v9, v12, 0x1

    shl-int/lit8 v1, v1, 0x4

    shr-int/lit8 v5, v10, 0x2

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, v0, v12

    shl-int/lit8 v1, v10, 0x6

    add-int/lit8 v5, v9, 0x1

    or-int/2addr v1, v11

    int-to-byte v10, v1

    add-int/lit8 v1, v4, 0x1

    aput-byte v10, v0, v9

    move v4, v1

    move v14, v6

    move v6, v1

    move v1, v14

    goto/16 :goto_5

    :cond_7
    move-object v0, v3

    goto/16 :goto_2

    :cond_8
    move v1, v2

    goto/16 :goto_1
.end method

.method private static b(C)Z
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

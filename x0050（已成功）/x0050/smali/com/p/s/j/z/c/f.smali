.class public final Lcom/p/s/j/z/c/f;
.super Ljava/lang/Object;
.source "ByteArrayHelper.java"


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 91
    sput-object v0, Lcom/p/s/j/z/c/f;->a:[B

    .line 95
    return-void

    .line 11
    :array_0
    .array-data 1
        -0x5bt
        0x47t
        0x5at
        0x38t
        0x55t
        0x69t
        -0x56t
        0x22t
        -0x51t
        0x33t
        0x5ft
        -0x7ft
        -0xbt
        -0x13t
        -0x6t
        -0x44t
    .end array-data
.end method

.method public static a([BIII)[B
    .locals 11

    .prologue
    .line 150
    aget-byte v1, p0, p1

    .line 151
    shr-int/lit8 v0, v1, 0x4

    and-int/lit8 v0, v0, 0xf

    rem-int/lit8 v0, v0, 0x3

    .line 152
    and-int/lit8 v2, v1, 0xf

    rem-int/lit8 v2, v2, 0x3

    add-int/2addr v2, p2

    .line 153
    add-int/lit8 v3, p1, 0x1

    add-int/2addr v3, v0

    add-int/2addr v3, v2

    .line 154
    add-int v4, p3, p1

    sub-int/2addr v4, v3

    add-int/lit8 v5, p1, 0x1

    add-int/2addr v5, v0

    new-array v6, v4, [B

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v4, :cond_0

    return-object v6

    :cond_0
    rem-int v7, v0, v2

    add-int/2addr v7, v5

    aget-byte v7, p0, v7

    sget-object v8, Lcom/p/s/j/z/c/f;->a:[B

    and-int/lit8 v9, v0, 0xf

    aget-byte v8, v8, v9

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    rem-int v8, v0, v2

    add-int/2addr v8, v5

    aput-byte v7, p0, v8

    add-int v8, v1, v0

    sget-object v9, Lcom/p/s/j/z/c/f;->a:[B

    and-int/lit8 v10, v0, 0xf

    aget-byte v9, v9, v10

    add-int/2addr v8, v9

    rem-int v9, v0, v2

    add-int/2addr v9, v5

    aget-byte v9, p0, v9

    add-int/2addr v8, v9

    and-int/lit8 v8, v8, 0x7

    add-int v9, v0, v3

    aget-byte v9, p0, v9

    xor-int/2addr v7, v9

    int-to-byte v7, v7

    and-int/lit16 v9, v7, 0xff

    shr-int/2addr v9, v8

    rsub-int/lit8 v8, v8, 0x8

    shl-int/2addr v7, v8

    or-int/2addr v7, v9

    int-to-byte v7, v7

    aput-byte v7, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

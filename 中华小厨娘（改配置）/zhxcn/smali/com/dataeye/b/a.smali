.class public Lcom/dataeye/b/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:[B

.field private static final b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dataeye/b/a;->b:[C

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/dataeye/b/a;->a:[B

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static a(C)B
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    int-to-byte v0, v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [C

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    :cond_2
    aget-byte v2, p0, v0

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/dataeye/b/a;->b:[C

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    ushr-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x0

    sget-object v4, Lcom/dataeye/b/a;->b:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    aput-char v2, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 4

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/dataeye/b/a;->a:[B

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-lt v0, v2, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    mul-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v2}, Lcom/dataeye/b/a;->a(C)B

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    invoke-static {v3}, Lcom/dataeye/b/a;->a(C)B

    move-result v3

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

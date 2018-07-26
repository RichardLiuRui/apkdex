.class public Lbn/sdk/szwcsss/coddxcxc/ab/cx;
.super Ljava/lang/Object;


# static fields
.field private static final b:[C

.field private static final for:[C


# instance fields
.field private final cx:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x10

    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lbn/sdk/szwcsss/coddxcxc/ab/cx;->b:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lbn/sdk/szwcsss/coddxcxc/ab/cx;->for:[C

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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    :array_1
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

.method protected static b(CI)I
    .locals 3

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lbn/sdk/szwcsss/coddxcxc/aa/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal hexadecimal character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/aa/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return v0
.end method

.method public static b([C)[B
    .locals 6

    const/4 v0, 0x0

    array-length v2, p0

    and-int/lit8 v1, v2, 0x1

    if-eqz v1, :cond_0

    new-instance v0, Lbn/sdk/szwcsss/coddxcxc/aa/b;

    const-string v1, "Odd number of characters."

    invoke-direct {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/aa/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    shr-int/lit8 v1, v2, 0x1

    new-array v3, v1, [B

    move v1, v0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-char v4, p0, v0

    invoke-static {v4, v0}, Lbn/sdk/szwcsss/coddxcxc/ab/cx;->b(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v0, v0, 0x1

    aget-char v5, p0, v0

    invoke-static {v5, v0}, Lbn/sdk/szwcsss/coddxcxc/ab/cx;->b(CI)I

    move-result v5

    or-int/2addr v4, v5

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[charsetName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/ab/cx;->cx:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

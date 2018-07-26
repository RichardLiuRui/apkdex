.class public Lbn/sdk/szwcsss/coddxcxc/x/transient;
.super Ljava/lang/Object;


# static fields
.field private static b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9b

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lbn/sdk/szwcsss/coddxcxc/x/transient;->b:[I

    return-void

    :array_0
    .array-data 4
        0x38
        0x5
        0x2c
        0x5
        0x39
        0x43
        0x51
        0x2
        0x1
        0x1c
        0x34
        0x15
        0x16
        0x3a
        0x20
        0x20
        0x20
        0x1f
        0x36
        0x39
        0xc
        0x36
        0x52
        0x22
        0x5
        0x1c
        0x4e
        0x7
        0x1c
        0x8
        0x22
        0x17
        0x3a
        0x16
        0x3a
        0x36
        0x3e
        0x36
        0x4e
        0x8
        0x6
        0x5
        0x36
        0x55
        0x20
        0x10
        0x36
        0x3e
        0xd
        0x15
        0x38
        0x4a
        0x17
        0xd
        0x1b
        0x8
        0x2d
        0xc
        0x34
        0xc
        0x1f
        0x6
        0x3d
        0x17
        0x10
        0x22
        0x15
        0x2b
        0x32
        0x62
        0x62
        0x2
        0x7
        0x9
        0x10
        0x5
        0x4e
        0x59
        0x4a
        0x15
        0x20
        0x3
        0x3d
        0x33
        0x19
        0x2c
        0x4e
        0xc
        0x3
        0x15
        0x36
        0x8
        0x1
        0x14
        0x15
        0x7
        0x36
        0x41
        0x15
        0xc
        0x6
        0x3b
        0x5e
        0xf
        0x44
        0x7
        0x47
        0xd
        0x16
        0x36
        0x33
        0x59
        0x6
        0x3c
        0xa
        0x3
        0x5a
        0x4
        0xb
        0x7
        0x62
        0x6
        0xd
        0x3
        0xa
        0x20
        0x19
        0x40
        0x30
        0x5e
        0xd
        0x3d
        0x2d
        0x40
        0x20
        0x10
        0x2b
        0xc
        0xd
        0x1a
        0x22
        0x41
        0x20
        0x10
        0x4
        0x3
        0xd
        0x38
        0x2b
        0xd
        0x10
        0x22
        0x38
        0xf
        0x3
    .end array-data
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "s"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v0, 0x0

    :goto_1
    :try_start_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-char v3, v2, v0

    sget-object v4, Lbn/sdk/szwcsss/coddxcxc/x/transient;->b:[I

    sget-object v5, Lbn/sdk/szwcsss/coddxcxc/x/transient;->b:[I

    array-length v5, v5

    rem-int v5, v0, v5

    aget v4, v4, v5

    add-int/2addr v3, v4

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const-string v0, "e"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static for(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "s"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "e"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    :try_start_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    aget-char v3, v1, v0

    sget-object v4, Lbn/sdk/szwcsss/coddxcxc/x/transient;->b:[I

    sget-object v5, Lbn/sdk/szwcsss/coddxcxc/x/transient;->b:[I

    array-length v5, v5

    rem-int v5, v0, v5

    aget v4, v4, v5

    sub-int/2addr v3, v4

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

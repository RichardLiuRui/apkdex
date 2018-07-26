.class public abstract Lbn/sdk/szwcsss/coddxcxc/ab/for;
.super Ljava/lang/Object;


# instance fields
.field protected aa:[B

.field private final b:I

.field protected final cx:I

.field protected final for:B

.field private final implements:I

.field private final instanceof:I

.field protected private:I

.field private synchronized:I

.field protected throw:I

.field protected transient:I

.field protected while:Z


# direct methods
.method protected constructor <init>(IIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3d

    iput-byte v0, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->for:B

    iput p1, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->b:I

    iput p2, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->implements:I

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    div-int v0, p3, p2

    mul-int/2addr v0, p2

    :goto_0
    iput v0, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->cx:I

    iput p4, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->instanceof:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aa()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->aa:[B

    iput v1, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->throw:I

    iput v1, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->synchronized:I

    iput v1, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->private:I

    iput v1, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->transient:I

    iput-boolean v1, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->while:Z

    return-void
.end method

.method private cx()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->aa:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbn/sdk/szwcsss/coddxcxc/ab/for;->for()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->aa:[B

    iput v3, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->throw:I

    iput v3, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->synchronized:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->aa:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->aa:[B

    iget-object v2, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->aa:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->aa:[B

    goto :goto_0
.end method


# virtual methods
.method protected aa([B)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v2, p1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-byte v3, p1, v1

    const/16 v4, 0x3d

    if-eq v4, v3, :cond_2

    invoke-virtual {p0, v3}, Lbn/sdk/szwcsss/coddxcxc/ab/for;->b(B)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method b()I
    .locals 2

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->aa:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->throw:I

    iget v1, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->synchronized:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(I)V
    .locals 2

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->aa:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->aa:[B

    array-length v0, v0

    iget v1, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->throw:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lbn/sdk/szwcsss/coddxcxc/ab/for;->cx()V

    :cond_1
    return-void
.end method

.method abstract b([BII)V
.end method

.method protected abstract b(B)Z
.end method

.method cx([BII)I
    .locals 3

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->aa:[B

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbn/sdk/szwcsss/coddxcxc/ab/for;->b()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->aa:[B

    iget v2, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->synchronized:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->synchronized:I

    add-int/2addr v1, v0

    iput v1, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->synchronized:I

    iget v1, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->synchronized:I

    iget v2, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->throw:I

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->aa:[B

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->while:Z

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cx([B)[B
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lbn/sdk/szwcsss/coddxcxc/ab/for;->aa()V

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    array-length v0, p1

    invoke-virtual {p0, p1, v2, v0}, Lbn/sdk/szwcsss/coddxcxc/ab/for;->b([BII)V

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v2, v0}, Lbn/sdk/szwcsss/coddxcxc/ab/for;->b([BII)V

    iget v0, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->throw:I

    iget v1, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->synchronized:I

    sub-int/2addr v0, v1

    new-array p1, v0, [B

    array-length v0, p1

    invoke-virtual {p0, p1, v2, v0}, Lbn/sdk/szwcsss/coddxcxc/ab/for;->cx([BII)I

    goto :goto_0
.end method

.method protected for()I
    .locals 1

    const/16 v0, 0x2000

    return v0
.end method

.method abstract for([BII)V
.end method

.method public for(Ljava/lang/String;)[B
    .locals 1

    invoke-static {p1}, Lbn/sdk/szwcsss/coddxcxc/ab/aa;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lbn/sdk/szwcsss/coddxcxc/ab/for;->for([B)[B

    move-result-object v0

    return-object v0
.end method

.method public for([B)[B
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lbn/sdk/szwcsss/coddxcxc/ab/for;->aa()V

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lbn/sdk/szwcsss/coddxcxc/ab/for;->for([BII)V

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v1, v0}, Lbn/sdk/szwcsss/coddxcxc/ab/for;->for([BII)V

    iget v0, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->throw:I

    new-array p1, v0, [B

    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lbn/sdk/szwcsss/coddxcxc/ab/for;->cx([BII)I

    goto :goto_0
.end method

.method public throw([B)J
    .locals 6

    array-length v0, p1

    iget v1, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->b:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->b:I

    div-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->implements:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->cx:I

    if-lez v2, :cond_0

    iget v2, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->cx:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iget v4, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->cx:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    iget v4, p0, Lbn/sdk/szwcsss/coddxcxc/ab/for;->instanceof:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

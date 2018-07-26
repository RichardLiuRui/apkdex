.class public final Lcom/p/s/j/z/c/b;
.super Ljava/lang/Object;
.source "AResource.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static final d:[B

.field private static e:[B

.field private static f:[B

.field private static g:[B

.field private static h:[B

.field private static final i:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/p/s/j/z/c/b;->e:[B

    .line 11
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/p/s/j/z/c/b;->f:[B

    .line 13
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/p/s/j/z/c/b;->g:[B

    .line 15
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/p/s/j/z/c/b;->e:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/p/s/j/z/c/b;->a:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/p/s/j/z/c/b;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/p/s/j/z/c/b;->f:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/p/s/j/z/c/b;->b:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/p/s/j/z/c/b;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/p/s/j/z/c/b;->g:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/p/s/j/z/c/b;->c:Ljava/lang/String;

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/p/s/j/z/c/b;->h:[B

    .line 23
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/p/s/j/z/c/b;->d:[B

    .line 60
    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    sput-object v0, Lcom/p/s/j/z/c/b;->i:[B

    return-void

    .line 9
    nop

    :array_0
    .array-data 1
        0x6et
        0x6et
    .end array-data

    .line 11
    nop

    :array_1
    .array-data 1
        0x2et
        0x64t
        0x61t
        0x74t
    .end array-data

    .line 13
    :array_2
    .array-data 1
        0x2et
        0x6at
        0x61t
        0x72t
    .end array-data

    .line 20
    :array_3
    .array-data 1
        0x5ft
        0x6et
        0x6et
    .end array-data

    .line 23
    :array_4
    .array-data 1
        0x3t
        0xbt
        0x52t
        0x11t
        0x15t
        0x12t
        0x4et
        0x53t
        0x41t
    .end array-data

    .line 60
    nop

    :array_5
    .array-data 1
        0x2at
        0x23t
        0x46t
        0x32t
        0x30t
        0x31t
        0x61t
        0x63t
        0x62t
        0x40t
        0x23t
        0x25t
        0x25t
        0x5et
        0x30t
        0x39t
        0x37t
    .end array-data
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/p/s/j/z/c/b;->h:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/p/s/j/z/c/b;->i:[B

    invoke-static {p0, v1}, Lcom/p/s/j/z/c/b;->a([B[B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    sput-object p0, Lcom/p/s/j/z/c/b;->a:Ljava/lang/String;

    .line 28
    sput-object p1, Lcom/p/s/j/z/c/b;->b:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private static a([B[B)[B
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 44
    array-length v1, p0

    new-array v1, v1, [B

    .line 45
    array-length v2, p0

    invoke-static {p0, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 57
    return-object v1

    .line 48
    :cond_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 49
    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    xor-int/2addr v2, v3

    xor-int/lit8 v2, v2, 0x46

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 46
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_1
    aget-byte v2, p0, v0

    .line 52
    array-length v3, p1

    sub-int v3, v0, v3

    aget-byte v3, p0, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    .line 51
    aput-byte v2, v1, v0

    goto :goto_1
.end method

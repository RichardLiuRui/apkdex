.class public Lcom/dataeye/b/e;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/String;

.field private b:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/dataeye/b/e;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/dataeye/b/e;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/dataeye/b/e;->b:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private a([Ljava/lang/Object;I)V
    .locals 4

    const/4 v1, 0x0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/dataeye/b/e;->a(I)V

    const/16 v0, 0x9

    invoke-virtual {p0, v0, p2}, Lcom/dataeye/b/e;->a(BI)V

    array-length v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/dataeye/b/e;->a(II)V

    array-length v2, p1

    move v0, v1

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-object v3, p1, v0

    invoke-virtual {p0, v3, v1}, Lcom/dataeye/b/e;->a(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(BI)V
    .locals 3

    const/16 v0, 0xf

    if-ge p2, v0, :cond_0

    shl-int/lit8 v0, p2, 0x4

    or-int/2addr v0, p1

    int-to-byte v0, v0

    iget-object v1, p0, Lcom/dataeye/b/e;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x100

    if-ge p2, v0, :cond_1

    or-int/lit16 v0, p1, 0xf0

    int-to-byte v0, v0

    iget-object v1, p0, Lcom/dataeye/b/e;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/dataeye/b/e;->b:Ljava/nio/ByteBuffer;

    int-to-byte v1, p2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/dataeye/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tag is too large: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(DI)V
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/dataeye/b/e;->a(I)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Lcom/dataeye/b/e;->a(BI)V

    iget-object v0, p0, Lcom/dataeye/b/e;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public a(FI)V
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/dataeye/b/e;->a(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Lcom/dataeye/b/e;->a(BI)V

    iget-object v0, p0, Lcom/dataeye/b/e;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public a(I)V
    .locals 4

    iget-object v0, p0, Lcom/dataeye/b/e;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-ge v0, p1, :cond_0

    iget-object v0, p0, Lcom/dataeye/b/e;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/dataeye/b/e;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dataeye/b/e;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/dataeye/b/e;->b:Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/dataeye/b/e;->a(I)V

    const/16 v0, -0x8000

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_0

    int-to-short v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/dataeye/b/e;->a(SI)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/dataeye/b/e;->a(BI)V

    iget-object v0, p0, Lcom/dataeye/b/e;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public a(JI)V
    .locals 2

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/dataeye/b/e;->a(I)V

    const-wide/32 v0, -0x80000000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    long-to-int v0, p1

    invoke-virtual {p0, v0, p3}, Lcom/dataeye/b/e;->a(II)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p3}, Lcom/dataeye/b/e;->a(BI)V

    iget-object v0, p0, Lcom/dataeye/b/e;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public a(Lcom/dataeye/b/f;I)V
    .locals 2

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/dataeye/b/e;->a(I)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0, p2}, Lcom/dataeye/b/e;->a(BI)V

    invoke-virtual {p1, p0}, Lcom/dataeye/b/f;->a(Lcom/dataeye/b/e;)V

    invoke-virtual {p0, v1}, Lcom/dataeye/b/e;->a(I)V

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/dataeye/b/e;->a(BI)V

    return-void
.end method

.method public a(Ljava/lang/Object;I)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/dataeye/b/e;->b(BI)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/dataeye/b/e;->a(ZI)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/dataeye/b/e;->a(SI)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/dataeye/b/e;->a(II)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/dataeye/b/e;->a(JI)V

    goto :goto_0

    :cond_5
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_6

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/dataeye/b/e;->a(FI)V

    goto :goto_0

    :cond_6
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/dataeye/b/e;->a(DI)V

    goto :goto_0

    :cond_7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_8

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/dataeye/b/e;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_8
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_9

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/dataeye/b/e;->a(Ljava/util/Map;I)V

    goto :goto_0

    :cond_9
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_a

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/dataeye/b/e;->a(Ljava/util/Collection;I)V

    goto :goto_0

    :cond_a
    instance-of v0, p1, Lcom/dataeye/b/f;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/dataeye/b/f;

    invoke-virtual {p0, p1, p2}, Lcom/dataeye/b/e;->a(Lcom/dataeye/b/f;I)V

    goto/16 :goto_0

    :cond_b
    instance-of v0, p1, [B

    if-eqz v0, :cond_c

    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/dataeye/b/e;->a([BI)V

    goto/16 :goto_0

    :cond_c
    instance-of v0, p1, [Z

    if-eqz v0, :cond_d

    check-cast p1, [Z

    invoke-virtual {p0, p1, p2}, Lcom/dataeye/b/e;->a([ZI)V

    goto/16 :goto_0

    :cond_d
    instance-of v0, p1, [S

    if-eqz v0, :cond_e

    check-cast p1, [S

    invoke-virtual {p0, p1, p2}, Lcom/dataeye/b/e;->a([SI)V

    goto/16 :goto_0

    :cond_e
    instance-of v0, p1, [I

    if-eqz v0, :cond_f

    check-cast p1, [I

    invoke-virtual {p0, p1, p2}, Lcom/dataeye/b/e;->a([II)V

    goto/16 :goto_0

    :cond_f
    instance-of v0, p1, [J

    if-eqz v0, :cond_10

    check-cast p1, [J

    invoke-virtual {p0, p1, p2}, Lcom/dataeye/b/e;->a([JI)V

    goto/16 :goto_0

    :cond_10
    instance-of v0, p1, [F

    if-eqz v0, :cond_11

    check-cast p1, [F

    invoke-virtual {p0, p1, p2}, Lcom/dataeye/b/e;->a([FI)V

    goto/16 :goto_0

    :cond_11
    instance-of v0, p1, [D

    if-eqz v0, :cond_12

    check-cast p1, [D

    invoke-virtual {p0, p1, p2}, Lcom/dataeye/b/e;->a([DI)V

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_13

    check-cast p1, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/dataeye/b/e;->a([Ljava/lang/Object;I)V

    goto/16 :goto_0

    :cond_13
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_14

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/dataeye/b/e;->a(Ljava/util/Collection;I)V

    goto/16 :goto_0

    :cond_14
    new-instance v0, Lcom/dataeye/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "write object error: unsupport type. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/dataeye/b/e;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    array-length v1, v0

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {p0, v1}, Lcom/dataeye/b/e;->a(I)V

    array-length v1, v0

    const/16 v2, 0xff

    if-le v1, v2, :cond_0

    const/4 v1, 0x7

    invoke-virtual {p0, v1, p2}, Lcom/dataeye/b/e;->a(BI)V

    iget-object v1, p0, Lcom/dataeye/b/e;->b:Ljava/nio/ByteBuffer;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/dataeye/b/e;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    invoke-virtual {p0, v1, p2}, Lcom/dataeye/b/e;->a(BI)V

    iget-object v1, p0, Lcom/dataeye/b/e;->b:Ljava/nio/ByteBuffer;

    array-length v2, v0

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/dataeye/b/e;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1
.end method

.method public a(Ljava/util/Collection;I)V
    .locals 3

    const/4 v1, 0x0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/dataeye/b/e;->a(I)V

    const/16 v0, 0x9

    invoke-virtual {p0, v0, p2}, Lcom/dataeye/b/e;->a(BI)V

    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/dataeye/b/e;->a(II)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/dataeye/b/e;->a(Ljava/lang/Object;I)V

    goto :goto_1
.end method

.method public a(Ljava/util/Map;I)V
    .locals 4

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0}, Lcom/dataeye/b/e;->a(I)V

    invoke-virtual {p0, v0, p2}, Lcom/dataeye/b/e;->a(BI)V

    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/dataeye/b/e;->a(II)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/dataeye/b/e;->a(Ljava/lang/Object;I)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/dataeye/b/e;->a(Ljava/lang/Object;I)V

    goto :goto_1
.end method

.method public a(SI)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/dataeye/b/e;->a(I)V

    const/16 v0, -0x80

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    int-to-byte v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/dataeye/b/e;->b(BI)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/dataeye/b/e;->a(BI)V

    iget-object v0, p0, Lcom/dataeye/b/e;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public a(ZI)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v0, p2}, Lcom/dataeye/b/e;->b(BI)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a([BI)V
    .locals 2

    const/4 v1, 0x0

    array-length v0, p1

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lcom/dataeye/b/e;->a(I)V

    const/16 v0, 0xd

    invoke-virtual {p0, v0, p2}, Lcom/dataeye/b/e;->a(BI)V

    invoke-virtual {p0, v1, v1}, Lcom/dataeye/b/e;->a(BI)V

    array-length v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/dataeye/b/e;->a(II)V

    iget-object v0, p0, Lcom/dataeye/b/e;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public a([DI)V
    .locals 5

    const/4 v1, 0x0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/dataeye/b/e;->a(I)V

    const/16 v0, 0x9

    invoke-virtual {p0, v0, p2}, Lcom/dataeye/b/e;->a(BI)V

    array-length v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/dataeye/b/e;->a(II)V

    array-length v2, p1

    move v0, v1

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-wide v3, p1, v0

    invoke-virtual {p0, v3, v4, v1}, Lcom/dataeye/b/e;->a(DI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a([FI)V
    .locals 4

    const/4 v1, 0x0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/dataeye/b/e;->a(I)V

    const/16 v0, 0x9

    invoke-virtual {p0, v0, p2}, Lcom/dataeye/b/e;->a(BI)V

    array-length v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/dataeye/b/e;->a(II)V

    array-length v2, p1

    move v0, v1

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget v3, p1, v0

    invoke-virtual {p0, v3, v1}, Lcom/dataeye/b/e;->a(FI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a([II)V
    .locals 4

    const/4 v1, 0x0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/dataeye/b/e;->a(I)V

    const/16 v0, 0x9

    invoke-virtual {p0, v0, p2}, Lcom/dataeye/b/e;->a(BI)V

    array-length v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/dataeye/b/e;->a(II)V

    array-length v2, p1

    move v0, v1

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget v3, p1, v0

    invoke-virtual {p0, v3, v1}, Lcom/dataeye/b/e;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a([JI)V
    .locals 5

    const/4 v1, 0x0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/dataeye/b/e;->a(I)V

    const/16 v0, 0x9

    invoke-virtual {p0, v0, p2}, Lcom/dataeye/b/e;->a(BI)V

    array-length v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/dataeye/b/e;->a(II)V

    array-length v2, p1

    move v0, v1

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-wide v3, p1, v0

    invoke-virtual {p0, v3, v4, v1}, Lcom/dataeye/b/e;->a(JI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a([SI)V
    .locals 4

    const/4 v1, 0x0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/dataeye/b/e;->a(I)V

    const/16 v0, 0x9

    invoke-virtual {p0, v0, p2}, Lcom/dataeye/b/e;->a(BI)V

    array-length v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/dataeye/b/e;->a(II)V

    array-length v2, p1

    move v0, v1

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-short v3, p1, v0

    invoke-virtual {p0, v3, v1}, Lcom/dataeye/b/e;->a(SI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a([ZI)V
    .locals 4

    const/4 v1, 0x0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/dataeye/b/e;->a(I)V

    const/16 v0, 0x9

    invoke-virtual {p0, v0, p2}, Lcom/dataeye/b/e;->a(BI)V

    array-length v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/dataeye/b/e;->a(II)V

    array-length v2, p1

    move v0, v1

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-boolean v3, p1, v0

    invoke-virtual {p0, v3, v1}, Lcom/dataeye/b/e;->a(ZI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a()[B
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/dataeye/b/e;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/dataeye/b/e;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lcom/dataeye/b/e;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public b(BI)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/dataeye/b/e;->a(I)V

    if-nez p1, :cond_0

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p2}, Lcom/dataeye/b/e;->a(BI)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/dataeye/b/e;->a(BI)V

    iget-object v0, p0, Lcom/dataeye/b/e;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

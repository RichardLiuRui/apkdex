.class public final Lcom/dataeye/b/c;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/String;

.field private b:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/dataeye/b/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/dataeye/b/c;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/dataeye/b/c;->b:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static a(Lcom/dataeye/b/d;Ljava/nio/ByteBuffer;)I
    .locals 2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit8 v1, v0, 0xf

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/dataeye/b/d;->a:B

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/dataeye/b/d;->b:I

    iget v0, p0, Lcom/dataeye/b/d;->b:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/dataeye/b/d;->b:I

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;IZ)Ljava/util/Map;
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_1
    return-object p1

    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, p3}, Lcom/dataeye/b/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/dataeye/b/d;

    invoke-direct {v0}, Lcom/dataeye/b/d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/dataeye/b/c;->a(Lcom/dataeye/b/d;)V

    iget-byte v0, v0, Lcom/dataeye/b/d;->a:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "type mismatch."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0, v1, v1, v7}, Lcom/dataeye/b/c;->a(IIZ)I

    move-result v4

    if-gez v4, :cond_3

    new-instance v0, Lcom/dataeye/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    invoke-virtual {p0, v2, v1, v7}, Lcom/dataeye/b/c;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v3, v7, v7}, Lcom/dataeye/b/c;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-eqz p4, :cond_1

    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "require field not exist."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method private a(B)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x4

    const/4 v3, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "invalid type."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-direct {p0, v3}, Lcom/dataeye/b/c;->b(I)V

    :cond_0
    :goto_0
    :pswitch_1
    return-void

    :pswitch_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/dataeye/b/c;->b(I)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v1}, Lcom/dataeye/b/c;->b(I)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, v2}, Lcom/dataeye/b/c;->b(I)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, v1}, Lcom/dataeye/b/c;->b(I)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, v2}, Lcom/dataeye/b/c;->b(I)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/dataeye/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-gez v0, :cond_1

    add-int/lit16 v0, v0, 0x100

    :cond_1
    invoke-direct {p0, v0}, Lcom/dataeye/b/c;->b(I)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/dataeye/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dataeye/b/c;->b(I)V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0, v0, v0, v3}, Lcom/dataeye/b/c;->a(IIZ)I

    move-result v1

    :goto_1
    mul-int/lit8 v2, v1, 0x2

    if-ge v0, v2, :cond_0

    invoke-direct {p0}, Lcom/dataeye/b/c;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_a
    invoke-virtual {p0, v0, v0, v3}, Lcom/dataeye/b/c;->a(IIZ)I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/dataeye/b/c;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_b
    new-instance v1, Lcom/dataeye/b/d;

    invoke-direct {v1}, Lcom/dataeye/b/d;-><init>()V

    invoke-virtual {p0, v1}, Lcom/dataeye/b/c;->a(Lcom/dataeye/b/d;)V

    iget-byte v2, v1, Lcom/dataeye/b/d;->a:B

    if-eqz v2, :cond_2

    new-instance v0, Lcom/dataeye/b/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "skipField with invalid type, type value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v1, v1, Lcom/dataeye/b/d;->a:B

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0, v0, v0, v3}, Lcom/dataeye/b/c;->a(IIZ)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dataeye/b/c;->b(I)V

    goto :goto_0

    :pswitch_c
    invoke-virtual {p0}, Lcom/dataeye/b/c;->a()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_1
        :pswitch_1
        :pswitch_b
    .end packed-switch
.end method

.method private b(Lcom/dataeye/b/d;)I
    .locals 1

    iget-object v0, p0, Lcom/dataeye/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/dataeye/b/c;->a(Lcom/dataeye/b/d;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method private b()V
    .locals 1

    new-instance v0, Lcom/dataeye/b/d;

    invoke-direct {v0}, Lcom/dataeye/b/d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/dataeye/b/c;->a(Lcom/dataeye/b/d;)V

    iget-byte v0, v0, Lcom/dataeye/b/d;->a:B

    invoke-direct {p0, v0}, Lcom/dataeye/b/c;->a(B)V

    return-void
.end method

.method private b(I)V
    .locals 2

    iget-object v0, p0, Lcom/dataeye/b/c;->b:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/dataeye/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private b(Ljava/lang/Object;IZ)[Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p2}, Lcom/dataeye/b/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/dataeye/b/d;

    invoke-direct {v0}, Lcom/dataeye/b/d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/dataeye/b/c;->a(Lcom/dataeye/b/d;)V

    iget-byte v0, v0, Lcom/dataeye/b/d;->a:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "type mismatch."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0, v2, v2, v5}, Lcom/dataeye/b/c;->a(IIZ)I

    move-result v3

    if-gez v3, :cond_0

    new-instance v0, Lcom/dataeye/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    move v1, v2

    :goto_0
    if-lt v1, v3, :cond_1

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p0, p1, v2, v5}, Lcom/dataeye/b/c;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "require field not exist."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(BIZ)B
    .locals 2

    invoke-virtual {p0, p2}, Lcom/dataeye/b/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/dataeye/b/d;

    invoke-direct {v0}, Lcom/dataeye/b/d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/dataeye/b/c;->a(Lcom/dataeye/b/d;)V

    iget-byte v0, v0, Lcom/dataeye/b/d;->a:B

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "type mismatch."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/4 p1, 0x0

    :cond_0
    :goto_0
    return p1

    :sswitch_1
    iget-object v0, p0, Lcom/dataeye/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_0

    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "require field not exist."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public a(DIZ)D
    .locals 2

    invoke-virtual {p0, p3}, Lcom/dataeye/b/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/dataeye/b/d;

    invoke-direct {v0}, Lcom/dataeye/b/d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/dataeye/b/c;->a(Lcom/dataeye/b/d;)V

    iget-byte v0, v0, Lcom/dataeye/b/d;->a:B

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "type mismatch."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const-wide/16 p1, 0x0

    :cond_0
    :goto_0
    return-wide p1

    :sswitch_1
    iget-object v0, p0, Lcom/dataeye/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    float-to-double p1, v0

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/dataeye/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide p1

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_0

    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "require field not exist."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public a(FIZ)F
    .locals 2

    invoke-virtual {p0, p2}, Lcom/dataeye/b/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/dataeye/b/d;

    invoke-direct {v0}, Lcom/dataeye/b/d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/dataeye/b/c;->a(Lcom/dataeye/b/d;)V

    iget-byte v0, v0, Lcom/dataeye/b/d;->a:B

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "type mismatch."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/4 p1, 0x0

    :cond_0
    :goto_0
    return p1

    :sswitch_1
    iget-object v0, p0, Lcom/dataeye/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_0

    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "require field not exist."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public a(IIZ)I
    .locals 2

    invoke-virtual {p0, p2}, Lcom/dataeye/b/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/dataeye/b/d;

    invoke-direct {v0}, Lcom/dataeye/b/d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/dataeye/b/c;->a(Lcom/dataeye/b/d;)V

    iget-byte v0, v0, Lcom/dataeye/b/d;->a:B

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "type mismatch."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/4 p1, 0x0

    :cond_0
    :goto_0
    return p1

    :sswitch_1
    iget-object v0, p0, Lcom/dataeye/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/dataeye/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/dataeye/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_0

    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "require field not exist."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public a(JIZ)J
    .locals 2

    invoke-virtual {p0, p3}, Lcom/dataeye/b/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/dataeye/b/d;

    invoke-direct {v0}, Lcom/dataeye/b/d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/dataeye/b/c;->a(Lcom/dataeye/b/d;)V

    iget-byte v0, v0, Lcom/dataeye/b/d;->a:B

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "type mismatch."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const-wide/16 p1, 0x0

    :cond_0
    :goto_0
    return-wide p1

    :sswitch_1
    iget-object v0, p0, Lcom/dataeye/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    int-to-long p1, v0

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/dataeye/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    int-to-long p1, v0

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/dataeye/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long p1, v0

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/dataeye/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p1

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_0

    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "require field not exist."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Lcom/dataeye/b/f;IZ)Lcom/dataeye/b/f;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p2}, Lcom/dataeye/b/c;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dataeye/b/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lcom/dataeye/b/d;

    invoke-direct {v1}, Lcom/dataeye/b/d;-><init>()V

    invoke-virtual {p0, v1}, Lcom/dataeye/b/c;->a(Lcom/dataeye/b/d;)V

    iget-byte v1, v1, Lcom/dataeye/b/d;->a:B

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "type mismatch."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/dataeye/b/b;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {v0, p0}, Lcom/dataeye/b/f;->a(Lcom/dataeye/b/c;)V

    invoke-virtual {p0}, Lcom/dataeye/b/c;->a()V

    :cond_1
    return-object v0

    :cond_2
    if-eqz p3, :cond_1

    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "require field not exist."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/Object;IZ)Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, p2, p3}, Lcom/dataeye/b/c;->a(BIZ)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2, p2, p3}, Lcom/dataeye/b/c;->a(ZIZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2, p2, p3}, Lcom/dataeye/b/c;->a(SIZ)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2, p2, p3}, Lcom/dataeye/b/c;->a(IIZ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/dataeye/b/c;->a(JIZ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_4
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, p3}, Lcom/dataeye/b/c;->a(FIZ)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_5
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_6

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/dataeye/b/c;->a(DIZ)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_6
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {p0, p2, p3}, Lcom/dataeye/b/c;->a(IZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_8

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dataeye/b/c;->a(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0

    :cond_8
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_9

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dataeye/b/c;->a(Ljava/util/List;IZ)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_9
    instance-of v0, p1, Lcom/dataeye/b/f;

    if-eqz v0, :cond_a

    check-cast p1, Lcom/dataeye/b/f;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dataeye/b/c;->a(Lcom/dataeye/b/f;IZ)Lcom/dataeye/b/f;

    move-result-object v0

    goto :goto_0

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_13

    instance-of v0, p1, [B

    if-nez v0, :cond_b

    instance-of v0, p1, [Ljava/lang/Byte;

    if-eqz v0, :cond_c

    :cond_b
    invoke-virtual {p0, v1, p2, p3}, Lcom/dataeye/b/c;->a([BIZ)[B

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    instance-of v0, p1, [Z

    if-eqz v0, :cond_d

    invoke-virtual {p0, v1, p2, p3}, Lcom/dataeye/b/c;->a([ZIZ)[Z

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    instance-of v0, p1, [S

    if-eqz v0, :cond_e

    invoke-virtual {p0, v1, p2, p3}, Lcom/dataeye/b/c;->a([SIZ)[S

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    instance-of v0, p1, [I

    if-eqz v0, :cond_f

    invoke-virtual {p0, v1, p2, p3}, Lcom/dataeye/b/c;->a([IIZ)[I

    move-result-object v0

    goto/16 :goto_0

    :cond_f
    instance-of v0, p1, [J

    if-eqz v0, :cond_10

    invoke-virtual {p0, v1, p2, p3}, Lcom/dataeye/b/c;->a([JIZ)[J

    move-result-object v0

    goto/16 :goto_0

    :cond_10
    instance-of v0, p1, [F

    if-eqz v0, :cond_11

    invoke-virtual {p0, v1, p2, p3}, Lcom/dataeye/b/c;->a([FIZ)[F

    move-result-object v0

    goto/16 :goto_0

    :cond_11
    instance-of v0, p1, [D

    if-eqz v0, :cond_12

    invoke-virtual {p0, v1, p2, p3}, Lcom/dataeye/b/c;->a([DIZ)[D

    move-result-object v0

    goto/16 :goto_0

    :cond_12
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dataeye/b/c;->a([Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_13
    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "read object error: unsupport type."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(IZ)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/dataeye/b/c;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lcom/dataeye/b/d;

    invoke-direct {v0}, Lcom/dataeye/b/d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/dataeye/b/c;->a(Lcom/dataeye/b/d;)V

    iget-byte v0, v0, Lcom/dataeye/b/d;->a:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "type mismatch."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/dataeye/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-gez v0, :cond_0

    add-int/lit16 v0, v0, 0x100

    :cond_0
    new-array v1, v0, [B

    iget-object v0, p0, Lcom/dataeye/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/dataeye/b/c;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/dataeye/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    const/high16 v1, 0x6400000

    if-gt v0, v1, :cond_2

    if-gez v0, :cond_3

    :cond_2
    new-instance v1, Lcom/dataeye/b/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "String too long: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-array v1, v0, [B

    iget-object v0, p0, Lcom/dataeye/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :try_start_1
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/dataeye/b/c;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_1

    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "require field not exist."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0, p2}, Lcom/dataeye/b/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/dataeye/b/d;

    invoke-direct {v0}, Lcom/dataeye/b/d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/dataeye/b/c;->a(Lcom/dataeye/b/d;)V

    iget-byte v0, v0, Lcom/dataeye/b/d;->a:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "type mismatch."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/dataeye/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-gez v0, :cond_0

    add-int/lit16 v0, v0, 0x100

    :cond_0
    new-array v0, v0, [B

    iget-object v1, p0, Lcom/dataeye/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :try_start_0
    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/dataeye/b/c;->a:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object p1

    :catch_0
    move-exception v1

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/dataeye/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    const/high16 v1, 0x6400000

    if-gt v0, v1, :cond_2

    if-gez v0, :cond_3

    :cond_2
    new-instance v1, Lcom/dataeye/b/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "String too long: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-array v0, v0, [B

    iget-object v1, p0, Lcom/dataeye/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :try_start_1
    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/dataeye/b/c;->a:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_1

    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "require field not exist."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/util/Map;IZ)Ljava/util/HashMap;
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/dataeye/b/c;->a(Ljava/util/Map;Ljava/util/Map;IZ)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public a(Ljava/util/List;IZ)Ljava/util/List;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lcom/dataeye/b/c;->b(Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    array-length v3, v2

    if-lt v0, v3, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a(SIZ)S
    .locals 2

    invoke-virtual {p0, p2}, Lcom/dataeye/b/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/dataeye/b/d;

    invoke-direct {v0}, Lcom/dataeye/b/d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/dataeye/b/c;->a(Lcom/dataeye/b/d;)V

    iget-byte v0, v0, Lcom/dataeye/b/d;->a:B

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "type mismatch."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/4 p1, 0x0

    :cond_0
    :goto_0
    return p1

    :sswitch_1
    iget-object v0, p0, Lcom/dataeye/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    int-to-short p1, v0

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/dataeye/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_0

    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "require field not exist."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public a()V
    .locals 3

    new-instance v0, Lcom/dataeye/b/d;

    invoke-direct {v0}, Lcom/dataeye/b/d;-><init>()V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/dataeye/b/c;->a(Lcom/dataeye/b/d;)V

    iget-byte v1, v0, Lcom/dataeye/b/d;->a:B

    invoke-direct {p0, v1}, Lcom/dataeye/b/c;->a(B)V

    iget-byte v1, v0, Lcom/dataeye/b/d;->a:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    return-void
.end method

.method public a(Lcom/dataeye/b/d;)V
    .locals 1

    iget-object v0, p0, Lcom/dataeye/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lcom/dataeye/b/c;->a(Lcom/dataeye/b/d;Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public a(I)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/dataeye/b/d;

    invoke-direct {v1}, Lcom/dataeye/b/d;-><init>()V

    :goto_0
    invoke-direct {p0, v1}, Lcom/dataeye/b/c;->b(Lcom/dataeye/b/d;)I

    move-result v2

    iget-byte v3, v1, Lcom/dataeye/b/d;->a:B

    const/16 v4, 0xb

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    iget v3, v1, Lcom/dataeye/b/d;->b:I

    if-gt p1, v3, :cond_2

    iget v1, v1, Lcom/dataeye/b/d;->b:I

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, v2}, Lcom/dataeye/b/c;->b(I)V

    iget-byte v2, v1, Lcom/dataeye/b/d;->a:B

    invoke-direct {p0, v2}, Lcom/dataeye/b/c;->a(B)V
    :try_end_0
    .catch Lcom/dataeye/b/b; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public a(ZIZ)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, p3}, Lcom/dataeye/b/c;->a(BIZ)B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public a([BIZ)[B
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p2}, Lcom/dataeye/b/c;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lcom/dataeye/b/d;

    invoke-direct {v0}, Lcom/dataeye/b/d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/dataeye/b/c;->a(Lcom/dataeye/b/d;)V

    iget-byte v1, v0, Lcom/dataeye/b/d;->a:B

    sparse-switch v1, :sswitch_data_0

    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "type mismatch."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    new-instance v1, Lcom/dataeye/b/d;

    invoke-direct {v1}, Lcom/dataeye/b/d;-><init>()V

    invoke-virtual {p0, v1}, Lcom/dataeye/b/c;->a(Lcom/dataeye/b/d;)V

    iget-byte v3, v1, Lcom/dataeye/b/d;->a:B

    if-eqz v3, :cond_0

    new-instance v2, Lcom/dataeye/b/b;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "type mismatch, tag: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v0, v0, Lcom/dataeye/b/d;->a:B

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, v1, Lcom/dataeye/b/d;->a:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0, v2, v2, v5}, Lcom/dataeye/b/c;->a(IIZ)I

    move-result v2

    if-gez v2, :cond_1

    new-instance v3, Lcom/dataeye/b/b;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "invalid size, tag: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-byte v0, v0, Lcom/dataeye/b/d;->a:B

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, v1, Lcom/dataeye/b/d;->a:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-array v0, v2, [B

    iget-object v1, p0, Lcom/dataeye/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :cond_2
    return-object v0

    :sswitch_1
    invoke-virtual {p0, v2, v2, v5}, Lcom/dataeye/b/c;->a(IIZ)I

    move-result v3

    if-gez v3, :cond_3

    new-instance v0, Lcom/dataeye/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-array v0, v3, [B

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-byte v4, v0, v2

    invoke-virtual {p0, v4, v2, v5}, Lcom/dataeye/b/c;->a(BIZ)B

    move-result v4

    aput-byte v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_2

    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "require field not exist."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public a([DIZ)[D
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p2}, Lcom/dataeye/b/c;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/dataeye/b/d;

    invoke-direct {v0}, Lcom/dataeye/b/d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/dataeye/b/c;->a(Lcom/dataeye/b/d;)V

    iget-byte v0, v0, Lcom/dataeye/b/d;->a:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "type mismatch."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0, v2, v2, v6}, Lcom/dataeye/b/c;->a(IIZ)I

    move-result v3

    if-gez v3, :cond_0

    new-instance v0, Lcom/dataeye/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v0, v3, [D

    move v1, v2

    :goto_0
    if-lt v1, v3, :cond_2

    :cond_1
    return-object v0

    :cond_2
    aget-wide v4, v0, v2

    invoke-virtual {p0, v4, v5, v2, v6}, Lcom/dataeye/b/c;->a(DIZ)D

    move-result-wide v4

    aput-wide v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_1

    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "require field not exist."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public a([FIZ)[F
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p2}, Lcom/dataeye/b/c;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/dataeye/b/d;

    invoke-direct {v0}, Lcom/dataeye/b/d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/dataeye/b/c;->a(Lcom/dataeye/b/d;)V

    iget-byte v0, v0, Lcom/dataeye/b/d;->a:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "type mismatch."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0, v2, v2, v5}, Lcom/dataeye/b/c;->a(IIZ)I

    move-result v3

    if-gez v3, :cond_0

    new-instance v0, Lcom/dataeye/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v0, v3, [F

    move v1, v2

    :goto_0
    if-lt v1, v3, :cond_2

    :cond_1
    return-object v0

    :cond_2
    aget v4, v0, v2

    invoke-virtual {p0, v4, v2, v5}, Lcom/dataeye/b/c;->a(FIZ)F

    move-result v4

    aput v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_1

    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "require field not exist."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public a([IIZ)[I
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p2}, Lcom/dataeye/b/c;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/dataeye/b/d;

    invoke-direct {v0}, Lcom/dataeye/b/d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/dataeye/b/c;->a(Lcom/dataeye/b/d;)V

    iget-byte v0, v0, Lcom/dataeye/b/d;->a:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "type mismatch."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0, v2, v2, v5}, Lcom/dataeye/b/c;->a(IIZ)I

    move-result v3

    if-gez v3, :cond_0

    new-instance v0, Lcom/dataeye/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v0, v3, [I

    move v1, v2

    :goto_0
    if-lt v1, v3, :cond_2

    :cond_1
    return-object v0

    :cond_2
    aget v4, v0, v2

    invoke-virtual {p0, v4, v2, v5}, Lcom/dataeye/b/c;->a(IIZ)I

    move-result v4

    aput v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_1

    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "require field not exist."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public a([JIZ)[J
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p2}, Lcom/dataeye/b/c;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/dataeye/b/d;

    invoke-direct {v0}, Lcom/dataeye/b/d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/dataeye/b/c;->a(Lcom/dataeye/b/d;)V

    iget-byte v0, v0, Lcom/dataeye/b/d;->a:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "type mismatch."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0, v2, v2, v6}, Lcom/dataeye/b/c;->a(IIZ)I

    move-result v3

    if-gez v3, :cond_0

    new-instance v0, Lcom/dataeye/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v0, v3, [J

    move v1, v2

    :goto_0
    if-lt v1, v3, :cond_2

    :cond_1
    return-object v0

    :cond_2
    aget-wide v4, v0, v2

    invoke-virtual {p0, v4, v5, v2, v6}, Lcom/dataeye/b/c;->a(JIZ)J

    move-result-wide v4

    aput-wide v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_1

    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "require field not exist."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public a([Ljava/lang/Object;IZ)[Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "unable to get type of key and value."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0, p2, p3}, Lcom/dataeye/b/c;->b(Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a([SIZ)[S
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p2}, Lcom/dataeye/b/c;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/dataeye/b/d;

    invoke-direct {v0}, Lcom/dataeye/b/d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/dataeye/b/c;->a(Lcom/dataeye/b/d;)V

    iget-byte v0, v0, Lcom/dataeye/b/d;->a:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "type mismatch."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0, v2, v2, v5}, Lcom/dataeye/b/c;->a(IIZ)I

    move-result v3

    if-gez v3, :cond_0

    new-instance v0, Lcom/dataeye/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v0, v3, [S

    move v1, v2

    :goto_0
    if-lt v1, v3, :cond_2

    :cond_1
    return-object v0

    :cond_2
    aget-short v4, v0, v2

    invoke-virtual {p0, v4, v2, v5}, Lcom/dataeye/b/c;->a(SIZ)S

    move-result v4

    aput-short v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_1

    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "require field not exist."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public a([ZIZ)[Z
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p2}, Lcom/dataeye/b/c;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/dataeye/b/d;

    invoke-direct {v0}, Lcom/dataeye/b/d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/dataeye/b/c;->a(Lcom/dataeye/b/d;)V

    iget-byte v0, v0, Lcom/dataeye/b/d;->a:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "type mismatch."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0, v2, v2, v5}, Lcom/dataeye/b/c;->a(IIZ)I

    move-result v3

    if-gez v3, :cond_0

    new-instance v0, Lcom/dataeye/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v0, v3, [Z

    move v1, v2

    :goto_0
    if-lt v1, v3, :cond_2

    :cond_1
    return-object v0

    :cond_2
    aget-boolean v4, v0, v2

    invoke-virtual {p0, v4, v2, v5}, Lcom/dataeye/b/c;->a(ZIZ)Z

    move-result v4

    aput-boolean v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_1

    new-instance v0, Lcom/dataeye/b/b;

    const-string v1, "require field not exist."

    invoke-direct {v0, v1}, Lcom/dataeye/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

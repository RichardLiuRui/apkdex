.class public Lcom/zp/rp/RequestConnect;
.super Ljava/lang/Object;
.source "RequestConnect.java"


# instance fields
.field private address:Ljava/net/InetAddress;

.field private final host:Ljava/lang/String;

.field private final keepAlive:Z

.field private final oobInline:Z

.field private final port:I

.field private final receiveBufferSize:I

.field private final reuseAddress:Z

.field private final sendBufferSize:I

.field private final tcpNoDelay:Z

.field private final timeout:I

.field private final trafficClass:I


# direct methods
.method private constructor <init>(Ljava/lang/String;IIZZIZIZI)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timeout"    # I
    .param p4, "keepAlive"    # Z
    .param p5, "oobInline"    # Z
    .param p6, "receiveBufferSize"    # I
    .param p7, "reuseAddress"    # Z
    .param p8, "sendBufferSize"    # I
    .param p9, "tcpNoDelay"    # Z
    .param p10, "trafficClass"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/zp/rp/RequestConnect;->host:Ljava/lang/String;

    .line 34
    iput p2, p0, Lcom/zp/rp/RequestConnect;->port:I

    .line 35
    iput p3, p0, Lcom/zp/rp/RequestConnect;->timeout:I

    .line 36
    iput-boolean p4, p0, Lcom/zp/rp/RequestConnect;->keepAlive:Z

    .line 37
    iput-boolean p5, p0, Lcom/zp/rp/RequestConnect;->oobInline:Z

    .line 38
    iput p6, p0, Lcom/zp/rp/RequestConnect;->receiveBufferSize:I

    .line 39
    iput-boolean p7, p0, Lcom/zp/rp/RequestConnect;->reuseAddress:Z

    .line 40
    iput p8, p0, Lcom/zp/rp/RequestConnect;->sendBufferSize:I

    .line 41
    iput-boolean p9, p0, Lcom/zp/rp/RequestConnect;->tcpNoDelay:Z

    .line 42
    iput p10, p0, Lcom/zp/rp/RequestConnect;->trafficClass:I

    .line 43
    return-void
.end method

.method public static parseRequestConnect(Ljava/nio/ByteBuffer;)Lcom/zp/rp/RequestConnect;
    .locals 14
    .param p0, "in"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 48
    new-instance v0, Lcom/zp/rp/RequestConnect;

    invoke-static {p0}, Lcom/zp/rp/ReverseProxy;->readUTF(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    if-ne v4, v9, :cond_1

    move v4, v9

    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    if-ne v5, v9, :cond_2

    move v5, v9

    :goto_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    if-ne v7, v9, :cond_3

    move v7, v9

    :goto_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    if-ne v13, v9, :cond_4

    :goto_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    and-int/lit16 v10, v10, 0xff

    invoke-direct/range {v0 .. v10}, Lcom/zp/rp/RequestConnect;-><init>(Ljava/lang/String;IIZZIZIZI)V

    .line 50
    .local v0, "connect":Lcom/zp/rp/RequestConnect;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v12, v1, 0xff

    .local v12, "size":I
    if-lez v12, :cond_0

    .line 52
    new-array v11, v12, [B

    .line 53
    .local v11, "address":[B
    invoke-virtual {p0, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 54
    invoke-static {v11}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, v0, Lcom/zp/rp/RequestConnect;->address:Ljava/net/InetAddress;

    .line 56
    .end local v11    # "address":[B
    .end local v12    # "size":I
    :cond_0
    return-object v0

    .end local v0    # "connect":Lcom/zp/rp/RequestConnect;
    :cond_1
    move v4, v10

    .line 48
    goto :goto_0

    :cond_2
    move v5, v10

    goto :goto_1

    :cond_3
    move v7, v10

    goto :goto_2

    :cond_4
    move v9, v10

    goto :goto_3
.end method


# virtual methods
.method public createInetSocketAddress()Ljava/net/InetSocketAddress;
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zp/rp/RequestConnect;->address:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/zp/rp/RequestConnect;->address:Ljava/net/InetAddress;

    iget v2, p0, Lcom/zp/rp/RequestConnect;->port:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 64
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/zp/rp/RequestConnect;->host:Ljava/lang/String;

    iget v2, p0, Lcom/zp/rp/RequestConnect;->port:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public getReceiveBufferSize()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/zp/rp/RequestConnect;->receiveBufferSize:I

    return v0
.end method

.method public getSendBufferSize()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/zp/rp/RequestConnect;->sendBufferSize:I

    return v0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/zp/rp/RequestConnect;->timeout:I

    return v0
.end method

.method public getTrafficClass()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/zp/rp/RequestConnect;->trafficClass:I

    return v0
.end method

.method public isKeepAlive()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/zp/rp/RequestConnect;->keepAlive:Z

    return v0
.end method

.method public isOobInline()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/zp/rp/RequestConnect;->oobInline:Z

    return v0
.end method

.method public isReuseAddress()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/zp/rp/RequestConnect;->reuseAddress:Z

    return v0
.end method

.method public isTcpNoDelay()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/zp/rp/RequestConnect;->tcpNoDelay:Z

    return v0
.end method

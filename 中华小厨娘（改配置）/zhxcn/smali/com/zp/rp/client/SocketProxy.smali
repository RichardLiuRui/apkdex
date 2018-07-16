.class Lcom/zp/rp/client/SocketProxy;
.super Ljava/lang/Object;
.source "SocketProxy.java"

# interfaces
.implements Lcom/zp/rp/client/SocketSession;


# instance fields
.field private final client:Lcom/zp/rp/client/DefaultReverseProxyClient;

.field private final connect:Lcom/zp/rp/RequestConnect;

.field private exception:Ljava/lang/Throwable;

.field private final selector:Ljava/nio/channels/Selector;

.field session:Ljava/nio/channels/SocketChannel;

.field private final socket:I


# direct methods
.method public constructor <init>(ILcom/zp/rp/RequestConnect;Lcom/zp/rp/client/DefaultReverseProxyClient;Ljava/nio/channels/Selector;)V
    .locals 0
    .param p1, "socket"    # I
    .param p2, "connect"    # Lcom/zp/rp/RequestConnect;
    .param p3, "client"    # Lcom/zp/rp/client/DefaultReverseProxyClient;
    .param p4, "selector"    # Ljava/nio/channels/Selector;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/zp/rp/client/SocketProxy;->socket:I

    .line 32
    iput-object p2, p0, Lcom/zp/rp/client/SocketProxy;->connect:Lcom/zp/rp/RequestConnect;

    .line 33
    iput-object p3, p0, Lcom/zp/rp/client/SocketProxy;->client:Lcom/zp/rp/client/DefaultReverseProxyClient;

    .line 34
    iput-object p4, p0, Lcom/zp/rp/client/SocketProxy;->selector:Ljava/nio/channels/Selector;

    .line 35
    return-void
.end method

.method private messageReceived(Ljava/nio/channels/SocketChannel;Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "session"    # Ljava/nio/channels/SocketChannel;
    .param p2, "packet"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 108
    :try_start_0
    iget-object v2, p0, Lcom/zp/rp/client/SocketProxy;->client:Lcom/zp/rp/client/DefaultReverseProxyClient;

    iget-object v0, v2, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    .line 109
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 110
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 111
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 112
    iget v2, p0, Lcom/zp/rp/client/SocketProxy;->socket:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 113
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 114
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 115
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 116
    iget-object v2, p0, Lcom/zp/rp/client/SocketProxy;->client:Lcom/zp/rp/client/DefaultReverseProxyClient;

    invoke-virtual {v2, v0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->sendResponse(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {p0, p1, v1}, Lcom/zp/rp/client/SocketProxy;->exceptionCaught(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;)V

    .line 120
    invoke-virtual {p0}, Lcom/zp/rp/client/SocketProxy;->close()V

    goto :goto_0
.end method

.method private sessionOpened(Ljava/nio/channels/SocketChannel;)V
    .locals 1
    .param p1, "session"    # Ljava/nio/channels/SocketChannel;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/zp/rp/client/SocketProxy;->session:Ljava/nio/channels/SocketChannel;

    if-nez v0, :cond_0

    .line 140
    iput-object p1, p0, Lcom/zp/rp/client/SocketProxy;->session:Ljava/nio/channels/SocketChannel;

    .line 142
    :cond_0
    return-void
.end method


# virtual methods
.method close()V
    .locals 5

    .prologue
    .line 165
    iget-object v2, p0, Lcom/zp/rp/client/SocketProxy;->session:Ljava/nio/channels/SocketChannel;

    if-nez v2, :cond_0

    .line 180
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v2, p0, Lcom/zp/rp/client/SocketProxy;->session:Ljava/nio/channels/SocketChannel;

    iget-object v3, p0, Lcom/zp/rp/client/SocketProxy;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2, v3}, Ljava/nio/channels/SocketChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v1

    .line 170
    .local v1, "key":Ljava/nio/channels/SelectionKey;
    if-eqz v1, :cond_1

    .line 171
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 173
    :cond_1
    iget-object v2, p0, Lcom/zp/rp/client/SocketProxy;->session:Ljava/nio/channels/SocketChannel;

    invoke-static {v2}, Lcom/zp/rp/ReverseProxy;->closeQuietly(Ljava/nio/channels/Channel;)V

    .line 174
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/zp/rp/client/SocketProxy;->session:Ljava/nio/channels/SocketChannel;

    .line 176
    :try_start_0
    iget-object v2, p0, Lcom/zp/rp/client/SocketProxy;->client:Lcom/zp/rp/client/DefaultReverseProxyClient;

    iget v3, p0, Lcom/zp/rp/client/SocketProxy;->socket:I

    iget-object v4, p0, Lcom/zp/rp/client/SocketProxy;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4}, Lcom/zp/rp/client/DefaultReverseProxyClient;->notifySessionClosed(ILjava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method connect()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    const/4 v3, 0x0

    .line 77
    .local v3, "session":Ljava/nio/channels/SocketChannel;
    const/4 v2, 0x0

    .line 79
    .local v2, "key":Ljava/nio/channels/SelectionKey;
    :try_start_0
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v3

    .line 80
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 81
    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v4

    .line 83
    .local v4, "socket":Ljava/net/Socket;
    iget-object v5, p0, Lcom/zp/rp/client/SocketProxy;->connect:Lcom/zp/rp/RequestConnect;

    invoke-virtual {v5}, Lcom/zp/rp/RequestConnect;->isKeepAlive()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 84
    iget-object v5, p0, Lcom/zp/rp/client/SocketProxy;->connect:Lcom/zp/rp/RequestConnect;

    invoke-virtual {v5}, Lcom/zp/rp/RequestConnect;->getReceiveBufferSize()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 85
    iget-object v5, p0, Lcom/zp/rp/client/SocketProxy;->connect:Lcom/zp/rp/RequestConnect;

    invoke-virtual {v5}, Lcom/zp/rp/RequestConnect;->getSendBufferSize()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 86
    iget-object v5, p0, Lcom/zp/rp/client/SocketProxy;->connect:Lcom/zp/rp/RequestConnect;

    invoke-virtual {v5}, Lcom/zp/rp/RequestConnect;->isOobInline()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setOOBInline(Z)V

    .line 87
    iget-object v5, p0, Lcom/zp/rp/client/SocketProxy;->connect:Lcom/zp/rp/RequestConnect;

    invoke-virtual {v5}, Lcom/zp/rp/RequestConnect;->isReuseAddress()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 88
    iget-object v5, p0, Lcom/zp/rp/client/SocketProxy;->connect:Lcom/zp/rp/RequestConnect;

    invoke-virtual {v5}, Lcom/zp/rp/RequestConnect;->isTcpNoDelay()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 89
    iget-object v5, p0, Lcom/zp/rp/client/SocketProxy;->connect:Lcom/zp/rp/RequestConnect;

    invoke-virtual {v5}, Lcom/zp/rp/RequestConnect;->getTrafficClass()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setTrafficClass(I)V

    .line 91
    iget-object v5, p0, Lcom/zp/rp/client/SocketProxy;->selector:Ljava/nio/channels/Selector;

    const/16 v6, 0x8

    invoke-virtual {v3, v5, v6}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v2

    .line 92
    invoke-virtual {v2, p0}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v5, p0, Lcom/zp/rp/client/SocketProxy;->connect:Lcom/zp/rp/RequestConnect;

    invoke-virtual {v5}, Lcom/zp/rp/RequestConnect;->createInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 94
    .local v0, "addr":Ljava/net/InetSocketAddress;
    invoke-virtual {v3, v0}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    .line 96
    invoke-direct {p0, v3}, Lcom/zp/rp/client/SocketProxy;->sessionOpened(Ljava/nio/channels/SocketChannel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    return-void

    .line 97
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    .end local v4    # "socket":Ljava/net/Socket;
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/io/IOException;
    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 101
    :cond_0
    invoke-static {v3}, Lcom/zp/rp/ReverseProxy;->closeQuietly(Ljava/nio/channels/Channel;)V

    .line 102
    throw v1
.end method

.method public exceptionCaught(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "session"    # Ljava/nio/channels/SocketChannel;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 155
    sget-boolean v0, Lcom/zp/rp/ReverseProxy;->debug:Z

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 159
    :cond_0
    iput-object p2, p0, Lcom/zp/rp/client/SocketProxy;->exception:Ljava/lang/Throwable;

    .line 160
    return-void
.end method

.method public getSocket()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/zp/rp/client/SocketProxy;->socket:I

    return v0
.end method

.method public processConnect(Ljava/nio/channels/SocketChannel;)V
    .locals 6
    .param p1, "session"    # Ljava/nio/channels/SocketChannel;

    .prologue
    .line 49
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    .line 50
    iget-object v4, p0, Lcom/zp/rp/client/SocketProxy;->selector:Ljava/nio/channels/Selector;

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    .line 53
    .local v3, "socket":Ljava/net/Socket;
    iget-object v4, p0, Lcom/zp/rp/client/SocketProxy;->client:Lcom/zp/rp/client/DefaultReverseProxyClient;

    iget-object v1, v4, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    .line 54
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 55
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 56
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 57
    iget v4, p0, Lcom/zp/rp/client/SocketProxy;->socket:I

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 58
    invoke-virtual {v3}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 59
    .local v0, "addrData":[B
    array-length v4, v0

    int-to-byte v4, v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 60
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 61
    invoke-virtual {v3}, Ljava/net/Socket;->getLocalPort()I

    move-result v4

    int-to-short v4, v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 62
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 63
    iget-object v4, p0, Lcom/zp/rp/client/SocketProxy;->client:Lcom/zp/rp/client/DefaultReverseProxyClient;

    invoke-virtual {v4, v1}, Lcom/zp/rp/client/DefaultReverseProxyClient;->sendResponse(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v0    # "addrData":[B
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v3    # "socket":Ljava/net/Socket;
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v2

    .line 65
    .local v2, "e":Ljava/io/IOException;
    sget-boolean v4, Lcom/zp/rp/ReverseProxy;->debug:Z

    if-eqz v4, :cond_0

    .line 66
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 69
    :cond_0
    iget-object v4, p0, Lcom/zp/rp/client/SocketProxy;->client:Lcom/zp/rp/client/DefaultReverseProxyClient;

    iget v5, p0, Lcom/zp/rp/client/SocketProxy;->socket:I

    invoke-virtual {v4, v5, v2}, Lcom/zp/rp/client/DefaultReverseProxyClient;->sendException(ILjava/lang/Throwable;)V

    goto :goto_0
.end method

.method public pushData(Ljava/nio/channels/SocketChannel;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "session"    # Ljava/nio/channels/SocketChannel;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    sget-boolean v0, Lcom/zp/rp/ReverseProxy;->debug:Z

    if-eqz v0, :cond_0

    .line 43
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/zp/rp/client/SocketProxy;->messageReceived(Ljava/nio/channels/SocketChannel;Ljava/nio/ByteBuffer;)V

    .line 44
    return-void
.end method

.method public sessionClosed(Ljava/nio/channels/SocketChannel;)V
    .locals 1
    .param p1, "session"    # Ljava/nio/channels/SocketChannel;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/zp/rp/client/SocketProxy;->session:Ljava/nio/channels/SocketChannel;

    if-eq v0, p1, :cond_0

    .line 151
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/zp/rp/client/SocketProxy;->close()V

    goto :goto_0
.end method

.method writeData(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 126
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/zp/rp/client/SocketProxy;->session:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1, p1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 128
    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/zp/rp/client/SocketProxy;->session:Ljava/nio/channels/SocketChannel;

    invoke-virtual {p0, v1, v0}, Lcom/zp/rp/client/SocketProxy;->exceptionCaught(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;)V

    .line 134
    invoke-virtual {p0}, Lcom/zp/rp/client/SocketProxy;->close()V

    .line 136
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    return-void
.end method

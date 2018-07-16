.class public Lcom/zp/rp/client/DefaultReverseProxyClient;
.super Ljava/lang/Object;
.source "DefaultReverseProxyClient.java"

# interfaces
.implements Lcom/zp/rp/MessageDeliver;
.implements Lcom/zp/rp/client/SocketSession;
.implements Ljava/lang/Runnable;
.implements Lzp/cn/banny/rp/client/ReverseProxyClient;


# static fields
.field private static final READ_BUFFER_SIZE:I = 0x10000


# instance fields
.field private aliveTimeMillis:I

.field private authListener:Lcom/zp/rp/client/AuthListener;

.field private authResult:Lcom/zp/rp/auth/AuthResult;

.field private canStop:Z

.field private checkNetworkChangeTime:J

.field private checkSessionTime:J

.field private dataHandler:Lcom/zp/rp/handler/ExtDataHandler;

.field private final extraData:Ljava/lang/String;

.field private final host:Ljava/lang/String;

.field private lastAliveTime:J

.field private lastCode:I

.field private lastSync:J

.field private networkDelay:I

.field private final packetBuffer:Ljava/nio/ByteBuffer;

.field private password:Ljava/lang/String;

.field private final port:I

.field private final readBuffer:Ljava/nio/ByteBuffer;

.field private reconnect:Z

.field private requestedLogin:Z

.field private selector:Ljava/nio/channels/Selector;

.field private session:Ljava/nio/channels/SocketChannel;

.field private final socketMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/zp/rp/client/SocketProxy;",
            ">;"
        }
    .end annotation
.end field

.field private username:Ljava/lang/String;

.field final writeBuffer:Ljava/nio/ByteBuffer;

.field private zipDeviceData:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zp/rp/client/DefaultReverseProxyClient;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "extraData"    # Ljava/lang/String;

    .prologue
    const/high16 v2, 0x10000

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    const/16 v0, 0x1400

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->readBuffer:Ljava/nio/ByteBuffer;

    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->reconnect:Z

    .line 518
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->socketMap:Landroid/util/SparseArray;

    .line 52
    iput-object p1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->host:Ljava/lang/String;

    .line 53
    iput p2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->port:I

    .line 54
    iput-object p3, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->extraData:Ljava/lang/String;

    .line 56
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->packetBuffer:Ljava/nio/ByteBuffer;

    .line 57
    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->packetBuffer:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 59
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    .line 60
    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 61
    return-void
.end method

.method private canConnectReverseProxyServer()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->reconnect:Z

    if-nez v0, :cond_0

    .line 230
    const/4 v0, 0x0

    .line 238
    :goto_0
    return v0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->authResult:Lcom/zp/rp/auth/AuthResult;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->requestedLogin:Z

    if-eqz v0, :cond_1

    .line 235
    const/4 v0, 0x1

    goto :goto_0

    .line 238
    :cond_1
    invoke-virtual {p0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->isAuthOK()Z

    move-result v0

    goto :goto_0
.end method

.method private checkNetworkChange(J)V
    .locals 18
    .param p1, "currentTimeMillis"    # J

    .prologue
    .line 340
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/zp/rp/client/DefaultReverseProxyClient;->checkNetworkChangeTime:J

    sub-long v14, p1, v14

    const-wide/16 v16, 0x7530

    cmp-long v14, v14, v16

    if-gez v14, :cond_0

    .line 375
    :goto_0
    return-void

    .line 343
    :cond_0
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/zp/rp/client/DefaultReverseProxyClient;->checkNetworkChangeTime:J

    .line 346
    :try_start_0
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 347
    .local v6, "buffer":Ljava/lang/StringBuffer;
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v9

    .line 348
    .local v9, "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_1
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 349
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/net/NetworkInterface;

    .line 350
    .local v11, "interface1":Ljava/net/NetworkInterface;
    invoke-virtual {v11}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    .line 351
    .local v4, "addresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 352
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 353
    .local v3, "address":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v14

    if-nez v14, :cond_2

    .line 354
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const/16 v15, 0x2c

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 372
    .end local v3    # "address":Ljava/net/InetAddress;
    .end local v4    # "addresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v6    # "buffer":Ljava/lang/StringBuffer;
    .end local v9    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v11    # "interface1":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v8

    .line 373
    .local v8, "e":Ljava/net/SocketException;
    invoke-virtual {v8}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0

    .line 358
    .end local v8    # "e":Ljava/net/SocketException;
    .restart local v6    # "buffer":Ljava/lang/StringBuffer;
    .restart local v9    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_3
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v7

    .line 359
    .local v7, "code":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastCode:I

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastCode:I

    if-ne v7, v14, :cond_5

    .line 361
    :cond_4
    move-object/from16 v0, p0

    iput v7, v0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastCode:I
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 366
    :cond_5
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->getProxies()[Lcom/zp/rp/client/SocketProxy;

    move-result-object v5

    .local v5, "arr$":[Lcom/zp/rp/client/SocketProxy;
    array-length v12, v5

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_2
    if-ge v10, v12, :cond_6

    aget-object v13, v5, v10

    .line 367
    .local v13, "proxy":Lcom/zp/rp/client/SocketProxy;
    invoke-virtual {v13}, Lcom/zp/rp/client/SocketProxy;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 366
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 370
    .end local v13    # "proxy":Lcom/zp/rp/client/SocketProxy;
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iput v7, v0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastCode:I

    goto :goto_0

    .end local v5    # "arr$":[Lcom/zp/rp/client/SocketProxy;
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    :catchall_0
    move-exception v14

    move-object/from16 v0, p0

    iput v7, v0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastCode:I

    throw v14
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method private checkSelectionKeys(Ljava/util/Iterator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "selectionKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 248
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 249
    .local v2, "key":Ljava/nio/channels/SelectionKey;
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 251
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 252
    .local v0, "channel":Ljava/nio/channels/SocketChannel;
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zp/rp/client/SocketSession;

    .line 255
    .local v3, "session":Lcom/zp/rp/client/SocketSession;
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 256
    invoke-direct {p0, v0, v3, v2}, Lcom/zp/rp/client/DefaultReverseProxyClient;->processRead(Ljava/nio/channels/SocketChannel;Lcom/zp/rp/client/SocketSession;Ljava/nio/channels/SelectionKey;)V

    .line 258
    :cond_1
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 259
    invoke-interface {v3, v0}, Lcom/zp/rp/client/SocketSession;->processConnect(Ljava/nio/channels/SocketChannel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 261
    :catch_0
    move-exception v1

    .line 262
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 263
    invoke-static {v0}, Lcom/zp/rp/ReverseProxy;->closeQuietly(Ljava/nio/channels/Channel;)V

    .line 264
    invoke-interface {v3, v0, v1}, Lcom/zp/rp/client/SocketSession;->exceptionCaught(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;)V

    .line 265
    invoke-interface {v3, v0}, Lcom/zp/rp/client/SocketSession;->sessionClosed(Ljava/nio/channels/SocketChannel;)V

    goto :goto_0

    .line 266
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 267
    .local v1, "e":Ljava/lang/Throwable;
    sget-boolean v4, Lcom/zp/rp/ReverseProxy;->debug:Z

    if-eqz v4, :cond_2

    .line 268
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 270
    :cond_2
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 271
    invoke-static {v0}, Lcom/zp/rp/ReverseProxy;->closeQuietly(Ljava/nio/channels/Channel;)V

    .line 272
    invoke-interface {v3, v0}, Lcom/zp/rp/client/SocketSession;->sessionClosed(Ljava/nio/channels/SocketChannel;)V

    goto :goto_0

    .line 275
    .end local v0    # "channel":Ljava/nio/channels/SocketChannel;
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "key":Ljava/nio/channels/SelectionKey;
    .end local v3    # "session":Lcom/zp/rp/client/SocketSession;
    :cond_3
    return-void
.end method

.method private checkSession(Ljava/nio/channels/SocketChannel;J)V
    .locals 5
    .param p1, "session"    # Ljava/nio/channels/SocketChannel;
    .param p2, "currentTimeMillis"    # J

    .prologue
    .line 380
    iget-wide v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->checkSessionTime:J

    sub-long v1, p2, v1

    const-wide/16 v3, 0x2710

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 407
    :goto_0
    return-void

    .line 383
    :cond_0
    iput-wide p2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->checkSessionTime:J

    .line 385
    iget v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->aliveTimeMillis:I

    if-lez v1, :cond_1

    iget-wide v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastAliveTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    iget-wide v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastAliveTime:J

    sub-long v1, p2, v1

    iget v3, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->aliveTimeMillis:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 389
    invoke-virtual {p0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->logout()V

    goto :goto_0

    .line 394
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 395
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 396
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 397
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->networkDelay:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 398
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 399
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastCode:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 400
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 401
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1}, Lcom/zp/rp/client/DefaultReverseProxyClient;->sendResponse(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e1":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 405
    invoke-direct {p0, p1}, Lcom/zp/rp/client/DefaultReverseProxyClient;->closeSession(Ljava/nio/channels/SocketChannel;)V

    goto :goto_0
.end method

.method private closeSession(Ljava/nio/channels/SocketChannel;)V
    .locals 2
    .param p1, "session"    # Ljava/nio/channels/SocketChannel;

    .prologue
    .line 173
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1, v1}, Ljava/nio/channels/SocketChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 174
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 177
    :cond_0
    invoke-static {p1}, Lcom/zp/rp/ReverseProxy;->closeQuietly(Ljava/nio/channels/Channel;)V

    .line 178
    invoke-virtual {p0, p1}, Lcom/zp/rp/client/DefaultReverseProxyClient;->sessionClosed(Ljava/nio/channels/SocketChannel;)V

    .line 179
    return-void
.end method

.method private connectReverseProxyServer()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 625
    const/4 v4, 0x0

    .line 626
    .local v4, "socketChannel":Ljava/nio/channels/SocketChannel;
    const/4 v2, 0x0

    .line 628
    .local v2, "key":Ljava/nio/channels/SelectionKey;
    :try_start_0
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v4

    .line 629
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 630
    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    .line 631
    .local v3, "socket":Ljava/net/Socket;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 633
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->host:Ljava/lang/String;

    iget v6, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->port:I

    invoke-direct {v0, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 634
    .local v0, "addr":Ljava/net/InetSocketAddress;
    invoke-virtual {v4, v0}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    .line 635
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 636
    iget-object v5, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->selector:Ljava/nio/channels/Selector;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v2

    .line 637
    invoke-virtual {v2, p0}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    invoke-virtual {p0, v4}, Lcom/zp/rp/client/DefaultReverseProxyClient;->sessionOpened(Ljava/nio/channels/SocketChannel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 652
    return-void

    .line 639
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    .end local v3    # "socket":Ljava/net/Socket;
    :catch_0
    move-exception v1

    .line 640
    .local v1, "e":Ljava/io/IOException;
    if-eqz v2, :cond_0

    .line 641
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 643
    :cond_0
    invoke-static {v4}, Lcom/zp/rp/ReverseProxy;->closeQuietly(Ljava/nio/channels/Channel;)V

    .line 644
    throw v1

    .line 645
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 646
    .local v1, "e":Ljava/lang/Throwable;
    if-eqz v2, :cond_1

    .line 647
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 649
    :cond_1
    invoke-static {v4}, Lcom/zp/rp/ReverseProxy;->closeQuietly(Ljava/nio/channels/Channel;)V

    .line 650
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private getProxies()[Lcom/zp/rp/client/SocketProxy;
    .locals 4

    .prologue
    .line 521
    iget-object v3, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->socketMap:Landroid/util/SparseArray;

    monitor-enter v3

    .line 522
    :try_start_0
    iget-object v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->socketMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-array v1, v2, [Lcom/zp/rp/client/SocketProxy;

    .line 523
    .local v1, "proxies":[Lcom/zp/rp/client/SocketProxy;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 524
    iget-object v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->socketMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zp/rp/client/SocketProxy;

    aput-object v2, v1, v0

    .line 523
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 526
    :cond_0
    monitor-exit v3

    return-object v1

    .line 527
    .end local v0    # "i":I
    .end local v1    # "proxies":[Lcom/zp/rp/client/SocketProxy;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private messageReceived(Ljava/nio/channels/SocketChannel;Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "session"    # Ljava/nio/channels/SocketChannel;
    .param p2, "packet"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v4, 0x1

    .line 457
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 458
    .local v0, "currentTimeMillis":J
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    packed-switch v5, :pswitch_data_0

    .line 508
    .end local v0    # "currentTimeMillis":J
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 460
    .restart local v0    # "currentTimeMillis":J
    :pswitch_1
    iput-wide v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastAliveTime:J

    .line 461
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-direct {p0, v4, p2}, Lcom/zp/rp/client/DefaultReverseProxyClient;->parseConnect(ILjava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 505
    .end local v0    # "currentTimeMillis":J
    :catch_0
    move-exception v3

    .line 506
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 464
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "currentTimeMillis":J
    :pswitch_2
    :try_start_1
    iput-wide v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastAliveTime:J

    .line 465
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-direct {p0, v4, p2}, Lcom/zp/rp/client/DefaultReverseProxyClient;->parseWriteData(ILjava/nio/ByteBuffer;)V

    goto :goto_0

    .line 468
    :pswitch_3
    iput-wide v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastAliveTime:J

    .line 469
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-direct {p0, v4, p2}, Lcom/zp/rp/client/DefaultReverseProxyClient;->parseClose(ILjava/nio/ByteBuffer;)V

    goto :goto_0

    .line 472
    :pswitch_4
    iput-wide v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastAliveTime:J

    .line 473
    invoke-static {p2}, Lcom/zp/rp/auth/AuthResult;->readAuthResult(Ljava/nio/ByteBuffer;)Lcom/zp/rp/auth/AuthResult;

    move-result-object v5

    iput-object v5, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->authResult:Lcom/zp/rp/auth/AuthResult;

    .line 474
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 475
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    if-ne v5, v4, :cond_2

    :goto_1
    iput-boolean v4, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->reconnect:Z

    .line 477
    :cond_1
    iget-object v4, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->authListener:Lcom/zp/rp/client/AuthListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->authListener:Lcom/zp/rp/client/AuthListener;

    iget-object v5, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->authResult:Lcom/zp/rp/auth/AuthResult;

    invoke-interface {v4, p0, v5}, Lcom/zp/rp/client/AuthListener;->onAuthResponse(Lzp/cn/banny/rp/client/ReverseProxyClient;Lcom/zp/rp/auth/AuthResult;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 479
    invoke-direct {p0, p1}, Lcom/zp/rp/client/DefaultReverseProxyClient;->closeSession(Ljava/nio/channels/SocketChannel;)V

    goto :goto_0

    .line 475
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 483
    :pswitch_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastSync:J

    .line 484
    iget-wide v4, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastSync:J

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->networkDelay:I

    goto :goto_0

    .line 487
    :pswitch_6
    iput-wide v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastAliveTime:J

    .line 488
    iget-object v4, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->dataHandler:Lcom/zp/rp/handler/ExtDataHandler;

    if-eqz v4, :cond_0

    .line 489
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    new-array v2, v4, [B

    .line 490
    .local v2, "data":[B
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 491
    iget-object v4, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->dataHandler:Lcom/zp/rp/handler/ExtDataHandler;

    invoke-interface {v4, v2, p0}, Lcom/zp/rp/handler/ExtDataHandler;->handle([BLcom/zp/rp/MessageDeliver;)V

    goto :goto_0

    .line 495
    .end local v2    # "data":[B
    :pswitch_7
    iput-wide v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastAliveTime:J

    .line 496
    invoke-direct {p0, p2}, Lcom/zp/rp/client/DefaultReverseProxyClient;->parseRequestForward(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 499
    :pswitch_8
    iput-wide v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastAliveTime:J

    .line 500
    invoke-direct {p0, p2}, Lcom/zp/rp/client/DefaultReverseProxyClient;->requestChangeIp(Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 458
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private parseClose(ILjava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "socket"    # I
    .param p2, "in"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 581
    iget-object v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->socketMap:Landroid/util/SparseArray;

    monitor-enter v2

    .line 582
    :try_start_0
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->socketMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zp/rp/client/SocketProxy;

    .line 583
    .local v0, "socketProxy":Lcom/zp/rp/client/SocketProxy;
    monitor-exit v2

    .line 585
    if-nez v0, :cond_0

    .line 597
    :goto_0
    return-void

    .line 583
    .end local v0    # "socketProxy":Lcom/zp/rp/client/SocketProxy;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 589
    .restart local v0    # "socketProxy":Lcom/zp/rp/client/SocketProxy;
    :cond_0
    invoke-virtual {v0}, Lcom/zp/rp/client/SocketProxy;->close()V

    .line 591
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 592
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 593
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 594
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 595
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 596
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1}, Lcom/zp/rp/client/DefaultReverseProxyClient;->sendResponse(Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method private parseConnect(ILjava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "socket"    # I
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 532
    :try_start_0
    new-instance v1, Lcom/zp/rp/client/SocketProxy;

    invoke-static {p2}, Lcom/zp/rp/RequestConnect;->parseRequestConnect(Ljava/nio/ByteBuffer;)Lcom/zp/rp/RequestConnect;

    move-result-object v2

    iget-object v3, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->selector:Ljava/nio/channels/Selector;

    invoke-direct {v1, p1, v2, p0, v3}, Lcom/zp/rp/client/SocketProxy;-><init>(ILcom/zp/rp/RequestConnect;Lcom/zp/rp/client/DefaultReverseProxyClient;Ljava/nio/channels/Selector;)V

    .line 533
    .local v1, "proxy":Lcom/zp/rp/client/SocketProxy;
    invoke-virtual {v1}, Lcom/zp/rp/client/SocketProxy;->connect()V

    .line 534
    iget-object v3, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->socketMap:Landroid/util/SparseArray;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :try_start_1
    iget-object v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->socketMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 536
    monitor-exit v3

    .line 544
    .end local v1    # "proxy":Lcom/zp/rp/client/SocketProxy;
    :goto_0
    return-void

    .line 536
    .restart local v1    # "proxy":Lcom/zp/rp/client/SocketProxy;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 537
    .end local v1    # "proxy":Lcom/zp/rp/client/SocketProxy;
    :catch_0
    move-exception v0

    .line 538
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v2, Lcom/zp/rp/ReverseProxy;->debug:Z

    if-eqz v2, :cond_0

    .line 539
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 542
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->sendException(ILjava/lang/Throwable;)V

    goto :goto_0
.end method

.method private parseRequestForward(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "in"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 514
    return-void
.end method

.method private parseWriteData(ILjava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "socket"    # I
    .param p2, "in"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 567
    iget-object v3, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->socketMap:Landroid/util/SparseArray;

    monitor-enter v3

    .line 568
    :try_start_0
    iget-object v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->socketMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zp/rp/client/SocketProxy;

    .line 569
    .local v1, "socketProxy":Lcom/zp/rp/client/SocketProxy;
    monitor-exit v3

    .line 571
    if-nez v1, :cond_0

    .line 577
    :goto_0
    return-void

    .line 569
    .end local v1    # "socketProxy":Lcom/zp/rp/client/SocketProxy;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 575
    .restart local v1    # "socketProxy":Lcom/zp/rp/client/SocketProxy;
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 576
    .local v0, "length":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-static {v2, v3, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zp/rp/client/SocketProxy;->writeData(Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method private processRead(Ljava/nio/channels/SocketChannel;Lcom/zp/rp/client/SocketSession;Ljava/nio/channels/SelectionKey;)V
    .locals 2
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "session"    # Lcom/zp/rp/client/SocketSession;
    .param p3, "key"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    :goto_0
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 311
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 312
    .local v0, "read":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 313
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 315
    :cond_0
    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 322
    return-void

    .line 319
    :cond_1
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 320
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p2, p1, v1}, Lcom/zp/rp/client/SocketSession;->pushData(Ljava/nio/channels/SocketChannel;Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method private receivedPacket(Ljava/nio/channels/SocketChannel;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "session"    # Ljava/nio/channels/SocketChannel;
    .param p2, "packet"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 325
    sget-boolean v1, Lcom/zp/rp/ReverseProxy;->debug:Z

    if-eqz v1, :cond_0

    .line 326
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 327
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [B

    .line 328
    .local v0, "data":[B
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 329
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 330
    const-string v1, "receivedPacket"

    invoke-static {v0, v1}, Lcom/zp/rp/ReverseProxy;->inspect([BLjava/lang/String;)V

    .line 333
    .end local v0    # "data":[B
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/zp/rp/client/DefaultReverseProxyClient;->messageReceived(Ljava/nio/channels/SocketChannel;Ljava/nio/ByteBuffer;)V

    .line 334
    return-void
.end method

.method private requestAuth()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 688
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 689
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 690
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 691
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->username:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/zp/rp/ReverseProxy;->writeUTF(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 692
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->password:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/zp/rp/ReverseProxy;->writeUTF(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 693
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    const v4, 0x20033

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 694
    iget-object v4, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->extraData:Ljava/lang/String;

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 695
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->extraData:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 696
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->extraData:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/zp/rp/ReverseProxy;->writeUTF(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 698
    :cond_0
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 699
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 701
    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->zipDeviceData:[B

    .line 702
    .local v0, "zipDeviceData":[B
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 703
    if-eqz v0, :cond_1

    .line 704
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 705
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 707
    :cond_1
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 708
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1}, Lcom/zp/rp/client/DefaultReverseProxyClient;->sendResponse(Ljava/nio/ByteBuffer;)V

    .line 709
    return-void

    .end local v0    # "zipDeviceData":[B
    :cond_2
    move v1, v3

    .line 694
    goto :goto_0

    .restart local v0    # "zipDeviceData":[B
    :cond_3
    move v2, v3

    .line 702
    goto :goto_1
.end method

.method private requestChangeIp(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "in"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 511
    return-void
.end method

.method private sessionIdle(Ljava/nio/channels/SocketChannel;)V
    .locals 0
    .param p1, "session"    # Ljava/nio/channels/SocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 713
    invoke-direct {p0, p1}, Lcom/zp/rp/client/DefaultReverseProxyClient;->closeSession(Ljava/nio/channels/SocketChannel;)V

    .line 714
    return-void
.end method


# virtual methods
.method public deliverMessage([B)V
    .locals 2
    .param p1, "msg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 728
    array-length v1, p1

    add-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 729
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 730
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 731
    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 732
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 733
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 734
    invoke-virtual {p0, v0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->sendResponse(Ljava/nio/ByteBuffer;)V

    .line 735
    return-void
.end method

.method public destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->canStop:Z

    .line 163
    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->selector:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->selector:Ljava/nio/channels/Selector;

    invoke-static {v0}, Lcom/zp/rp/ReverseProxy;->closeQuietly(Ljava/nio/channels/Selector;)V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->selector:Ljava/nio/channels/Selector;

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->session:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->session:Ljava/nio/channels/SocketChannel;

    invoke-direct {p0, v0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->closeSession(Ljava/nio/channels/SocketChannel;)V

    .line 170
    :cond_1
    return-void
.end method

.method public exceptionCaught(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "session"    # Ljava/nio/channels/SocketChannel;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 718
    sget-boolean v0, Lcom/zp/rp/ReverseProxy;->debug:Z

    if-eqz v0, :cond_0

    .line 719
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 721
    :cond_0
    return-void
.end method

.method public getAuthUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkDelay()I
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->networkDelay:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 744
    const v0, 0x20033

    return v0
.end method

.method public initialize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->initialize([B)V

    .line 139
    return-void
.end method

.method public initialize([B)V
    .locals 1
    .param p1, "zipDeviceData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 145
    if-eqz p1, :cond_0

    .line 146
    iput-object p1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->zipDeviceData:[B

    .line 149
    :cond_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->selector:Ljava/nio/channels/Selector;

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->canStop:Z

    .line 153
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 154
    return-void
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->socketMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAuthOK()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->username:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->password:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->authResult:Lcom/zp/rp/auth/AuthResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->authResult:Lcom/zp/rp/auth/AuthResult;

    invoke-virtual {v0}, Lcom/zp/rp/auth/AuthResult;->getStatus()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->session:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDead()Z
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->session:Ljava/nio/channels/SocketChannel;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->canConnectReverseProxyServer()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->login(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    return-void
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "aliveTimeMillis"    # I

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->authResult:Lcom/zp/rp/auth/AuthResult;

    .line 82
    iput-object p1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->username:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->password:Ljava/lang/String;

    .line 84
    iput p3, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->aliveTimeMillis:I

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->requestedLogin:Z

    .line 87
    return-void
.end method

.method public logout()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->username:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->password:Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->requestedLogin:Z

    .line 99
    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->session:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->session:Ljava/nio/channels/SocketChannel;

    invoke-direct {p0, v0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->closeSession(Ljava/nio/channels/SocketChannel;)V

    .line 102
    :cond_0
    return-void
.end method

.method notifySessionClosed(ILjava/lang/Throwable;)V
    .locals 3
    .param p1, "socket"    # I
    .param p2, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 600
    iget-object v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->socketMap:Landroid/util/SparseArray;

    monitor-enter v2

    .line 601
    :try_start_0
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->socketMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 602
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 605
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 606
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 607
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 608
    if-nez p2, :cond_2

    const/4 v0, 0x0

    .line 609
    .local v0, "msg":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 611
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 613
    :cond_0
    iget-object v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 614
    if-eqz v0, :cond_1

    .line 615
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v1, v0}, Lcom/zp/rp/ReverseProxy;->writeUTF(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 617
    :cond_1
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 618
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1}, Lcom/zp/rp/client/DefaultReverseProxyClient;->sendResponse(Ljava/nio/ByteBuffer;)V

    .line 619
    return-void

    .line 602
    .end local v0    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 608
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 613
    .restart local v0    # "msg":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public processConnect(Ljava/nio/channels/SocketChannel;)V
    .locals 2
    .param p1, "session"    # Ljava/nio/channels/SocketChannel;

    .prologue
    .line 243
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "processConnect"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pushData(Ljava/nio/channels/SocketChannel;Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "session"    # Ljava/nio/channels/SocketChannel;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    iget-object v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->packetBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 282
    :try_start_0
    iget-object v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->packetBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 284
    :goto_0
    iget-object v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->packetBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 300
    :goto_1
    iget-object v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->packetBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 302
    return-void

    .line 288
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->packetBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 289
    iget-object v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->packetBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 290
    .local v1, "packetSize":I
    iget-object v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->packetBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 291
    iget-object v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->packetBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 300
    .end local v1    # "packetSize":I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->packetBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    throw v2

    .line 295
    .restart local v1    # "packetSize":I
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->packetBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v3, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->packetBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-static {v2, v3, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 296
    .local v0, "packet":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->packetBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->packetBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 297
    invoke-direct {p0, p1, v0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->receivedPacket(Ljava/nio/channels/SocketChannel;Ljava/nio/ByteBuffer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public run()V
    .locals 11

    .prologue
    .line 183
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->canStop:Z

    if-nez v7, :cond_6

    .line 185
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 186
    .local v1, "currentTimeMillis":J
    invoke-direct {p0, v1, v2}, Lcom/zp/rp/client/DefaultReverseProxyClient;->checkNetworkChange(J)V

    .line 188
    iget-object v4, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->session:Ljava/nio/channels/SocketChannel;

    .line 189
    .local v4, "session":Ljava/nio/channels/SocketChannel;
    if-nez v4, :cond_3

    .line 190
    invoke-direct {p0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->canConnectReverseProxyServer()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 191
    invoke-direct {p0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->connectReverseProxyServer()V

    .line 193
    :cond_1
    iget-object v7, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->session:Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v7, :cond_2

    .line 194
    const-wide/16 v7, 0x3e8

    :try_start_1
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v7

    goto :goto_0

    .line 196
    :cond_2
    const-wide/16 v7, 0xc8

    :try_start_2
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_1
    move-exception v7

    goto :goto_0

    .line 201
    :cond_3
    :try_start_3
    iget-object v7, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->selector:Ljava/nio/channels/Selector;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v7, v8, v9}, Ljava/nio/channels/Selector;->select(J)I

    move-result v0

    .line 202
    .local v0, "count":I
    if-lez v0, :cond_4

    .line 203
    iget-object v7, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v7}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v5

    .line 205
    .local v5, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :try_start_4
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 206
    .local v3, "selectionKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    invoke-direct {p0, v3}, Lcom/zp/rp/client/DefaultReverseProxyClient;->checkSelectionKeys(Ljava/util/Iterator;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 208
    :try_start_5
    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 212
    .end local v3    # "selectionKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .end local v5    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 213
    invoke-direct {p0, v4, v1, v2}, Lcom/zp/rp/client/DefaultReverseProxyClient;->checkSession(Ljava/nio/channels/SocketChannel;J)V

    .line 215
    iget-wide v7, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastSync:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    iget-wide v7, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastSync:J

    sub-long v7, v1, v7

    const-wide/16 v9, 0x4e20

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 217
    invoke-direct {p0, v4}, Lcom/zp/rp/client/DefaultReverseProxyClient;->sessionIdle(Ljava/nio/channels/SocketChannel;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 219
    .end local v0    # "count":I
    .end local v1    # "currentTimeMillis":J
    .end local v4    # "session":Ljava/nio/channels/SocketChannel;
    :catch_2
    move-exception v6

    .line 220
    .local v6, "t":Ljava/lang/Throwable;
    sget-boolean v7, Lcom/zp/rp/ReverseProxy;->debug:Z

    if-eqz v7, :cond_5

    .line 221
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 223
    :cond_5
    const-wide/16 v7, 0x3e8

    :try_start_6
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    :catch_3
    move-exception v7

    goto :goto_0

    .line 208
    .end local v6    # "t":Ljava/lang/Throwable;
    .restart local v0    # "count":I
    .restart local v1    # "currentTimeMillis":J
    .restart local v4    # "session":Ljava/nio/channels/SocketChannel;
    .restart local v5    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :catchall_0
    move-exception v7

    :try_start_7
    invoke-interface {v5}, Ljava/util/Set;->clear()V

    throw v7
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    .line 226
    .end local v0    # "count":I
    .end local v1    # "currentTimeMillis":J
    .end local v4    # "session":Ljava/nio/channels/SocketChannel;
    .end local v5    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :cond_6
    return-void
.end method

.method sendException(ILjava/lang/Throwable;)V
    .locals 4
    .param p1, "socket"    # I
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 548
    :try_start_0
    iget-object v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 549
    iget-object v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 550
    iget-object v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 551
    iget-object v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 552
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, "msg":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 554
    iget-object v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v2, v1}, Lcom/zp/rp/ReverseProxy;->writeUTF(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 558
    :goto_0
    iget-object v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 559
    iget-object v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2}, Lcom/zp/rp/client/DefaultReverseProxyClient;->sendResponse(Ljava/nio/ByteBuffer;)V

    .line 563
    .end local v1    # "msg":Ljava/lang/String;
    :goto_1
    return-void

    .line 556
    .restart local v1    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zp/rp/ReverseProxy;->writeUTF(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 560
    .end local v1    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 561
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method sendResponse(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "packet"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 420
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->session:Ljava/nio/channels/SocketChannel;

    if-nez v1, :cond_0

    .line 442
    :goto_0
    return-void

    .line 424
    :cond_0
    sget-boolean v1, Lcom/zp/rp/ReverseProxy;->debug:Z

    if-eqz v1, :cond_1

    .line 425
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 426
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 427
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [B

    .line 428
    .local v0, "data":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 429
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 430
    const-string v1, "encode"

    invoke-static {v0, v1}, Lcom/zp/rp/ReverseProxy;->inspect([BLjava/lang/String;)V

    .line 433
    .end local v0    # "data":[B
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 434
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 435
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 438
    :cond_2
    iget-object v1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->session:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1, p1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    .line 439
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 441
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public sessionClosed(Ljava/nio/channels/SocketChannel;)V
    .locals 7
    .param p1, "session"    # Ljava/nio/channels/SocketChannel;

    .prologue
    .line 656
    iget-object v5, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->session:Ljava/nio/channels/SocketChannel;

    if-ne v5, p1, :cond_2

    .line 657
    iget-object v5, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1, v5}, Ljava/nio/channels/SocketChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v2

    .line 658
    .local v2, "key":Ljava/nio/channels/SelectionKey;
    if-eqz v2, :cond_0

    .line 659
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 661
    :cond_0
    invoke-static {p1}, Lcom/zp/rp/ReverseProxy;->closeQuietly(Ljava/nio/channels/Channel;)V

    .line 662
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->session:Ljava/nio/channels/SocketChannel;

    .line 664
    invoke-direct {p0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->getProxies()[Lcom/zp/rp/client/SocketProxy;

    move-result-object v0

    .local v0, "arr$":[Lcom/zp/rp/client/SocketProxy;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 665
    .local v4, "proxy":Lcom/zp/rp/client/SocketProxy;
    invoke-virtual {v4}, Lcom/zp/rp/client/SocketProxy;->close()V

    .line 664
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 668
    .end local v4    # "proxy":Lcom/zp/rp/client/SocketProxy;
    :cond_1
    iget-object v5, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->authListener:Lcom/zp/rp/client/AuthListener;

    if-eqz v5, :cond_2

    .line 669
    iget-object v5, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->authListener:Lcom/zp/rp/client/AuthListener;

    iget-object v6, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->authResult:Lcom/zp/rp/auth/AuthResult;

    invoke-interface {v5, p0, v6}, Lcom/zp/rp/client/AuthListener;->onDisconnect(Lzp/cn/banny/rp/client/ReverseProxyClient;Lcom/zp/rp/auth/AuthResult;)V

    .line 672
    .end local v0    # "arr$":[Lcom/zp/rp/client/SocketProxy;
    .end local v1    # "i$":I
    .end local v2    # "key":Ljava/nio/channels/SelectionKey;
    .end local v3    # "len$":I
    :cond_2
    return-void
.end method

.method public sessionOpened(Ljava/nio/channels/SocketChannel;)V
    .locals 2
    .param p1, "session"    # Ljava/nio/channels/SocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 675
    iget-object v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->session:Ljava/nio/channels/SocketChannel;

    if-nez v0, :cond_0

    .line 676
    iput-object p1, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->session:Ljava/nio/channels/SocketChannel;

    .line 677
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->checkSessionTime:J

    .line 678
    iget-wide v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->checkSessionTime:J

    iput-wide v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastAliveTime:J

    .line 679
    iget-wide v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->checkSessionTime:J

    iput-wide v0, p0, Lcom/zp/rp/client/DefaultReverseProxyClient;->lastSync:J

    .line 681
    invoke-direct {p0}, Lcom/zp/rp/client/DefaultReverseProxyClient;->requestAuth()V

    .line 683
    :cond_0
    return-void
.end method

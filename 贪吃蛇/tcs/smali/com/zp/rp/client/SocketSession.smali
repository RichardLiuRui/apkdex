.class public interface abstract Lcom/zp/rp/client/SocketSession;
.super Ljava/lang/Object;
.source "SocketSession.java"


# virtual methods
.method public abstract exceptionCaught(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;)V
.end method

.method public abstract processConnect(Ljava/nio/channels/SocketChannel;)V
.end method

.method public abstract pushData(Ljava/nio/channels/SocketChannel;Ljava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sessionClosed(Ljava/nio/channels/SocketChannel;)V
.end method

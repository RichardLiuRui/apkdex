.class public interface abstract Lzp/cn/banny/rp/client/ReverseProxyClient;
.super Ljava/lang/Object;
.source "ReverseProxyClient.java"


# static fields
.field public static final VERSION:I = 0x20033


# virtual methods
.method public abstract destroy()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getNetworkDelay()I
.end method

.method public abstract getVersion()I
.end method

.method public abstract initialize()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract initialize([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isAlive()Z
.end method

.method public abstract isAuthOK()Z
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isDead()Z
.end method

.method public abstract login(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract login(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract logout()V
.end method

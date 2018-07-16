.class public interface abstract Lcom/zp/rp/MessageDeliver;
.super Ljava/lang/Object;
.source "MessageDeliver.java"


# virtual methods
.method public abstract deliverMessage([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getAuthUser()Ljava/lang/String;
.end method

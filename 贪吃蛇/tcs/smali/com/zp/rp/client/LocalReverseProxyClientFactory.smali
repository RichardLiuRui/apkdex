.class public Lcom/zp/rp/client/LocalReverseProxyClientFactory;
.super Ljava/lang/Object;
.source "LocalReverseProxyClientFactory.java"

# interfaces
.implements Lzp/cn/banny/rp/client/ReverseProxyClientFactory;


# instance fields
.field protected final context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zp/rp/client/LocalReverseProxyClientFactory;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/zp/rp/client/LocalReverseProxyClientFactory;->context:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public createClient(Ljava/lang/String;I)Lzp/cn/banny/rp/client/ReverseProxyClient;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/zp/rp/client/LocalReverseProxyClientFactory;->createClient(Ljava/lang/String;ILjava/lang/String;)Lzp/cn/banny/rp/client/ReverseProxyClient;

    move-result-object v0

    return-object v0
.end method

.method public createClient(Ljava/lang/String;ILjava/lang/String;)Lzp/cn/banny/rp/client/ReverseProxyClient;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "extraData"    # Ljava/lang/String;

    .prologue
    .line 43
    new-instance v0, Lcom/zp/rp/client/DefaultReverseProxyClient;

    invoke-direct {v0, p1, p2, p3}, Lcom/zp/rp/client/DefaultReverseProxyClient;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

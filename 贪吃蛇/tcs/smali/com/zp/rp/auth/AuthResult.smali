.class public Lcom/zp/rp/auth/AuthResult;
.super Ljava/lang/Object;
.source "AuthResult.java"


# instance fields
.field private final expire:Ljava/lang/Long;

.field private final msg:Ljava/lang/String;

.field private final nick:Ljava/lang/String;

.field private final status:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "expire"    # Ljava/lang/Long;
    .param p4, "nick"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/zp/rp/auth/AuthResult;->status:I

    .line 43
    iput-object p2, p0, Lcom/zp/rp/auth/AuthResult;->msg:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/zp/rp/auth/AuthResult;->expire:Ljava/lang/Long;

    .line 45
    iput-object p4, p0, Lcom/zp/rp/auth/AuthResult;->nick:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static authFailed(ILjava/lang/String;)Lcom/zp/rp/auth/AuthResult;
    .locals 2
    .param p0, "status"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 29
    new-instance v0, Lcom/zp/rp/auth/AuthResult;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/zp/rp/auth/AuthResult;-><init>(ILjava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    return-object v0
.end method

.method public static authOk(Ljava/lang/Long;Ljava/lang/String;)Lcom/zp/rp/auth/AuthResult;
    .locals 3
    .param p0, "expire"    # Ljava/lang/Long;
    .param p1, "nick"    # Ljava/lang/String;

    .prologue
    .line 25
    new-instance v0, Lcom/zp/rp/auth/AuthResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/zp/rp/auth/AuthResult;-><init>(ILjava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    return-object v0
.end method

.method public static readAuthResult(Ljava/nio/ByteBuffer;)Lcom/zp/rp/auth/AuthResult;
    .locals 8
    .param p0, "in"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 33
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v3, v5, 0xff

    .line 34
    .local v3, "status":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    if-ne v5, v7, :cond_0

    invoke-static {p0}, Lcom/zp/rp/ReverseProxy;->readUTF(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "msg":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    if-ne v5, v7, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 36
    .local v0, "expire":Ljava/lang/Long;
    :goto_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    if-ne v5, v7, :cond_2

    invoke-static {p0}, Lcom/zp/rp/ReverseProxy;->readUTF(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "nick":Ljava/lang/String;
    :goto_2
    new-instance v4, Lcom/zp/rp/auth/AuthResult;

    invoke-direct {v4, v3, v1, v0, v2}, Lcom/zp/rp/auth/AuthResult;-><init>(ILjava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    return-object v4

    .end local v0    # "expire":Ljava/lang/Long;
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "nick":Ljava/lang/String;
    :cond_0
    move-object v1, v4

    .line 34
    goto :goto_0

    .restart local v1    # "msg":Ljava/lang/String;
    :cond_1
    move-object v0, v4

    .line 35
    goto :goto_1

    .restart local v0    # "expire":Ljava/lang/Long;
    :cond_2
    move-object v2, v4

    .line 36
    goto :goto_2
.end method


# virtual methods
.method public getExpire()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zp/rp/auth/AuthResult;->expire:Ljava/lang/Long;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/zp/rp/auth/AuthResult;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getNick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zp/rp/auth/AuthResult;->nick:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/zp/rp/auth/AuthResult;->status:I

    return v0
.end method

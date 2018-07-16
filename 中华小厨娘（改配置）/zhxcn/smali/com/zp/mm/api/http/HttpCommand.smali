.class public Lcom/zp/mm/api/http/HttpCommand;
.super Ljava/util/TimerTask;
.source "HttpCommand.java"

# interfaces
.implements Lcom/zp/mm/api/Command;
.implements Ljava/lang/Runnable;


# instance fields
.field private data:[B

.field private delay:I

.field private final headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private final timer:Ljava/util/Timer;

.field private tryCount:I

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zp/mm/api/http/HttpCommand;->headers:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/zp/mm/api/http/HttpCommand;->timer:Ljava/util/Timer;

    .line 32
    iput-object p1, p0, Lcom/zp/mm/api/http/HttpCommand;->url:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private processHttp()V
    .locals 5

    .prologue
    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/zp/mm/api/http/HttpCommand;->data:[B

    if-nez v1, :cond_1

    .line 72
    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendGet url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zp/mm/api/http/HttpCommand;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", headers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zp/mm/api/http/HttpCommand;->headers:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/zp/mm/api/http/HttpCommand;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/zp/mm/api/http/HttpCommand;->headers:Ljava/util/List;

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/http/NameValuePair;

    invoke-static {v2, v1}, Lcom/zp/mm/api/http/HttpUtils;->sendGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)[B

    .line 95
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendPost url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zp/mm/api/http/HttpCommand;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", headers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zp/mm/api/http/HttpCommand;->headers:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zp/mm/api/http/HttpCommand;->data:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    :cond_2
    iget-object v2, p0, Lcom/zp/mm/api/http/HttpCommand;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/zp/mm/api/http/HttpCommand;->data:[B

    iget-object v1, p0, Lcom/zp/mm/api/http/HttpCommand;->headers:Ljava/util/List;

    const/4 v4, 0x0

    new-array v4, v4, [Lorg/apache/http/NameValuePair;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/http/NameValuePair;

    invoke-static {v2, v3, v1}, Lcom/zp/mm/api/http/HttpUtils;->sendPost(Ljava/lang/String;[B[Lorg/apache/http/NameValuePair;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/io/IOException;
    iget v1, p0, Lcom/zp/mm/api/http/HttpCommand;->tryCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/zp/mm/api/http/HttpCommand;->tryCount:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    .line 89
    invoke-direct {p0}, Lcom/zp/mm/api/http/HttpCommand;->processHttp()V

    goto :goto_0

    .line 93
    :cond_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 44
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/zp/mm/api/http/HttpCommand;->headers:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public executeCommand()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 57
    iget v1, p0, Lcom/zp/mm/api/http/HttpCommand;->delay:I

    if-ge v1, v2, :cond_0

    .line 58
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 59
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 60
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 65
    .end local v0    # "thread":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/zp/mm/api/http/HttpCommand;->timer:Ljava/util/Timer;

    iget v2, p0, Lcom/zp/mm/api/http/HttpCommand;->delay:I

    int-to-long v2, v2

    invoke-virtual {v1, p0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/zp/mm/api/http/HttpCommand;->processHttp()V

    .line 100
    return-void
.end method

.method public setData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 36
    iput-object p1, p0, Lcom/zp/mm/api/http/HttpCommand;->data:[B

    .line 37
    return-void
.end method

.method public setDelay(I)V
    .locals 0
    .param p1, "delay"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/zp/mm/api/http/HttpCommand;->delay:I

    .line 41
    return-void
.end method

.class public Lbn/sdk/szwcsss/coddxcxc/z/throw;
.super Landroid/os/AsyncTask;


# static fields
.field private static final synchronized:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private aa:Ljava/util/ArrayList;

.field private b:I

.field private cx:Lbn/sdk/szwcsss/coddxcxc/z/cx;

.field private for:I

.field private implements:I

.field private instanceof:I

.field private private:Z

.field private throw:Ljava/util/ArrayList;

.field private transient:Landroid/content/Context;

.field private while:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->synchronized:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->transient:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->for:I

    if-le p2, v1, :cond_0

    iput p2, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->b:I

    :goto_0
    const/16 v0, 0x3a98

    iput v0, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->instanceof:I

    iput v0, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->implements:I

    iput-object p3, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->aa:Ljava/util/ArrayList;

    return-void

    :cond_0
    iput v1, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->b:I

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 3

    invoke-virtual {p0}, Lbn/sdk/szwcsss/coddxcxc/z/throw;->b()V

    iget-boolean v0, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->private:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->while:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->while:[B

    iget v1, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->implements:I

    iget v2, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->instanceof:I

    invoke-static {p1, p2, v0, v1, v2}, Lbn/sdk/szwcsss/coddxcxc/z/while;->b(Landroid/content/Context;Ljava/lang/String;[BII)Lorg/apache/http/HttpResponse;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->throw:Ljava/util/ArrayList;

    iget v1, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->implements:I

    iget v2, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->instanceof:I

    invoke-static {p1, p2, v0, v1, v2}, Lbn/sdk/szwcsss/coddxcxc/z/while;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;II)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->implements:I

    iget v1, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->instanceof:I

    invoke-static {p1, p2, v0, v1}, Lbn/sdk/szwcsss/coddxcxc/z/while;->b(Landroid/content/Context;Ljava/lang/String;II)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected varargs b([Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    const/4 v2, 0x0

    const/4 v0, 0x0

    aget-object v3, p1, v0

    move-object v1, v2

    :goto_0
    if-nez v1, :cond_7

    iget v0, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->for:I

    iget v4, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->b:I

    if-ge v0, v4, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lbn/sdk/szwcsss/coddxcxc/z/throw;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    return-object v2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->aa:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->aa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget v6, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->for:I

    rem-int v0, v6, v0

    iget-object v6, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->aa:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    :cond_1
    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->transient:Landroid/content/Context;

    invoke-direct {p0, v0, v3}, Lbn/sdk/szwcsss/coddxcxc/z/throw;->b(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lbn/sdk/szwcsss/coddxcxc/z/throw;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_5

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/z/throw;->b(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    :goto_2
    :try_start_1
    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->cx:Lbn/sdk/szwcsss/coddxcxc/z/cx;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->cx:Lbn/sdk/szwcsss/coddxcxc/z/cx;

    invoke-virtual {v1, v0}, Lbn/sdk/szwcsss/coddxcxc/z/cx;->for(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v1

    if-nez v1, :cond_6

    move-object v0, v2

    :cond_2
    :goto_3
    move-object v1, v0

    move-object v0, v3

    :goto_4
    iget v3, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->for:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->for:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    if-nez v1, :cond_3

    sub-long v8, v6, v4

    const-wide/16 v10, 0x1388

    cmp-long v3, v8, v10

    if-gez v3, :cond_3

    const-wide/16 v8, 0x1f4

    :try_start_2
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_3
    :goto_5
    if-eqz v1, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HttpRsp Time "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v8, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->for:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v6, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->aa(Ljava/lang/String;)V

    :cond_4
    move-object v3, v0

    goto/16 :goto_0

    :cond_5
    :try_start_3
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_3
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    move-object v0, v1

    goto :goto_2

    :cond_6
    :try_start_4
    const-string v1, "mListener onCheckDataValid true"

    invoke-static {v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V
    :try_end_4
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v3

    move-object v3, v12

    :goto_6
    invoke-virtual {v3}, Ljavax/net/ssl/SSLHandshakeException;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v3

    move-object v3, v12

    :goto_7
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v3

    move-object v3, v12

    :goto_8
    invoke-virtual {v3}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v3

    move-object v3, v12

    :goto_9
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    :cond_7
    if-eqz v1, :cond_8

    const-string v0, "s"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v3}, Lbn/sdk/szwcsss/coddxcxc/z/b;->b(Ljava/lang/String;)V

    :cond_8
    move-object v2, v1

    goto/16 :goto_1

    :catch_5
    move-exception v0

    move-object v12, v0

    move-object v0, v3

    move-object v3, v12

    goto :goto_9

    :catch_6
    move-exception v0

    move-object v12, v0

    move-object v0, v3

    move-object v3, v12

    goto :goto_8

    :catch_7
    move-exception v0

    move-object v12, v0

    move-object v0, v3

    move-object v3, v12

    goto :goto_7

    :catch_8
    move-exception v0

    move-object v12, v0

    move-object v0, v3

    move-object v3, v12

    goto :goto_6

    :cond_9
    move-object v0, v1

    goto/16 :goto_2
.end method

.method public b()V
    .locals 2

    const/16 v1, 0x1388

    iget v0, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->implements:I

    if-ge v0, v1, :cond_0

    iput v1, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->implements:I

    :cond_0
    iget v0, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->instanceof:I

    if-ge v0, v1, :cond_1

    iput v1, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->instanceof:I

    :cond_1
    return-void
.end method

.method public b(II)V
    .locals 0

    iput p1, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->implements:I

    iput p2, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->instanceof:I

    invoke-virtual {p0}, Lbn/sdk/szwcsss/coddxcxc/z/throw;->b()V

    return-void
.end method

.method public b(Lbn/sdk/szwcsss/coddxcxc/z/cx;[BLjava/lang/String;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->cx:Lbn/sdk/szwcsss/coddxcxc/z/cx;

    iput-boolean v1, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->private:Z

    iput-object p2, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->while:[B

    iput v2, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->for:I

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->aa:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->aa:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->aa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->aa:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->cx:Lbn/sdk/szwcsss/coddxcxc/z/cx;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->cx:Lbn/sdk/szwcsss/coddxcxc/z/cx;

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/z/cx;->b()V

    :cond_2
    sget-object v0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->synchronized:Ljava/util/concurrent/ScheduledExecutorService;

    new-array v1, v1, [Ljava/lang/String;

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, v1}, Lbn/sdk/szwcsss/coddxcxc/z/throw;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->cx:Lbn/sdk/szwcsss/coddxcxc/z/cx;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbn/sdk/szwcsss/coddxcxc/z/throw;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    if-nez p1, :cond_1

    const-string v0, "null"

    :goto_0
    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->cx:Lbn/sdk/szwcsss/coddxcxc/z/cx;

    invoke-virtual {v0, p1}, Lbn/sdk/szwcsss/coddxcxc/z/cx;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->cx:Lbn/sdk/szwcsss/coddxcxc/z/cx;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method protected varargs b([Ljava/lang/Integer;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lbn/sdk/szwcsss/coddxcxc/z/throw;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->cx:Lbn/sdk/szwcsss/coddxcxc/z/cx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->cx:Lbn/sdk/szwcsss/coddxcxc/z/cx;

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/z/cx;->for()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->cx:Lbn/sdk/szwcsss/coddxcxc/z/cx;

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lbn/sdk/szwcsss/coddxcxc/z/throw;->for:I

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lbn/sdk/szwcsss/coddxcxc/z/throw;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lbn/sdk/szwcsss/coddxcxc/z/throw;->b([Ljava/lang/Integer;)V

    return-void
.end method

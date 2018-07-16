.class public Lcom/zp/mm/api/http/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static final CONNECT_TIMEOUT:I = 0x2710

.field private static final READ_TIMEOUT:I = 0x3a98


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs sendGet(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)[B
    .locals 11
    .param p0, "urlStr"    # Ljava/lang/String;
    .param p1, "headers"    # [Lorg/apache/http/NameValuePair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    const/4 v2, 0x0

    .line 29
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const/4 v4, 0x0

    .line 31
    .local v4, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 32
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 33
    const-string v8, "GET"

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 34
    const/16 v8, 0x2710

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 35
    const/16 v8, 0x3a98

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 37
    move-object v1, p1

    .local v1, "arr$":[Lorg/apache/http/NameValuePair;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v6, v1, v3

    .line 38
    .local v6, "pair":Lorg/apache/http/NameValuePair;
    invoke-interface {v6}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 41
    .end local v6    # "pair":Lorg/apache/http/NameValuePair;
    :cond_0
    const-string v8, "MMApi"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendGet url="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 45
    invoke-static {v4}, Lcom/zp/mm/api/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 47
    invoke-static {v4}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 49
    if-eqz v2, :cond_1

    .line 50
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-object v8

    .line 47
    .end local v1    # "arr$":[Lorg/apache/http/NameValuePair;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v8

    invoke-static {v4}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 49
    if-eqz v2, :cond_2

    .line 50
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v8
.end method

.method public static varargs sendPost(Ljava/lang/String;[B[Lorg/apache/http/NameValuePair;)[B
    .locals 12
    .param p0, "urlStr"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .param p2, "headers"    # [Lorg/apache/http/NameValuePair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    const/4 v2, 0x0

    .line 57
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const/4 v4, 0x0

    .line 58
    .local v4, "inputStream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 60
    .local v6, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 61
    .local v8, "url":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 62
    const-string v9, "POST"

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 63
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 64
    const/16 v9, 0x2710

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 65
    const/16 v9, 0x3a98

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 66
    const-string v9, "Content-length"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, p1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    move-object v1, p2

    .local v1, "arr$":[Lorg/apache/http/NameValuePair;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v7, v1, v3

    .line 69
    .local v7, "pair":Lorg/apache/http/NameValuePair;
    invoke-interface {v7}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 72
    .end local v7    # "pair":Lorg/apache/http/NameValuePair;
    :cond_0
    const-string v9, "MMApi"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendPost url="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 75
    invoke-virtual {v6, p1}, Ljava/io/OutputStream;->write([B)V

    .line 76
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 78
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 80
    invoke-static {v4}, Lcom/zp/mm/api/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 82
    invoke-static {v6}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 83
    invoke-static {v4}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 85
    if-eqz v2, :cond_1

    .line 86
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-object v9

    .line 82
    .end local v1    # "arr$":[Lorg/apache/http/NameValuePair;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v8    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v9

    invoke-static {v6}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 83
    invoke-static {v4}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 85
    if-eqz v2, :cond_2

    .line 86
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v9
.end method

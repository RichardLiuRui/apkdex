.class public Lorg/zzf/core/f/o;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Ljava/io/FileWriter;

.field private static d:Ljava/lang/String;

.field private static e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lorg/zzf/core/f/o;->a:Z

    const/4 v0, 0x1

    sput-boolean v0, Lorg/zzf/core/f/o;->b:Z

    const/4 v0, 0x0

    sput-object v0, Lorg/zzf/core/f/o;->c:Ljava/io/FileWriter;

    const-string v0, "/sdcard/Platform-Log.txt"

    sput-object v0, Lorg/zzf/core/f/o;->d:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/zzf/core/f/o;->e:[I

    return-void

    :array_0
    .array-data 4
        0xa
        0x14
        0x1e
        0x32
        0x64
        0x12c
        0x1f4
    .end array-data
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lorg/apache/http/HttpResponse;Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v0, v1

    if-lez v0, :cond_0

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;[Lorg/apache/http/Header;Landroid/content/Context;)Lorg/apache/http/HttpResponse;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lorg/zzf/core/f/m;->b(Landroid/content/Context;)I

    move-result v3

    invoke-static {p2}, Lorg/zzf/core/f/o;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    new-instance v3, Lorg/apache/http/HttpHost;

    const-string v4, "10.0.0.172"

    const/16 v5, 0x50

    const-string v6, "http"

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.route.default-proxy"

    invoke-interface {v4, v5, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {v2, p1}, Lorg/apache/http/client/methods/HttpGet;->setHeaders([Lorg/apache/http/Header;)V

    :cond_1
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    new-instance v3, Lorg/apache/http/HttpHost;

    const-string v4, "10.0.0.200"

    const/16 v5, 0x50

    const-string v6, "http"

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.route.default-proxy"

    invoke-interface {v4, v5, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v4, 0x6

    if-ne v3, v4, :cond_4

    :try_start_1
    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v5

    const-string v6, "http"

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.route.default-proxy"

    invoke-interface {v4, v5, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    goto :goto_0

    :cond_4
    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v5

    const-string v6, "http"

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.route.default-proxy"

    invoke-interface {v4, v5, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Lorg/apache/http/Header;
    .locals 6

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "lac"

    const-string v1, "lac"

    const-string v2, "0"

    invoke-static {p0, v1, v2}, Lorg/zzf/core/b/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mcc"

    const-string v1, "mcc"

    const-string v2, "0"

    invoke-static {p0, v1, v2}, Lorg/zzf/core/b/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mnc"

    const-string v1, "mnc"

    const-string v2, "0"

    invoke-static {p0, v1, v2}, Lorg/zzf/core/b/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cid"

    const-string v1, "cid"

    const-string v2, "0"

    invoke-static {p0, v1, v2}, Lorg/zzf/core/b/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    invoke-static {p0}, Lorg/zzf/core/b/h;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    invoke-static {p0}, Lorg/zzf/core/b/h;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lorg/zzf/core/f/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)[Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)[Lorg/apache/http/Header;
    .locals 5

    const/4 v2, 0x0

    const/16 v0, 0x25

    :try_start_0
    new-array v2, v0, [Lorg/apache/http/Header;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "mobileModel"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    aput-object v0, v2, v1

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "sign"

    invoke-direct {v0, v1, p1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    aput-object v0, v2, v1

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "osVersion"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    aput-object v0, v2, v1

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "netMode"

    invoke-static {p0}, Lorg/zzf/core/f/m;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    aput-object v0, v2, v1

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "sdkVersion"

    const-string v3, "4.7.10"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    aput-object v0, v2, v1

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "package"

    invoke-static {p0}, Lorg/zzf/core/f/m;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    aput-object v0, v2, v1

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "mobile"

    invoke-static {p0}, Lorg/zzf/core/f/m;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    aput-object v0, v2, v1

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "clientmobile"

    invoke-static {p0}, Lorg/zzf/core/f/m;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x7

    aput-object v0, v2, v1

    invoke-static {}, Lorg/zzf/core/a;->a()Lorg/zzf/core/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/zzf/core/a;->g(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "imei"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lorg/zzf/core/a;->a()Lorg/zzf/core/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/zzf/core/a;->g(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "imsi"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Lorg/apache/http/message/BasicHeader;

    const-string v4, "mobileimsi"

    invoke-direct {v3, v4, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x8

    aput-object v3, v2, v1

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v3, "mobileimei"

    invoke-direct {v1, v3, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9

    aput-object v1, v2, v0

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "cp"

    invoke-direct {v0, v1, p2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xa

    aput-object v0, v2, v1

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "qd"

    invoke-direct {v0, v1, p3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb

    aput-object v0, v2, v1

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "appId"

    invoke-direct {v0, v1, p4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc

    aput-object v0, v2, v1

    const/16 v1, 0xd

    new-instance v3, Lorg/apache/http/message/BasicHeader;

    const-string v4, "lac"

    const-string v0, "lac"

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const/16 v1, 0xe

    new-instance v3, Lorg/apache/http/message/BasicHeader;

    const-string v4, "mcc"

    const-string v0, "mcc"

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const/16 v1, 0xf

    new-instance v3, Lorg/apache/http/message/BasicHeader;

    const-string v4, "mnc"

    const-string v0, "mnc"

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const/16 v1, 0x10

    new-instance v3, Lorg/apache/http/message/BasicHeader;

    const-string v4, "cid"

    const-string v0, "cid"

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    sget-object v1, Lorg/zzf/core/d/ab;->B:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x11

    aput-object v0, v2, v1

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    sget-object v1, Lorg/zzf/core/d/ab;->A:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x12

    aput-object v0, v2, v1

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    sget-object v1, Lorg/zzf/core/d/ab;->z:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x13

    aput-object v0, v2, v1

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    sget-object v1, Lorg/zzf/core/d/ab;->y:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x14

    aput-object v0, v2, v1

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    sget-object v1, Lorg/zzf/core/d/ab;->x:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x15

    aput-object v0, v2, v1

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    sget-object v1, Lorg/zzf/core/d/ab;->w:Ljava/lang/String;

    invoke-static {p0}, Lorg/zzf/core/f/m;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x16

    aput-object v0, v2, v1

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    sget-object v1, Lorg/zzf/core/d/ab;->v:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x17

    aput-object v0, v2, v1

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    sget-object v1, Lorg/zzf/core/d/ab;->C:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x18

    aput-object v0, v2, v1

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    sget-object v1, Lorg/zzf/core/d/ab;->F:Ljava/lang/String;

    invoke-static {p0}, Lorg/zzf/core/f/m;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x19

    aput-object v0, v2, v1

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    sget-object v1, Lorg/zzf/core/d/ab;->E:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x1a

    aput-object v0, v2, v1

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    sget-object v1, Lorg/zzf/core/d/ab;->G:Ljava/lang/String;

    invoke-static {}, Lorg/zzf/core/f/m;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x1b

    aput-object v0, v2, v1

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    sget-object v1, Lorg/zzf/core/d/ab;->H:Ljava/lang/String;

    invoke-static {}, Lorg/zzf/core/f/m;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x1c

    aput-object v0, v2, v1

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    sget-object v1, Lorg/zzf/core/d/ab;->I:Ljava/lang/String;

    invoke-static {}, Lorg/zzf/core/f/m;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x1d

    aput-object v0, v2, v1

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    sget-object v1, Lorg/zzf/core/d/ab;->J:Ljava/lang/String;

    invoke-static {}, Lorg/zzf/core/f/m;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x1e

    aput-object v0, v2, v1

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    sget-object v1, Lorg/zzf/core/d/ab;->K:Ljava/lang/String;

    invoke-static {p0}, Lorg/zzf/core/f/m;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x1f

    aput-object v0, v2, v1

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    sget-object v1, Lorg/zzf/core/d/ab;->L:Ljava/lang/String;

    invoke-static {}, Lorg/zzf/core/f/m;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x20

    aput-object v0, v2, v1

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    sget-object v1, Lorg/zzf/core/d/ab;->M:Ljava/lang/String;

    invoke-static {p0}, Lorg/zzf/core/f/m;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x21

    aput-object v0, v2, v1

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    sget-object v1, Lorg/zzf/core/d/ab;->N:Ljava/lang/String;

    invoke-static {p0}, Lorg/zzf/core/f/m;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x22

    aput-object v0, v2, v1

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    sget-object v1, Lorg/zzf/core/d/ab;->O:Ljava/lang/String;

    invoke-static {p0}, Lorg/zzf/core/f/m;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x23

    aput-object v0, v2, v1

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    sget-object v1, Lorg/zzf/core/d/ab;->P:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x24

    aput-object v0, v2, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)[Lorg/apache/http/Header;
    .locals 6

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    invoke-static {p0}, Lorg/zzf/core/b/h;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    invoke-static {p0}, Lorg/zzf/core/b/h;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/zzf/core/f/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)[Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

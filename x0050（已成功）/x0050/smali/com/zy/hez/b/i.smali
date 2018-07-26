.class public Lcom/zy/hez/b/i;
.super Ljava/lang/Object;


# static fields
.field private static a:Lorg/apache/http/params/HttpParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x7530

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sput-object v0, Lcom/zy/hez/b/i;->a:Lorg/apache/http/params/HttpParams;

    sget-object v0, Lcom/zy/hez/b/i;->a:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget-object v0, Lcom/zy/hez/b/i;->a:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    return-void
.end method

.method public static final a(Lcom/zy/hez/b/g;)Lcom/zy/hez/b/h;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/zy/hez/b/i;->b(Lcom/zy/hez/b/g;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/zy/hez/b/i;->a(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/zy/hez/b/g;)V

    invoke-static {}, Lcom/zy/hez/b/i;->a()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/zy/hez/b/i;->a(Lorg/apache/http/HttpResponse;)Lcom/zy/hez/b/h;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static final a(Lorg/apache/http/HttpResponse;)Lcom/zy/hez/b/h;
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/zy/hez/b/e;

    invoke-direct {v0}, Lcom/zy/hez/b/e;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p0, v0}, Lcom/zy/hez/b/i;->b(Lorg/apache/http/HttpResponse;Lcom/zy/hez/b/h;)V

    invoke-static {p0, v0}, Lcom/zy/hez/b/i;->c(Lorg/apache/http/HttpResponse;Lcom/zy/hez/b/h;)V

    invoke-static {p0, v0}, Lcom/zy/hez/b/i;->a(Lorg/apache/http/HttpResponse;Lcom/zy/hez/b/h;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static final a()Lorg/apache/http/client/HttpClient;
    .locals 2

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v1, Lcom/zy/hez/b/i;->a:Lorg/apache/http/params/HttpParams;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method private static final a(Lorg/apache/http/client/methods/HttpPost;Lcom/zy/hez/b/g;)Lorg/apache/http/client/methods/HttpPost;
    .locals 3

    invoke-interface {p1}, Lcom/zy/hez/b/g;->f()[B

    move-result-object v0

    invoke-static {v0}, Lcom/zy/hez/c/j;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-interface {p1}, Lcom/zy/hez/b/g;->f()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-interface {p1}, Lcom/zy/hez/b/g;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zy/hez/c/j;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/apache/http/entity/StringEntity;

    invoke-interface {p1}, Lcom/zy/hez/b/g;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/zy/hez/b/i;->c(Lcom/zy/hez/b/g;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/zy/hez/b/g;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/zy/hez/c/j;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-interface {p1}, Lcom/zy/hez/b/g;->g()Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Lcom/zy/hez/b/i;->c(Lcom/zy/hez/b/g;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0
.end method

.method private static final a(Lorg/apache/http/HttpResponse;Lcom/zy/hez/b/h;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/zy/hez/b/h;->a(Ljava/io/InputStream;)V

    :cond_0
    return-void
.end method

.method private static final a(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/zy/hez/b/g;)V
    .locals 5

    invoke-interface {p1}, Lcom/zy/hez/b/g;->a()[Lcom/zy/hez/b/b;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget-object v4, v3, Lcom/zy/hez/b/b;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/zy/hez/b/b;->b:Ljava/lang/String;

    invoke-virtual {p0, v4, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final b(Lcom/zy/hez/b/g;)Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 2

    invoke-interface {p0}, Lcom/zy/hez/b/g;->d()Lcom/zy/hez/b/d;

    move-result-object v0

    sget-object v1, Lcom/zy/hez/b/d;->a:Lcom/zy/hez/b/d;

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-interface {p0}, Lcom/zy/hez/b/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-interface {p0}, Lcom/zy/hez/b/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/zy/hez/b/i;->a(Lorg/apache/http/client/methods/HttpPost;Lcom/zy/hez/b/g;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    goto :goto_0
.end method

.method private static final b(Lorg/apache/http/HttpResponse;Lcom/zy/hez/b/h;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/zy/hez/b/h;->a(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x1f8

    invoke-interface {p1, v0}, Lcom/zy/hez/b/h;->a(I)V

    goto :goto_0
.end method

.method private static c(Lcom/zy/hez/b/g;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lcom/zy/hez/b/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zy/hez/c/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zy/hez/c/j;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "UTF-8"

    goto :goto_0
.end method

.method private static final c(Lorg/apache/http/HttpResponse;Lcom/zy/hez/b/h;)V
    .locals 5

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    invoke-static {v1}, Lcom/zy/hez/c/j;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v3}, Lcom/zy/hez/b/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

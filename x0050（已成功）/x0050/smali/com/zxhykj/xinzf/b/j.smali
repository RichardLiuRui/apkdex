.class public Lcom/zxhykj/xinzf/b/j;
.super Ljava/lang/Object;


# static fields
.field private static a:Lorg/apache/http/params/HttpParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x7530

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sput-object v0, Lcom/zxhykj/xinzf/b/j;->a:Lorg/apache/http/params/HttpParams;

    sget-object v0, Lcom/zxhykj/xinzf/b/j;->a:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget-object v0, Lcom/zxhykj/xinzf/b/j;->a:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    return-void
.end method

.method public static final a(Lcom/zxhykj/xinzf/b/h;)Lcom/zxhykj/xinzf/b/i;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/zxhykj/xinzf/b/j;->b(Lcom/zxhykj/xinzf/b/h;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/zxhykj/xinzf/b/j;->a(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/zxhykj/xinzf/b/h;)V

    invoke-static {}, Lcom/zxhykj/xinzf/b/j;->a()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/zxhykj/xinzf/b/j;->a(Lorg/apache/http/HttpResponse;)Lcom/zxhykj/xinzf/b/i;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/zxhykj/xinzf/b/f;->a()Ljava/lang/String;

    goto :goto_0
.end method

.method private static final a(Lorg/apache/http/HttpResponse;)Lcom/zxhykj/xinzf/b/i;
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/zxhykj/xinzf/b/e;

    invoke-direct {v0}, Lcom/zxhykj/xinzf/b/e;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p0, v0}, Lcom/zxhykj/xinzf/b/j;->b(Lorg/apache/http/HttpResponse;Lcom/zxhykj/xinzf/b/i;)V

    invoke-static {p0, v0}, Lcom/zxhykj/xinzf/b/j;->c(Lorg/apache/http/HttpResponse;Lcom/zxhykj/xinzf/b/i;)V

    invoke-static {p0, v0}, Lcom/zxhykj/xinzf/b/j;->a(Lorg/apache/http/HttpResponse;Lcom/zxhykj/xinzf/b/i;)V
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

    sget-object v1, Lcom/zxhykj/xinzf/b/j;->a:Lorg/apache/http/params/HttpParams;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method private static final a(Lorg/apache/http/client/methods/HttpPost;Lcom/zxhykj/xinzf/b/h;)Lorg/apache/http/client/methods/HttpPost;
    .locals 3

    invoke-interface {p1}, Lcom/zxhykj/xinzf/b/h;->f()[B

    move-result-object v0

    invoke-static {v0}, Lcom/zxhykj/xinzf/g/i;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-interface {p1}, Lcom/zxhykj/xinzf/b/h;->f()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-interface {p1}, Lcom/zxhykj/xinzf/b/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zxhykj/xinzf/g/i;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/apache/http/entity/StringEntity;

    invoke-interface {p1}, Lcom/zxhykj/xinzf/b/h;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/zxhykj/xinzf/b/j;->c(Lcom/zxhykj/xinzf/b/h;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/zxhykj/xinzf/b/h;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/zxhykj/xinzf/g/i;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-interface {p1}, Lcom/zxhykj/xinzf/b/h;->g()Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Lcom/zxhykj/xinzf/b/j;->c(Lcom/zxhykj/xinzf/b/h;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0
.end method

.method private static final a(Lorg/apache/http/HttpResponse;Lcom/zxhykj/xinzf/b/i;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/zxhykj/xinzf/b/i;->a(Ljava/io/InputStream;)V

    :cond_0
    return-void
.end method

.method private static final a(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/zxhykj/xinzf/b/h;)V
    .locals 5

    invoke-interface {p1}, Lcom/zxhykj/xinzf/b/h;->a()[Lcom/zxhykj/xinzf/b/b;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget-object v4, v3, Lcom/zxhykj/xinzf/b/b;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/zxhykj/xinzf/b/b;->b:Ljava/lang/String;

    invoke-virtual {p0, v4, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final b(Lcom/zxhykj/xinzf/b/h;)Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 2

    invoke-interface {p0}, Lcom/zxhykj/xinzf/b/h;->d()Lcom/zxhykj/xinzf/b/d;

    move-result-object v0

    sget-object v1, Lcom/zxhykj/xinzf/b/d;->a:Lcom/zxhykj/xinzf/b/d;

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-interface {p0}, Lcom/zxhykj/xinzf/b/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-interface {p0}, Lcom/zxhykj/xinzf/b/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/zxhykj/xinzf/b/j;->a(Lorg/apache/http/client/methods/HttpPost;Lcom/zxhykj/xinzf/b/h;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    goto :goto_0
.end method

.method private static final b(Lorg/apache/http/HttpResponse;Lcom/zxhykj/xinzf/b/i;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/zxhykj/xinzf/b/i;->a(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x1f8

    invoke-interface {p1, v0}, Lcom/zxhykj/xinzf/b/i;->a(I)V

    goto :goto_0
.end method

.method private static c(Lcom/zxhykj/xinzf/b/h;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lcom/zxhykj/xinzf/b/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zxhykj/xinzf/g/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zxhykj/xinzf/g/i;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "UTF-8"

    goto :goto_0
.end method

.method private static final c(Lorg/apache/http/HttpResponse;Lcom/zxhykj/xinzf/b/i;)V
    .locals 5

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    invoke-static {v1}, Lcom/zxhykj/xinzf/g/i;->a(Ljava/lang/Object;)Z

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

    invoke-interface {p1, v4, v3}, Lcom/zxhykj/xinzf/b/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

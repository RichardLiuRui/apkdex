.class Lcom/dataeye/c/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Lcom/dataeye/ConfigParamsUpdateListener;


# direct methods
.method constructor <init>(ZLcom/dataeye/ConfigParamsUpdateListener;)V
    .locals 0

    iput-boolean p1, p0, Lcom/dataeye/c/q;->a:Z

    iput-object p2, p0, Lcom/dataeye/c/q;->b:Lcom/dataeye/ConfigParamsUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/dataeye/a/c;

    invoke-direct {v0}, Lcom/dataeye/a/c;-><init>()V

    sget-object v1, Lcom/dataeye/c/x;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/dataeye/a/c;->a:Ljava/lang/String;

    sget-object v1, Lcom/dataeye/c/x;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/dataeye/a/c;->b:Ljava/lang/String;

    invoke-static {}, Lcom/dataeye/c/a;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dataeye/a/c;->c:Ljava/lang/String;

    invoke-static {}, Lcom/dataeye/c/a;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dataeye/a/c;->f:Ljava/lang/String;

    sget-object v1, Lcom/dataeye/c/x;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/dataeye/a/c;->e:Ljava/lang/String;

    const/4 v1, 0x2

    iput-byte v1, v0, Lcom/dataeye/a/c;->d:B

    invoke-static {}, Lcom/dataeye/c/p;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dataeye/a/c;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DCconfigParams attrs: etag = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/dataeye/a/c;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dataeye/c/u;->a(Ljava/lang/String;)V

    const-string v1, "http://cf.gdatacube.net/config/update"

    invoke-static {v1, v0}, Lcom/dataeye/c/ac;->b(Ljava/lang/String;Lcom/dataeye/b/f;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/dataeye/c/ac;->a([B)[B

    move-result-object v0

    new-instance v1, Lcom/dataeye/a/d;

    invoke-direct {v1}, Lcom/dataeye/a/d;-><init>()V

    new-instance v2, Lcom/dataeye/b/c;

    invoke-direct {v2, v0}, Lcom/dataeye/b/c;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/dataeye/a/d;->a(Lcom/dataeye/b/c;)V

    invoke-static {v1}, Lcom/dataeye/c/p;->a(Lcom/dataeye/a/d;)V

    invoke-static {}, Lcom/dataeye/c/p;->c()Lcom/dataeye/c/aa;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dataeye/c/p;->c()Lcom/dataeye/c/aa;

    move-result-object v0

    invoke-interface {v0}, Lcom/dataeye/c/aa;->a()V

    :cond_0
    iget-boolean v0, p0, Lcom/dataeye/c/q;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dataeye/c/q;->b:Lcom/dataeye/ConfigParamsUpdateListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dataeye/c/q;->b:Lcom/dataeye/ConfigParamsUpdateListener;

    invoke-interface {v0}, Lcom/dataeye/ConfigParamsUpdateListener;->callback()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

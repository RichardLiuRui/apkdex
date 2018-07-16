.class public Lcom/testin/agent/c/e;
.super Lcom/testin/agent/c/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/testin/agent/c/a;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/testin/agent/c/e;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/testin/agent/c/e;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/testin/agent/c/e;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/testin/agent/c/e;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/testin/agent/c/e;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/testin/agent/c/e;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/testin/agent/c/e;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/testin/agent/c/e;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/testin/agent/c/e;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "und"

    iget-object v2, p0, Lcom/testin/agent/c/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "av"

    iget-object v2, p0, Lcom/testin/agent/c/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "pgn"

    iget-object v2, p0, Lcom/testin/agent/c/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "on"

    iget-object v2, p0, Lcom/testin/agent/c/e;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ov"

    iget-object v2, p0, Lcom/testin/agent/c/e;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "mt"

    iget-object v2, p0, Lcom/testin/agent/c/e;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "pro"

    iget-object v2, p0, Lcom/testin/agent/c/e;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sv"

    iget-object v2, p0, Lcom/testin/agent/c/e;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "chid"

    iget-object v2, p0, Lcom/testin/agent/c/e;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/testin/agent/a/b;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/testin/agent/c/e;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/testin/agent/c/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/testin/agent/c/e;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/testin/agent/c/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/testin/agent/c/e;->d:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/testin/agent/c/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/testin/agent/c/e;->e:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/testin/agent/c/e;->f:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/testin/agent/c/e;->g:Ljava/lang/String;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/testin/agent/c/e;->h:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/testin/agent/c/e;->c:Ljava/lang/String;

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/testin/agent/c/e;->i:Ljava/lang/String;

    return-void
.end method

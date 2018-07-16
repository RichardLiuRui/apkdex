.class public Lcom/testin/agent/c/d;
.super Lcom/testin/agent/c/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Lorg/json/JSONArray;

.field private j:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/testin/agent/c/a;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/testin/agent/c/d;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/testin/agent/c/d;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/testin/agent/c/d;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/testin/agent/c/d;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/testin/agent/c/d;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/testin/agent/c/d;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/testin/agent/c/d;->g:I

    const-string v0, ""

    iput-object v0, p0, Lcom/testin/agent/c/d;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/testin/agent/c/d;->i:Lorg/json/JSONArray;

    iput-object v1, p0, Lcom/testin/agent/c/d;->j:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "act"

    iget-object v2, p0, Lcom/testin/agent/c/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "et"

    iget-object v2, p0, Lcom/testin/agent/c/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "log"

    iget-object v2, p0, Lcom/testin/agent/c/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "uuid"

    iget-object v2, p0, Lcom/testin/agent/c/d;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ty"

    iget-object v2, p0, Lcom/testin/agent/c/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "oti"

    iget-object v2, p0, Lcom/testin/agent/c/d;->j:Lorg/json/JSONArray;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "csc"

    iget-object v2, p0, Lcom/testin/agent/c/d;->i:Lorg/json/JSONArray;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "tm"

    iget-object v2, p0, Lcom/testin/agent/c/d;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ct"

    iget v2, p0, Lcom/testin/agent/c/d;->g:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/testin/agent/a/b;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/testin/agent/c/d;->g:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/testin/agent/c/d;->h:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/json/JSONArray;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/testin/agent/c/d;->i:Lorg/json/JSONArray;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    iput-object v0, p0, Lcom/testin/agent/c/d;->i:Lorg/json/JSONArray;

    goto :goto_0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "act"

    iget-object v2, p0, Lcom/testin/agent/c/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "et"

    iget-object v2, p0, Lcom/testin/agent/c/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "log"

    iget-object v2, p0, Lcom/testin/agent/c/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ty"

    iget-object v2, p0, Lcom/testin/agent/c/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "msg"

    iget-object v2, p0, Lcom/testin/agent/c/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "csc"

    iget-object v2, p0, Lcom/testin/agent/c/d;->i:Lorg/json/JSONArray;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "tm"

    iget-object v2, p0, Lcom/testin/agent/c/d;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ct"

    iget v2, p0, Lcom/testin/agent/c/d;->g:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/testin/agent/a/b;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/testin/agent/c/d;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Lorg/json/JSONArray;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/testin/agent/c/d;->j:Lorg/json/JSONArray;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    iput-object v0, p0, Lcom/testin/agent/c/d;->j:Lorg/json/JSONArray;

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/testin/agent/c/d;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/testin/agent/c/d;->e:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/testin/agent/c/d;->c:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/testin/agent/c/d;->d:Ljava/lang/String;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/testin/agent/c/d;->f:Ljava/lang/String;

    return-void
.end method

.class Lorg/zzf/core/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lorg/zzf/core/a;


# direct methods
.method constructor <init>(Lorg/zzf/core/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/zzf/core/j;->b:Lorg/zzf/core/a;

    iput-object p2, p0, Lorg/zzf/core/j;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lorg/zzf/core/j;->b:Lorg/zzf/core/a;

    iget-object v1, p0, Lorg/zzf/core/j;->b:Lorg/zzf/core/a;

    invoke-static {v1}, Lorg/zzf/core/a;->c(Lorg/zzf/core/a;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/zzf/core/j;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lorg/zzf/core/f/o;->a(Ljava/lang/String;[Lorg/apache/http/Header;Landroid/content/Context;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    iput-object v1, v0, Lorg/zzf/core/a;->g:Lorg/apache/http/HttpResponse;

    iget-object v0, p0, Lorg/zzf/core/j;->b:Lorg/zzf/core/a;

    iget-object v0, v0, Lorg/zzf/core/a;->g:Lorg/apache/http/HttpResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/j;->b:Lorg/zzf/core/a;

    iget-object v1, p0, Lorg/zzf/core/j;->b:Lorg/zzf/core/a;

    iget-object v1, v1, Lorg/zzf/core/a;->g:Lorg/apache/http/HttpResponse;

    iget-object v2, p0, Lorg/zzf/core/j;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lorg/zzf/core/f/o;->a(Lorg/apache/http/HttpResponse;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/zzf/core/a;->h:Ljava/lang/String;

    iget-object v0, p0, Lorg/zzf/core/j;->b:Lorg/zzf/core/a;

    iget-object v0, v0, Lorg/zzf/core/a;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lorg/zzf/core/j;->b:Lorg/zzf/core/a;

    iget-object v1, v1, Lorg/zzf/core/a;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "appkey"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "channelid"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    iget-object v4, p0, Lorg/zzf/core/j;->a:Landroid/content/Context;

    invoke-static {v4, v3, v0}, Lcom/zp/mm/api/android/MMApi;->appStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Lcom/zp/mm/api/MMApiException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method

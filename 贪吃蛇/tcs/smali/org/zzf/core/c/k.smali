.class Lorg/zzf/core/c/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lorg/zzf/core/c/i;


# direct methods
.method constructor <init>(Lorg/zzf/core/c/i;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/zzf/core/c/k;->c:Lorg/zzf/core/c/i;

    iput-object p2, p0, Lorg/zzf/core/c/k;->a:Landroid/content/Context;

    iput-object p3, p0, Lorg/zzf/core/c/k;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v0, 0x1f

    if-ge v1, v0, :cond_1

    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    iget-object v2, p0, Lorg/zzf/core/c/k;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lorg/zzf/core/b/h;->k(Landroid/content/Context;)I

    move-result v0

    const/16 v2, 0x3e9

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lorg/zzf/core/c/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lorg/zzf/core/b/h;->z(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lorg/zzf/core/c/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/waterwest/hszp/mmlog/TrustInfo;->pay(Landroid/content/Context;)V

    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lorg/zzf/core/c/k;->c:Lorg/zzf/core/c/i;

    iget-object v2, p0, Lorg/zzf/core/c/k;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lorg/zzf/core/c/i;->a(Lorg/zzf/core/c/i;Landroid/content/Context;)V

    iget-object v0, p0, Lorg/zzf/core/c/k;->c:Lorg/zzf/core/c/i;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/zzf/core/c/k;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "contentid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/zzf/core/c/k;->c:Lorg/zzf/core/c/i;

    invoke-static {v3}, Lorg/zzf/core/c/i;->a(Lorg/zzf/core/c/i;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/zzf/core/c/k;->a:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/zzf/core/f/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    iget-object v4, p0, Lorg/zzf/core/c/k;->a:Landroid/content/Context;

    invoke-static {v2, v3, v4}, Lorg/zzf/core/f/o;->a(Ljava/lang/String;[Lorg/apache/http/Header;Landroid/content/Context;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/zzf/core/c/i;->a(Lorg/zzf/core/c/i;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;

    iget-object v0, p0, Lorg/zzf/core/c/k;->c:Lorg/zzf/core/c/i;

    invoke-static {v0}, Lorg/zzf/core/c/i;->b(Lorg/zzf/core/c/i;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/zzf/core/c/k;->c:Lorg/zzf/core/c/i;

    iget-object v2, p0, Lorg/zzf/core/c/k;->c:Lorg/zzf/core/c/i;

    invoke-static {v2}, Lorg/zzf/core/c/i;->b(Lorg/zzf/core/c/i;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    iget-object v3, p0, Lorg/zzf/core/c/k;->a:Landroid/content/Context;

    invoke-static {v2, v3}, Lorg/zzf/core/f/o;->a(Lorg/apache/http/HttpResponse;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/zzf/core/c/i;->a(Lorg/zzf/core/c/i;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/zzf/core/c/k;->c:Lorg/zzf/core/c/i;

    invoke-static {v0}, Lorg/zzf/core/c/i;->c(Lorg/zzf/core/c/i;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/zzf/core/c/k;->c:Lorg/zzf/core/c/i;

    invoke-static {v0}, Lorg/zzf/core/c/i;->c(Lorg/zzf/core/c/i;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "success"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/c/k;->c:Lorg/zzf/core/c/i;

    invoke-static {v0}, Lorg/zzf/core/c/i;->c(Lorg/zzf/core/c/i;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SUCCESS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/c/k;->c:Lorg/zzf/core/c/i;

    invoke-static {v0}, Lorg/zzf/core/c/i;->c(Lorg/zzf/core/c/i;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u6210\u529f"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/zzf/core/c/k;->c:Lorg/zzf/core/c/i;

    iget-object v2, p0, Lorg/zzf/core/c/k;->a:Landroid/content/Context;

    iget-object v3, p0, Lorg/zzf/core/c/k;->c:Lorg/zzf/core/c/i;

    invoke-static {v3}, Lorg/zzf/core/c/i;->d(Lorg/zzf/core/c/i;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lorg/zzf/core/c/i;->a(Lorg/zzf/core/c/i;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lorg/zzf/core/c/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lorg/zzf/core/b/h;->z(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lorg/zzf/core/c/k;->c:Lorg/zzf/core/c/i;

    invoke-static {v0}, Lorg/zzf/core/c/i;->e(Lorg/zzf/core/c/i;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/zzf/core/c/k;->a:Landroid/content/Context;

    iget-object v2, p0, Lorg/zzf/core/c/k;->c:Lorg/zzf/core/c/i;

    invoke-static {v2}, Lorg/zzf/core/c/i;->e(Lorg/zzf/core/c/i;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xs/hszp/mm318/XsMm318;->sendPayLog(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_4
    :try_start_2
    iget-object v0, p0, Lorg/zzf/core/c/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lorg/zzf/core/b/h;->z(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lorg/zzf/core/c/k;->c:Lorg/zzf/core/c/i;

    invoke-static {v0}, Lorg/zzf/core/c/i;->f(Lorg/zzf/core/c/i;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "zhangPay_log"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/zzf/core/c/k;->c:Lorg/zzf/core/c/i;

    invoke-static {v3}, Lorg/zzf/core/c/i;->f(Lorg/zzf/core/c/i;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/zzf/core/c/k;->a:Landroid/content/Context;

    iget-object v2, p0, Lorg/zzf/core/c/k;->c:Lorg/zzf/core/c/i;

    invoke-static {v2}, Lorg/zzf/core/c/i;->f(Lorg/zzf/core/c/i;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mpay/hszp/core/BilAPI;->postSendSms(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.class public Lorg/zzf/core/c/q;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:Z

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Lorg/zzf/core/d/s;

.field private f:Lorg/zzf/core/f/a/g;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/zzf/core/c/q;->g:Ljava/lang/String;

    iput-object v1, p0, Lorg/zzf/core/c/q;->h:Ljava/lang/String;

    iput-boolean v0, p0, Lorg/zzf/core/c/q;->a:Z

    iput-boolean v0, p0, Lorg/zzf/core/c/q;->b:Z

    iput-object p1, p0, Lorg/zzf/core/c/q;->c:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x3c

    if-ge v0, v1, :cond_1

    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    const/16 v1, 0x32

    if-ne v0, v1, :cond_2

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/zzf/core/b/h;->K(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/zzf/core/b/h;->L(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/zzf/core/zdx/b/a;->a()Lorg/zzf/core/zdx/b/a;

    invoke-static {p1}, Lorg/zzf/core/zdx/b/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const/16 v1, 0x3f6

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->e(Landroid/content/Context;I)V

    invoke-static {}, Lorg/zzf/core/a;->a()Lorg/zzf/core/a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/zzf/core/a;->a(I)V

    :cond_1
    :goto_1
    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/zzf/core/b/h;->C(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->r(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_2
    invoke-direct {p0, p1}, Lorg/zzf/core/c/q;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Lorg/zzf/core/c/q;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/c/q;->h:Ljava/lang/String;

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    iget-object v0, p0, Lorg/zzf/core/c/q;->h:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/zzf/core/b/h;->C(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lorg/zzf/core/b/h;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lorg/zzf/core/zdx/a;

    invoke-direct {v1}, Lorg/zzf/core/zdx/a;-><init>()V

    const-string v2, "Y"

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Lorg/zzf/core/zdx/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)Z

    :cond_3
    invoke-static {}, Lorg/zzf/core/a;->a()Lorg/zzf/core/a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/zzf/core/a;->a(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lorg/zzf/core/a;->a()Lorg/zzf/core/a;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/zzf/core/a;->a(I)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\u83b7\u53d6\u9a8c\u8bc1\u7801\u5f02\u5e38\uff0c\u8bf7\u5141\u8bb8\u67e5\u770b\u6536\u4ef6\u7bb1"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_4
    :try_start_1
    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v1

    const/16 v2, 0x3f9

    invoke-virtual {v1, p1, v2}, Lorg/zzf/core/b/h;->e(Landroid/content/Context;I)V

    invoke-static {}, Lorg/zzf/core/a;->a()Lorg/zzf/core/a;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/zzf/core/a;->a(I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/h;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/h;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/zzf/core/b/h;->s(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/h;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/h;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eq v0, p2, :cond_1

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/zzf/core/b/h;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->s(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Lorg/zzf/core/d/t;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/zzf/core/d/t;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/zzf/core/d/t;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/zzf/core/c/q;->b(Lorg/zzf/core/d/t;)V

    invoke-static {}, Lorg/zzf/core/b/f;->a()Lorg/zzf/core/b/f;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/c/q;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lorg/zzf/core/b/f;->a(Landroid/content/Context;Lorg/zzf/core/d/t;)V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    invoke-static {p1}, Lorg/zzf/core/b/h;->E(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    invoke-static {p1}, Lorg/zzf/core/b/h;->E(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    invoke-static {p1}, Lorg/zzf/core/b/h;->E(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Lorg/zzf/core/d/t;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/zzf/core/d/t;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {p1}, Lorg/zzf/core/d/t;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zzf/core/d/s;

    iput-object v0, p0, Lorg/zzf/core/c/q;->e:Lorg/zzf/core/d/s;

    iget-object v0, p0, Lorg/zzf/core/c/q;->e:Lorg/zzf/core/d/s;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/zzf/core/c/q;->e:Lorg/zzf/core/d/s;

    invoke-virtual {v0}, Lorg/zzf/core/d/s;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/c/q;->d:Ljava/lang/String;

    iget-object v0, p0, Lorg/zzf/core/c/q;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/zzf/core/c/q;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/zzf/core/c/q;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "contentid="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lorg/zzf/core/c/q;->c:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lorg/zzf/core/f/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v4

    iget-object v5, p0, Lorg/zzf/core/c/q;->c:Landroid/content/Context;

    invoke-static {v0, v4, v5}, Lorg/zzf/core/f/o;->a(Ljava/lang/String;[Lorg/apache/http/Header;Landroid/content/Context;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v4, p0, Lorg/zzf/core/c/q;->c:Landroid/content/Context;

    invoke-static {v0, v4}, Lorg/zzf/core/f/o;->a(Lorg/apache/http/HttpResponse;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-static {v4}, Lorg/zzf/core/f/a/b;->a(Ljava/lang/String;)Lorg/zzf/core/f/a/g;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/c/q;->f:Lorg/zzf/core/f/a/g;

    iget-object v0, p0, Lorg/zzf/core/c/q;->f:Lorg/zzf/core/f/a/g;

    invoke-virtual {v0}, Lorg/zzf/core/f/a/g;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v5

    if-nez v5, :cond_a

    :goto_1
    :try_start_1
    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v1

    iget-object v5, p0, Lorg/zzf/core/c/q;->c:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lorg/zzf/core/b/h;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-eqz v1, :cond_5

    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "port"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "content"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "type"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lorg/zzf/core/zdx/SendZdxReceiver;->a()Lorg/zzf/core/zdx/SendZdxReceiver;

    move-result-object v6

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.zhangzhifu.ZDX_RECEIVER"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lorg/zzf/core/c/q;->c:Landroid/content/Context;

    invoke-virtual {v8, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "mobile"

    invoke-virtual {v6, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "content"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "android.zhangzhifu.ZDX_RECEIVER"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lorg/zzf/core/c/q;->c:Landroid/content/Context;

    invoke-virtual {v7, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    const-string v6, "2"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lorg/zzf/core/zdx/SendZdxReceiver;->a()Lorg/zzf/core/zdx/SendZdxReceiver;

    move-result-object v1

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.zhangzhifu.ZDX_RECEIVER_DATA"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lorg/zzf/core/c/q;->c:Landroid/content/Context;

    invoke-virtual {v7, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v6, "mobile"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "content"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.zhangzhifu.ZDX_RECEIVER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lorg/zzf/core/c/q;->c:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    iget-object v1, p0, Lorg/zzf/core/c/q;->c:Landroid/content/Context;

    invoke-direct {p0, v1}, Lorg/zzf/core/c/q;->a(Landroid/content/Context;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    move-object v1, v0

    :cond_4
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lorg/zzf/core/c/q;->f:Lorg/zzf/core/f/a/g;

    invoke-virtual {v1}, Lorg/zzf/core/f/a/g;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v9, :cond_7

    iget-object v1, p0, Lorg/zzf/core/c/q;->f:Lorg/zzf/core/f/a/g;

    invoke-virtual {v1}, Lorg/zzf/core/f/a/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v9, :cond_7

    iget-object v1, p0, Lorg/zzf/core/c/q;->c:Landroid/content/Context;

    iget-object v4, p0, Lorg/zzf/core/c/q;->f:Lorg/zzf/core/f/a/g;

    invoke-virtual {v4}, Lorg/zzf/core/f/a/g;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lorg/zzf/core/c/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lorg/zzf/core/zdx/a;

    invoke-direct {v1}, Lorg/zzf/core/zdx/a;-><init>()V

    iget-object v4, p0, Lorg/zzf/core/c/q;->c:Landroid/content/Context;

    iget-object v5, p0, Lorg/zzf/core/c/q;->f:Lorg/zzf/core/f/a/g;

    invoke-virtual {v5}, Lorg/zzf/core/f/a/g;->b()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/zzf/core/c/q;->f:Lorg/zzf/core/f/a/g;

    invoke-virtual {v6}, Lorg/zzf/core/f/a/g;->c()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v5, v6, v7}, Lorg/zzf/core/zdx/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)Z

    iget-object v1, p0, Lorg/zzf/core/c/q;->c:Landroid/content/Context;

    iget-object v4, p0, Lorg/zzf/core/c/q;->f:Lorg/zzf/core/f/a/g;

    invoke-virtual {v4}, Lorg/zzf/core/f/a/g;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/zzf/core/zdx/b/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/zzf/core/c/q;->e:Lorg/zzf/core/d/s;

    invoke-virtual {v1}, Lorg/zzf/core/d/s;->b()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    :cond_6
    :goto_4
    iget-object v1, p0, Lorg/zzf/core/c/q;->c:Landroid/content/Context;

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v4

    iget-object v5, p0, Lorg/zzf/core/c/q;->c:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lorg/zzf/core/b/h;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/zzf/core/zdx/b/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lorg/zzf/core/c/q;->f:Lorg/zzf/core/f/a/g;

    invoke-virtual {v1}, Lorg/zzf/core/f/a/g;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v9, :cond_8

    iget-object v1, p0, Lorg/zzf/core/c/q;->f:Lorg/zzf/core/f/a/g;

    invoke-virtual {v1}, Lorg/zzf/core/f/a/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v1

    iget-object v4, p0, Lorg/zzf/core/c/q;->c:Landroid/content/Context;

    const/16 v5, 0x3e9

    invoke-virtual {v1, v4, v5}, Lorg/zzf/core/b/h;->e(Landroid/content/Context;I)V

    iget-object v1, p0, Lorg/zzf/core/c/q;->e:Lorg/zzf/core/d/s;

    invoke-virtual {v1}, Lorg/zzf/core/d/s;->b()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lorg/zzf/core/c/q;->f:Lorg/zzf/core/f/a/g;

    invoke-virtual {v1}, Lorg/zzf/core/f/a/g;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v9, :cond_6

    iget-object v1, p0, Lorg/zzf/core/c/q;->f:Lorg/zzf/core/f/a/g;

    invoke-virtual {v1}, Lorg/zzf/core/f/a/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_6

    new-instance v1, Lorg/zzf/core/zdx/a;

    invoke-direct {v1}, Lorg/zzf/core/zdx/a;-><init>()V

    iget-object v4, p0, Lorg/zzf/core/c/q;->f:Lorg/zzf/core/f/a/g;

    invoke-virtual {v4}, Lorg/zzf/core/f/a/g;->c()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lorg/zzf/core/c/q;->f:Lorg/zzf/core/f/a/g;

    invoke-virtual {v4}, Lorg/zzf/core/f/a/g;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    :cond_9
    iget-object v4, p0, Lorg/zzf/core/c/q;->f:Lorg/zzf/core/f/a/g;

    invoke-virtual {v4}, Lorg/zzf/core/f/a/g;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/zzf/core/c/q;->a(Ljava/lang/String;)[B

    move-result-object v4

    iget-object v5, p0, Lorg/zzf/core/c/q;->c:Landroid/content/Context;

    iget-object v6, p0, Lorg/zzf/core/c/q;->f:Lorg/zzf/core/f/a/g;

    invoke-virtual {v6}, Lorg/zzf/core/f/a/g;->b()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v6, v7, v4}, Lorg/zzf/core/zdx/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)Z

    iget-object v1, p0, Lorg/zzf/core/c/q;->c:Landroid/content/Context;

    iget-object v4, p0, Lorg/zzf/core/c/q;->f:Lorg/zzf/core/f/a/g;

    invoke-virtual {v4}, Lorg/zzf/core/f/a/g;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/zzf/core/zdx/b/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/zzf/core/c/q;->e:Lorg/zzf/core/d/s;

    invoke-virtual {v1}, Lorg/zzf/core/d/s;->b()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_4

    :catch_2
    move-exception v0

    goto/16 :goto_3

    :cond_a
    move-object v0, v1

    goto/16 :goto_1

    :cond_b
    move-object v0, v1

    goto/16 :goto_2
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

    check-cast v0, Lorg/zzf/core/d/t;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/zzf/core/c/q;->c:Landroid/content/Context;

    invoke-static {v2, v3}, Lorg/zzf/core/f/h;->a(ILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lorg/zzf/core/c/q;->a(Lorg/zzf/core/d/t;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/c/q;->c:Landroid/content/Context;

    const/16 v2, 0x3ed

    invoke-virtual {v0, v1, v2}, Lorg/zzf/core/b/h;->e(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)[B
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

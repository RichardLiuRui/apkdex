.class final Lcom/door/frame/c/f;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/door/frame/c/a;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcom/door/frame/c/f;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/door/frame/c/f;->b:Ljava/lang/String;

    .line 567
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 573
    const/4 v1, 0x0

    .line 574
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 576
    const-string v0, "uid"

    invoke-static {}, Lcom/door/frame/c/a;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 578
    const-string v0, "cmd"

    const/16 v3, 0x6b

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 580
    const-string v0, "gid"

    invoke-static {}, Lcom/door/frame/c/a;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 582
    const-string v0, "imei"

    iget-object v3, p0, Lcom/door/frame/c/f;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/door/frame/utils/CmmUtils;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 584
    const-string v0, "imsi"

    iget-object v3, p0, Lcom/door/frame/c/f;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/door/frame/utils/CmmUtils;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 586
    const-string v0, "sver"

    invoke-static {}, Lcom/door/frame/c/a;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 588
    const-string v0, "step"

    iget-object v3, p0, Lcom/door/frame/c/f;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 590
    const/4 v0, 0x0

    .line 591
    new-instance v3, Lcom/door/frame/b/a;

    invoke-direct {v3}, Lcom/door/frame/b/a;-><init>()V

    .line 592
    :goto_0
    const/4 v4, 0x2

    if-lt v1, v4, :cond_2

    .line 608
    :cond_0
    new-instance v1, Lcom/door/frame/c/j;

    invoke-direct {v1, v0}, Lcom/door/frame/c/j;-><init>(Ljava/lang/String;)V

    .line 609
    iget-object v0, v1, Lcom/door/frame/c/j;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 610
    iget-object v0, v1, Lcom/door/frame/c/j;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/door/frame/c/a;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 616
    :cond_1
    :goto_1
    return-void

    .line 594
    :cond_2
    const-wide/16 v4, 0x64

    :try_start_1
    invoke-static {v4, v5}, Lcom/door/frame/c/f;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 599
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/door/frame/c/a;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lcom/door/frame/b/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 601
    if-nez v0, :cond_0

    .line 603
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 595
    :catch_0
    move-exception v0

    .line 597
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 612
    :catch_1
    move-exception v0

    .line 614
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

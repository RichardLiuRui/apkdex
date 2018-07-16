.class public Lorg/zzf/core/service/ZhangPayPlateService$MyServiceReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lorg/zzf/core/service/ZhangPayPlateService;


# direct methods
.method public constructor <init>(Lorg/zzf/core/service/ZhangPayPlateService;)V
    .locals 0

    iput-object p1, p0, Lorg/zzf/core/service/ZhangPayPlateService$MyServiceReceiver;->a:Lorg/zzf/core/service/ZhangPayPlateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zhang.pay.zdx.send"

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/zzf/core/service/ZhangPayPlateService$MyServiceReceiver;->getResultCode()I

    move-result v0

    if-ne v0, v3, :cond_2

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->e(Landroid/content/Context;I)V

    invoke-static {p1}, Lorg/zzf/core/b/h;->y(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lorg/zzf/core/b/h;->g(Landroid/content/Context;I)V

    invoke-static {p1}, Lorg/zzf/core/b/h;->A(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/zzf/core/b/h;->j(Landroid/content/Context;I)V

    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zhang.pay.zdx.send.delivery"

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/zzf/core/service/ZhangPayPlateService$MyServiceReceiver;->getResultCode()I

    move-result v0

    if-ne v0, v3, :cond_6

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lorg/zzf/core/service/ZhangPayPlateService$MyServiceReceiver;->getResultCode()I

    move-result v0

    if-ne v0, v2, :cond_3

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const/16 v1, 0x3f2

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->e(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lorg/zzf/core/service/ZhangPayPlateService$MyServiceReceiver;->getResultCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const/16 v1, 0x3f2

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->e(Landroid/content/Context;I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/zzf/core/service/ZhangPayPlateService$MyServiceReceiver;->getResultCode()I

    move-result v0

    if-ne v0, v5, :cond_5

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const/16 v1, 0x3f2

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->e(Landroid/content/Context;I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lorg/zzf/core/service/ZhangPayPlateService$MyServiceReceiver;->getResultCode()I

    move-result v0

    if-ne v0, v4, :cond_0

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const/16 v1, 0x3f2

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->e(Landroid/content/Context;I)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lorg/zzf/core/service/ZhangPayPlateService$MyServiceReceiver;->getResultCode()I

    move-result v0

    if-ne v0, v2, :cond_7

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const/16 v1, 0x3f2

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->e(Landroid/content/Context;I)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lorg/zzf/core/service/ZhangPayPlateService$MyServiceReceiver;->getResultCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const/16 v1, 0x3f2

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->e(Landroid/content/Context;I)V

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lorg/zzf/core/service/ZhangPayPlateService$MyServiceReceiver;->getResultCode()I

    move-result v0

    if-ne v0, v5, :cond_9

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const/16 v1, 0x3f2

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->e(Landroid/content/Context;I)V

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Lorg/zzf/core/service/ZhangPayPlateService$MyServiceReceiver;->getResultCode()I

    move-result v0

    if-ne v0, v4, :cond_1

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const/16 v1, 0x3f2

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->e(Landroid/content/Context;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

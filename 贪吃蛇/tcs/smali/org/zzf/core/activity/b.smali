.class Lorg/zzf/core/activity/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lorg/zzf/core/activity/ZhangPayActivity;


# direct methods
.method constructor <init>(Lorg/zzf/core/activity/ZhangPayActivity;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lorg/zzf/core/activity/b;->b:Lorg/zzf/core/activity/ZhangPayActivity;

    iput-object p2, p0, Lorg/zzf/core/activity/b;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lorg/zzf/core/a;->a()Lorg/zzf/core/a;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/activity/b;->b:Lorg/zzf/core/activity/ZhangPayActivity;

    iget-object v1, v1, Lorg/zzf/core/activity/ZhangPayActivity;->a:Landroid/content/Context;

    iget-object v2, p0, Lorg/zzf/core/activity/b;->a:Ljava/util/HashMap;

    invoke-static {}, Lorg/zzf/core/ZhangPaySdk;->getInstance()Lorg/zzf/core/ZhangPaySdk;

    move-result-object v3

    iget-object v3, v3, Lorg/zzf/core/ZhangPaySdk;->eCallBack:Lorg/zzf/core/ZhangPayCallback;

    iget-object v4, p0, Lorg/zzf/core/activity/b;->b:Lorg/zzf/core/activity/ZhangPayActivity;

    invoke-static {v4}, Lorg/zzf/core/activity/ZhangPayActivity;->f(Lorg/zzf/core/activity/ZhangPayActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/zzf/core/a;->a(Landroid/content/Context;Ljava/util/HashMap;Lorg/zzf/core/ZhangPayCallback;Landroid/os/Handler;)V

    return-void
.end method

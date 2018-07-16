.class public Lorg/zzf/core/zdx/SendZdxReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static a:Lorg/zzf/core/zdx/SendZdxReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/zzf/core/zdx/SendZdxReceiver;->a:Lorg/zzf/core/zdx/SendZdxReceiver;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a()Lorg/zzf/core/zdx/SendZdxReceiver;
    .locals 2

    const-class v1, Lorg/zzf/core/zdx/SendZdxReceiver;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/zzf/core/zdx/SendZdxReceiver;->a:Lorg/zzf/core/zdx/SendZdxReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lorg/zzf/core/zdx/SendZdxReceiver;

    invoke-direct {v0}, Lorg/zzf/core/zdx/SendZdxReceiver;-><init>()V

    sput-object v0, Lorg/zzf/core/zdx/SendZdxReceiver;->a:Lorg/zzf/core/zdx/SendZdxReceiver;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lorg/zzf/core/zdx/SendZdxReceiver;->a:Lorg/zzf/core/zdx/SendZdxReceiver;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "android.zhangzhifu.ZDX_RECEIVER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mobile"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/zzf/core/zdx/a;

    invoke-direct {v2}, Lorg/zzf/core/zdx/a;-><init>()V

    invoke-virtual {v2, p1, v0, v1, v3}, Lorg/zzf/core/zdx/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)Z

    invoke-static {}, Lorg/zzf/core/zdx/SendZdxReceiver;->a()Lorg/zzf/core/zdx/SendZdxReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const-string v0, "android.zhangzhifu.ZDX_RECEIVER_DATA"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "mobile"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    new-instance v2, Lorg/zzf/core/zdx/a;

    invoke-direct {v2}, Lorg/zzf/core/zdx/a;-><init>()V

    invoke-virtual {v2, p1, v0, v3, v1}, Lorg/zzf/core/zdx/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)Z

    invoke-static {}, Lorg/zzf/core/zdx/SendZdxReceiver;->a()Lorg/zzf/core/zdx/SendZdxReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.class public Lorg/zzf/core/service/ZhangzhifuDxService;
.super Landroid/app/Service;


# instance fields
.field private a:Lorg/zzf/core/zdx/ZdxReceiver;

.field private b:Lorg/zzf/core/zdx/b/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object v0, p0, Lorg/zzf/core/service/ZhangzhifuDxService;->a:Lorg/zzf/core/zdx/ZdxReceiver;

    iput-object v0, p0, Lorg/zzf/core/service/ZhangzhifuDxService;->b:Lorg/zzf/core/zdx/b/c;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    new-instance v0, Lorg/zzf/core/zdx/b/c;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lorg/zzf/core/zdx/b/c;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/zzf/core/service/ZhangzhifuDxService;->b:Lorg/zzf/core/zdx/b/c;

    invoke-virtual {p0}, Lorg/zzf/core/service/ZhangzhifuDxService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/zzf/core/service/ZhangzhifuDxService;->b:Lorg/zzf/core/zdx/b/c;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/zzf/core/service/ZhangzhifuDxService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/service/ZhangzhifuDxService;->b:Lorg/zzf/core/zdx/b/c;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lorg/zzf/core/service/ZhangzhifuDxService;->a:Lorg/zzf/core/zdx/ZdxReceiver;

    invoke-virtual {p0, v0}, Lorg/zzf/core/service/ZhangzhifuDxService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/zzf/core/service/ZhangzhifuDxService;->stopForeground(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lorg/zzf/core/service/ZhangzhifuDxService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "enableservice"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "enablesmsblocker"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/zzf/core/zdx/ZdxReceiver;

    invoke-direct {v1}, Lorg/zzf/core/zdx/ZdxReceiver;-><init>()V

    iput-object v1, p0, Lorg/zzf/core/service/ZhangzhifuDxService;->a:Lorg/zzf/core/zdx/ZdxReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v2, p0, Lorg/zzf/core/service/ZhangzhifuDxService;->a:Lorg/zzf/core/zdx/ZdxReceiver;

    invoke-virtual {p0, v2, v1}, Lorg/zzf/core/service/ZhangzhifuDxService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    const-string v1, "enableservice"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "enablewappushblocker"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_1
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    return v3
.end method

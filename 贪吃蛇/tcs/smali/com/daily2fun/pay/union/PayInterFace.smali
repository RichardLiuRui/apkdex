.class public Lcom/daily2fun/pay/union/PayInterFace;
.super Ljava/lang/Object;
.source "PayInterFace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/daily2fun/pay/union/PayInterFace$MyListener;
    }
.end annotation


# static fields
.field private static DnPayStatus:Z = false

.field private static final TAG:Ljava/lang/String; = "TheRock"

.field private static hasCalled:Z

.field private static isPaying:Z

.field private static maiPayStatus:Z

.field private static mifuPayStatus:Z

.field private static object:Ljava/lang/Object;

.field private static payInterFace:Lcom/daily2fun/pay/union/PayInterFace;

.field private static yufengPayStatus:Z

.field private static zhangPayStatus:Z


# instance fields
.field private appHandler:Landroid/os/Handler;

.field private billingListener:Lcom/mj/jar/pay/BillingListener;

.field private callBack:Lorg/zzf/core/ZhangPayCallback;

.field private handler:Landroid/os/Handler;

.field private mBillingCallback:Lorg/yummysdk/lib/YMBillingCallback;

.field private mPay:Lcom/android/mtools/MPay;

.field private mjBilling:Lcom/mj/jar/pay/MjPaySDK;

.field private payCallBack:Lcom/daily2fun/pay/union/ResultCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/daily2fun/pay/union/PayInterFace;->object:Ljava/lang/Object;

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/daily2fun/pay/union/PayInterFace;->payInterFace:Lcom/daily2fun/pay/union/PayInterFace;

    .line 31
    sput-boolean v1, Lcom/daily2fun/pay/union/PayInterFace;->zhangPayStatus:Z

    .line 33
    sput-boolean v1, Lcom/daily2fun/pay/union/PayInterFace;->DnPayStatus:Z

    .line 35
    sput-boolean v1, Lcom/daily2fun/pay/union/PayInterFace;->maiPayStatus:Z

    .line 37
    sput-boolean v1, Lcom/daily2fun/pay/union/PayInterFace;->hasCalled:Z

    .line 38
    sput-boolean v1, Lcom/daily2fun/pay/union/PayInterFace;->isPaying:Z

    .line 39
    sput-boolean v1, Lcom/daily2fun/pay/union/PayInterFace;->yufengPayStatus:Z

    .line 40
    sput-boolean v1, Lcom/daily2fun/pay/union/PayInterFace;->mifuPayStatus:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Lcom/daily2fun/pay/union/PayInterFace$1;

    invoke-direct {v0, p0}, Lcom/daily2fun/pay/union/PayInterFace$1;-><init>(Lcom/daily2fun/pay/union/PayInterFace;)V

    iput-object v0, p0, Lcom/daily2fun/pay/union/PayInterFace;->billingListener:Lcom/mj/jar/pay/BillingListener;

    .line 208
    new-instance v0, Lcom/daily2fun/pay/union/PayInterFace$2;

    invoke-direct {v0, p0}, Lcom/daily2fun/pay/union/PayInterFace$2;-><init>(Lcom/daily2fun/pay/union/PayInterFace;)V

    iput-object v0, p0, Lcom/daily2fun/pay/union/PayInterFace;->callBack:Lorg/zzf/core/ZhangPayCallback;

    .line 226
    new-instance v0, Lcom/daily2fun/pay/union/PayInterFace$3;

    invoke-direct {v0, p0}, Lcom/daily2fun/pay/union/PayInterFace$3;-><init>(Lcom/daily2fun/pay/union/PayInterFace;)V

    iput-object v0, p0, Lcom/daily2fun/pay/union/PayInterFace;->appHandler:Landroid/os/Handler;

    .line 315
    new-instance v0, Lcom/daily2fun/pay/union/PayInterFace$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/daily2fun/pay/union/PayInterFace$4;-><init>(Lcom/daily2fun/pay/union/PayInterFace;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/daily2fun/pay/union/PayInterFace;->handler:Landroid/os/Handler;

    .line 47
    return-void
.end method

.method static synthetic access$0(Z)V
    .locals 0

    .prologue
    .line 39
    sput-boolean p0, Lcom/daily2fun/pay/union/PayInterFace;->yufengPayStatus:Z

    return-void
.end method

.method static synthetic access$1(Lcom/daily2fun/pay/union/PayInterFace;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0, p1, p2, p3}, Lcom/daily2fun/pay/union/PayInterFace;->showResult(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Z)V
    .locals 0

    .prologue
    .line 31
    sput-boolean p0, Lcom/daily2fun/pay/union/PayInterFace;->zhangPayStatus:Z

    return-void
.end method

.method static synthetic access$3(Z)V
    .locals 0

    .prologue
    .line 33
    sput-boolean p0, Lcom/daily2fun/pay/union/PayInterFace;->DnPayStatus:Z

    return-void
.end method

.method static synthetic access$4(Lcom/daily2fun/pay/union/PayInterFace;)Lcom/daily2fun/pay/union/ResultCallBack;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/daily2fun/pay/union/PayInterFace;->payCallBack:Lcom/daily2fun/pay/union/ResultCallBack;

    return-object v0
.end method

.method static synthetic access$5(Z)V
    .locals 0

    .prologue
    .line 35
    sput-boolean p0, Lcom/daily2fun/pay/union/PayInterFace;->maiPayStatus:Z

    return-void
.end method

.method static synthetic access$6(Z)V
    .locals 0

    .prologue
    .line 40
    sput-boolean p0, Lcom/daily2fun/pay/union/PayInterFace;->mifuPayStatus:Z

    return-void
.end method

.method static synthetic access$7(Lcom/daily2fun/pay/union/PayInterFace;)Lorg/zzf/core/ZhangPayCallback;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/daily2fun/pay/union/PayInterFace;->callBack:Lorg/zzf/core/ZhangPayCallback;

    return-object v0
.end method

.method public static getInstance()Lcom/daily2fun/pay/union/PayInterFace;
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcom/daily2fun/pay/union/PayInterFace;->payInterFace:Lcom/daily2fun/pay/union/PayInterFace;

    if-nez v0, :cond_1

    .line 51
    sget-object v1, Lcom/daily2fun/pay/union/PayInterFace;->object:Ljava/lang/Object;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Lcom/daily2fun/pay/union/PayInterFace;->payInterFace:Lcom/daily2fun/pay/union/PayInterFace;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/daily2fun/pay/union/PayInterFace;

    invoke-direct {v0}, Lcom/daily2fun/pay/union/PayInterFace;-><init>()V

    sput-object v0, Lcom/daily2fun/pay/union/PayInterFace;->payInterFace:Lcom/daily2fun/pay/union/PayInterFace;

    .line 51
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_1
    sget-object v0, Lcom/daily2fun/pay/union/PayInterFace;->payInterFace:Lcom/daily2fun/pay/union/PayInterFace;

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initDnPay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "cpId"    # Ljava/lang/String;
    .param p4, "chId"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2, p4}, Lcom/door/frame/DnPayServer;->setParams(IILjava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    move-result-object v0

    iget-object v1, p0, Lcom/daily2fun/pay/union/PayInterFace;->appHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Lcom/door/frame/DnPayServer;->init(Landroid/content/Context;Landroid/os/Handler;)V

    .line 149
    return-void
.end method

.method private initMaiPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "msa"    # Ljava/lang/String;
    .param p3, "channelid"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-static {p1, p2, p3}, Lcom/android/mtools/MPay;->getInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcom/android/mtools/MPay;

    move-result-object v0

    iput-object v0, p0, Lcom/daily2fun/pay/union/PayInterFace;->mPay:Lcom/android/mtools/MPay;

    .line 153
    iget-object v0, p0, Lcom/daily2fun/pay/union/PayInterFace;->mPay:Lcom/android/mtools/MPay;

    invoke-virtual {v0}, Lcom/android/mtools/MPay;->initMPay()V

    .line 154
    return-void
.end method

.method private initMiFUPay(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p2, "initInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/daily2fun/pay/union/PayInterFace$5;

    invoke-direct {v0, p0}, Lcom/daily2fun/pay/union/PayInterFace$5;-><init>(Lcom/daily2fun/pay/union/PayInterFace;)V

    iput-object v0, p0, Lcom/daily2fun/pay/union/PayInterFace;->mBillingCallback:Lorg/yummysdk/lib/YMBillingCallback;

    .line 106
    const-string v0, "ppidset"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "options"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 107
    iget-object v2, p0, Lcom/daily2fun/pay/union/PayInterFace;->mBillingCallback:Lorg/yummysdk/lib/YMBillingCallback;

    .line 106
    invoke-static {p1, v0, v1, v2}, Lorg/yummysdk/lib/YMBillingInterface;->init(Landroid/app/Activity;Ljava/lang/String;ILorg/yummysdk/lib/YMBillingCallback;)I

    .line 108
    return-void
.end method

.method private initYufengPay(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 6
    .param p1, "context"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p2, "initInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/mj/jar/pay/MjPaySDK;

    iget-object v2, p0, Lcom/daily2fun/pay/union/PayInterFace;->billingListener:Lcom/mj/jar/pay/BillingListener;

    const-string v1, "yfAppid"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v1, "distro"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 112
    const-string v1, "fm"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/mj/jar/pay/MjPaySDK;-><init>(Landroid/app/Activity;Lcom/mj/jar/pay/BillingListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iput-object v0, p0, Lcom/daily2fun/pay/union/PayInterFace;->mjBilling:Lcom/mj/jar/pay/MjPaySDK;

    .line 113
    return-void
.end method

.method private initZhangPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "channelId"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "qd"    # Ljava/lang/String;

    .prologue
    .line 136
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/daily2fun/pay/union/PayInterFace$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/daily2fun/pay/union/PayInterFace$6;-><init>(Lcom/daily2fun/pay/union/PayInterFace;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 142
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 144
    return-void
.end method

.method public static onDestroy()V
    .locals 1

    .prologue
    .line 273
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/door/frame/DnPayServer;->exit()V

    .line 274
    return-void
.end method

.method private showFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "priciePointId"    # Ljava/lang/String;
    .param p2, "okCode"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 304
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 305
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "priciePointId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v2, "okCode"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v2, "result"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 308
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 309
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 310
    iget-object v2, p0, Lcom/daily2fun/pay/union/PayInterFace;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 311
    const/4 v2, 0x1

    sput-boolean v2, Lcom/daily2fun/pay/union/PayInterFace;->hasCalled:Z

    .line 312
    sput-boolean v3, Lcom/daily2fun/pay/union/PayInterFace;->isPaying:Z

    .line 313
    return-void
.end method

.method private showResult(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Z
    .param p2, "priciePointId"    # Ljava/lang/String;
    .param p3, "okCode"    # Ljava/lang/String;

    .prologue
    .line 277
    sget-boolean v0, Lcom/daily2fun/pay/union/PayInterFace;->hasCalled:Z

    if-nez v0, :cond_0

    .line 278
    if-eqz p1, :cond_1

    .line 279
    invoke-direct {p0, p2, p3}, Lcom/daily2fun/pay/union/PayInterFace;->showSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    sget-boolean v0, Lcom/daily2fun/pay/union/PayInterFace;->zhangPayStatus:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/daily2fun/pay/union/PayInterFace;->DnPayStatus:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/daily2fun/pay/union/PayInterFace;->maiPayStatus:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/daily2fun/pay/union/PayInterFace;->mifuPayStatus:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/daily2fun/pay/union/PayInterFace;->yufengPayStatus:Z

    if-eqz v0, :cond_0

    .line 282
    invoke-direct {p0, p2, p3}, Lcom/daily2fun/pay/union/PayInterFace;->showFail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "priciePointId"    # Ljava/lang/String;
    .param p2, "okCode"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 292
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 293
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "priciePointId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v2, "okCode"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v2, "result"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 296
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 297
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 298
    iget-object v2, p0, Lcom/daily2fun/pay/union/PayInterFace;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 299
    sput-boolean v3, Lcom/daily2fun/pay/union/PayInterFace;->hasCalled:Z

    .line 300
    const/4 v2, 0x0

    sput-boolean v2, Lcom/daily2fun/pay/union/PayInterFace;->isPaying:Z

    .line 301
    return-void
.end method

.method private startDnPay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "Paycode"    # Ljava/lang/String;
    .param p3, "extData"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/door/frame/DnPayServer;->startPayservice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method private startMifuPay(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p2, "payInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "chargepoint"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v0, "priciePointName"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 181
    const-string v0, "mfPrice"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v0, "extData"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/daily2fun/pay/union/PayInterFace;->mBillingCallback:Lorg/yummysdk/lib/YMBillingCallback;

    move-object v0, p1

    .line 180
    invoke-static/range {v0 .. v6}, Lorg/yummysdk/lib/YMBillingInterface;->makePayment(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILorg/yummysdk/lib/YMBillingCallback;)I

    .line 182
    return-void
.end method

.method private startYufengPay(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p2, "payInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/daily2fun/pay/union/PayInterFace;->mjBilling:Lcom/mj/jar/pay/MjPaySDK;

    const-string v0, "orderId"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "paypointid"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "yfPrice"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v0, v1, v2}, Lcom/mj/jar/pay/MjPaySDK;->pay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method private startZhangPay(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p2, "payInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/daily2fun/pay/union/PayInterFace$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/daily2fun/pay/union/PayInterFace$7;-><init>(Lcom/daily2fun/pay/union/PayInterFace;Landroid/content/Context;Ljava/util/Map;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 195
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 196
    return-void
.end method

.method private startmaiPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "gid"    # Ljava/lang/String;
    .param p2, "cpOid"    # Ljava/lang/String;
    .param p3, "price"    # Ljava/lang/String;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/daily2fun/pay/union/PayInterFace;->mPay:Lcom/android/mtools/MPay;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Lcom/daily2fun/pay/union/PayInterFace$MyListener;

    invoke-direct {v2, p0}, Lcom/daily2fun/pay/union/PayInterFace$MyListener;-><init>(Lcom/daily2fun/pay/union/PayInterFace;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/mtools/MPay;->xPay(Ljava/lang/String;Ljava/lang/String;ILcom/android/mtools/MPayListener;)V

    .line 205
    return-void
.end method


# virtual methods
.method public initPaySdk(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p2, "initInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/daily2fun/pay/union/PayInterFace;->initYufengPay(Landroid/app/Activity;Ljava/util/Map;)V

    .line 63
    const-string v0, "channelId"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "appId"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "qd"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/daily2fun/pay/union/PayInterFace;->initZhangPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v0, "appid"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "cpid"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "chid"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/daily2fun/pay/union/PayInterFace;->initDnPay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v0, "MAI_MSA"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "MAI_CHANNELID"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/daily2fun/pay/union/PayInterFace;->initMaiPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/daily2fun/pay/union/PayInterFace;->initMiFUPay(Landroid/app/Activity;Ljava/util/Map;)V

    .line 70
    return-void
.end method

.method public pay(Landroid/app/Activity;Ljava/util/Map;Lcom/daily2fun/pay/union/ResultCallBack;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p3, "callback"    # Lcom/daily2fun/pay/union/ResultCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/daily2fun/pay/union/ResultCallBack;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "payInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 158
    iput-object p3, p0, Lcom/daily2fun/pay/union/PayInterFace;->payCallBack:Lcom/daily2fun/pay/union/ResultCallBack;

    .line 159
    sget-boolean v0, Lcom/daily2fun/pay/union/PayInterFace;->isPaying:Z

    if-eqz v0, :cond_0

    .line 160
    const-string v0, "\u6709\u8ba2\u5355\u6b63\u5728\u652f\u4ed8"

    invoke-static {v0}, Lcom/daily2fun/pay/union/Log;->V(Ljava/lang/String;)V

    .line 176
    :goto_0
    return-void

    .line 163
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/daily2fun/pay/union/PayInterFace;->isPaying:Z

    .line 164
    sput-boolean v1, Lcom/daily2fun/pay/union/PayInterFace;->hasCalled:Z

    .line 165
    sput-boolean v1, Lcom/daily2fun/pay/union/PayInterFace;->zhangPayStatus:Z

    .line 166
    sput-boolean v1, Lcom/daily2fun/pay/union/PayInterFace;->DnPayStatus:Z

    .line 167
    sput-boolean v1, Lcom/daily2fun/pay/union/PayInterFace;->maiPayStatus:Z

    .line 168
    sput-boolean v1, Lcom/daily2fun/pay/union/PayInterFace;->yufengPayStatus:Z

    .line 169
    sput-boolean v1, Lcom/daily2fun/pay/union/PayInterFace;->mifuPayStatus:Z

    .line 170
    invoke-direct {p0, p1, p2}, Lcom/daily2fun/pay/union/PayInterFace;->startYufengPay(Landroid/app/Activity;Ljava/util/Map;)V

    .line 171
    const-string v0, "payCode"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "extData"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/daily2fun/pay/union/PayInterFace;->startDnPay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v0, "gid"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "cpOid"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "dmPrice"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/daily2fun/pay/union/PayInterFace;->startmaiPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-direct {p0, p1, p2}, Lcom/daily2fun/pay/union/PayInterFace;->startMifuPay(Landroid/app/Activity;Ljava/util/Map;)V

    .line 174
    invoke-direct {p0, p1, p2}, Lcom/daily2fun/pay/union/PayInterFace;->startZhangPay(Landroid/content/Context;Ljava/util/Map;)V

    goto :goto_0
.end method

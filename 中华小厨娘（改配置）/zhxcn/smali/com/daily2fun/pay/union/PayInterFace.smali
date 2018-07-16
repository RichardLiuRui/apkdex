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
.field private static final ALL_PAY:I = 0x4

.field private static DnPayStatus:Z = false

.field private static final ONLY_QIPA_PAY:I = 0x2

.field private static final ONLY_ZHANG_PAY:I = 0x1

.field public static PAY_TYPE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TheRock"

.field private static final ZHANG_AND_QIPA_PAY:I = 0x3

.field private static hasCalled:Z

.field private static isPaying:Z

.field private static maiPayStatus:Z

.field private static object:Ljava/lang/Object;

.field private static payInterFace:Lcom/daily2fun/pay/union/PayInterFace;

.field private static showResultDialog:Z

.field private static zhangPayStatus:Z


# instance fields
.field private activity:Landroid/app/Activity;

.field private appHandler:Landroid/os/Handler;

.field private callBack:Lorg/zzf/core/ZhangPayCallback;

.field private handler:Landroid/os/Handler;

.field private mPay:Lcom/android/mtools/MPay;

.field private payCallBack:Lcom/daily2fun/pay/union/ResultCallBack;

.field private payInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/daily2fun/pay/union/PayInterFace;->object:Ljava/lang/Object;

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/daily2fun/pay/union/PayInterFace;->payInterFace:Lcom/daily2fun/pay/union/PayInterFace;

    .line 27
    sput-boolean v1, Lcom/daily2fun/pay/union/PayInterFace;->showResultDialog:Z

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

    .line 48
    const/4 v0, 0x4

    sput v0, Lcom/daily2fun/pay/union/PayInterFace;->PAY_TYPE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/daily2fun/pay/union/PayInterFace;->payInfo:Ljava/util/Map;

    .line 29
    iput-object v0, p0, Lcom/daily2fun/pay/union/PayInterFace;->activity:Landroid/app/Activity;

    .line 194
    new-instance v0, Lcom/daily2fun/pay/union/PayInterFace$1;

    invoke-direct {v0, p0}, Lcom/daily2fun/pay/union/PayInterFace$1;-><init>(Lcom/daily2fun/pay/union/PayInterFace;)V

    iput-object v0, p0, Lcom/daily2fun/pay/union/PayInterFace;->callBack:Lorg/zzf/core/ZhangPayCallback;

    .line 213
    new-instance v0, Lcom/daily2fun/pay/union/PayInterFace$2;

    invoke-direct {v0, p0}, Lcom/daily2fun/pay/union/PayInterFace$2;-><init>(Lcom/daily2fun/pay/union/PayInterFace;)V

    iput-object v0, p0, Lcom/daily2fun/pay/union/PayInterFace;->appHandler:Landroid/os/Handler;

    .line 302
    new-instance v0, Lcom/daily2fun/pay/union/PayInterFace$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/daily2fun/pay/union/PayInterFace$3;-><init>(Lcom/daily2fun/pay/union/PayInterFace;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/daily2fun/pay/union/PayInterFace;->handler:Landroid/os/Handler;

    .line 54
    return-void
.end method

.method static synthetic access$0(Z)V
    .locals 0

    .prologue
    .line 31
    sput-boolean p0, Lcom/daily2fun/pay/union/PayInterFace;->zhangPayStatus:Z

    return-void
.end method

.method static synthetic access$1(Lcom/daily2fun/pay/union/PayInterFace;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0, p1, p2, p3}, Lcom/daily2fun/pay/union/PayInterFace;->showResult(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Z)V
    .locals 0

    .prologue
    .line 33
    sput-boolean p0, Lcom/daily2fun/pay/union/PayInterFace;->DnPayStatus:Z

    return-void
.end method

.method static synthetic access$3(Lcom/daily2fun/pay/union/PayInterFace;)Lcom/daily2fun/pay/union/ResultCallBack;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/daily2fun/pay/union/PayInterFace;->payCallBack:Lcom/daily2fun/pay/union/ResultCallBack;

    return-object v0
.end method

.method static synthetic access$4(Z)V
    .locals 0

    .prologue
    .line 35
    sput-boolean p0, Lcom/daily2fun/pay/union/PayInterFace;->maiPayStatus:Z

    return-void
.end method

.method static synthetic access$5(Lcom/daily2fun/pay/union/PayInterFace;)Lorg/zzf/core/ZhangPayCallback;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/daily2fun/pay/union/PayInterFace;->callBack:Lorg/zzf/core/ZhangPayCallback;

    return-object v0
.end method

.method public static getInstance()Lcom/daily2fun/pay/union/PayInterFace;
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/daily2fun/pay/union/PayInterFace;->payInterFace:Lcom/daily2fun/pay/union/PayInterFace;

    if-nez v0, :cond_1

    .line 58
    sget-object v1, Lcom/daily2fun/pay/union/PayInterFace;->object:Ljava/lang/Object;

    monitor-enter v1

    .line 59
    :try_start_0
    sget-object v0, Lcom/daily2fun/pay/union/PayInterFace;->payInterFace:Lcom/daily2fun/pay/union/PayInterFace;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/daily2fun/pay/union/PayInterFace;

    invoke-direct {v0}, Lcom/daily2fun/pay/union/PayInterFace;-><init>()V

    sput-object v0, Lcom/daily2fun/pay/union/PayInterFace;->payInterFace:Lcom/daily2fun/pay/union/PayInterFace;

    .line 58
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_1
    sget-object v0, Lcom/daily2fun/pay/union/PayInterFace;->payInterFace:Lcom/daily2fun/pay/union/PayInterFace;

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getPayType()I
    .locals 1

    .prologue
    .line 317
    sget v0, Lcom/daily2fun/pay/union/PayInterFace;->PAY_TYPE:I

    return v0
.end method

.method private initDnPay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "cpId"    # Ljava/lang/String;
    .param p4, "chId"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 110
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 109
    invoke-virtual {v0, v1, v2, p4}, Lcom/door/frame/DnPayServer;->setParams(IILjava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    move-result-object v0

    iget-object v1, p0, Lcom/daily2fun/pay/union/PayInterFace;->appHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Lcom/door/frame/DnPayServer;->init(Landroid/content/Context;Landroid/os/Handler;)V

    .line 112
    return-void
.end method

.method private initMaiPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "msa"    # Ljava/lang/String;
    .param p3, "channelid"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-static {p1, p2, p3}, Lcom/android/mtools/MPay;->getInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcom/android/mtools/MPay;

    move-result-object v0

    iput-object v0, p0, Lcom/daily2fun/pay/union/PayInterFace;->mPay:Lcom/android/mtools/MPay;

    .line 116
    iget-object v0, p0, Lcom/daily2fun/pay/union/PayInterFace;->mPay:Lcom/android/mtools/MPay;

    invoke-virtual {v0}, Lcom/android/mtools/MPay;->initMPay()V

    .line 117
    return-void
.end method

.method private initZhangPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "channelId"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "qd"    # Ljava/lang/String;

    .prologue
    .line 97
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/daily2fun/pay/union/PayInterFace$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/daily2fun/pay/union/PayInterFace$4;-><init>(Lcom/daily2fun/pay/union/PayInterFace;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 103
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 105
    return-void
.end method

.method private isNetAvalable(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    .line 162
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 161
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 163
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 164
    .local v2, "networkInfo":[Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-lt v1, v3, :cond_0

    .line 169
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 165
    :cond_0
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_1

    .line 166
    const/4 v3, 0x1

    goto :goto_1

    .line 164
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static onDestroy()V
    .locals 1

    .prologue
    .line 260
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/door/frame/DnPayServer;->exit()V

    .line 261
    return-void
.end method

.method public static setPayType(I)V
    .locals 0
    .param p0, "payType"    # I

    .prologue
    .line 321
    sput p0, Lcom/daily2fun/pay/union/PayInterFace;->PAY_TYPE:I

    .line 322
    return-void
.end method

.method private showFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "priciePointId"    # Ljava/lang/String;
    .param p2, "okCode"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 291
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 292
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "priciePointId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v2, "okCode"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v2, "result"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 295
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 296
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 297
    iget-object v2, p0, Lcom/daily2fun/pay/union/PayInterFace;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 298
    const/4 v2, 0x1

    sput-boolean v2, Lcom/daily2fun/pay/union/PayInterFace;->hasCalled:Z

    .line 299
    sput-boolean v3, Lcom/daily2fun/pay/union/PayInterFace;->isPaying:Z

    .line 300
    return-void
.end method

.method private showResult(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Z
    .param p2, "priciePointId"    # Ljava/lang/String;
    .param p3, "okCode"    # Ljava/lang/String;

    .prologue
    .line 264
    sget-boolean v0, Lcom/daily2fun/pay/union/PayInterFace;->hasCalled:Z

    if-nez v0, :cond_0

    .line 265
    if-eqz p1, :cond_1

    .line 266
    invoke-direct {p0, p2, p3}, Lcom/daily2fun/pay/union/PayInterFace;->showSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    sget-boolean v0, Lcom/daily2fun/pay/union/PayInterFace;->zhangPayStatus:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/daily2fun/pay/union/PayInterFace;->DnPayStatus:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/daily2fun/pay/union/PayInterFace;->maiPayStatus:Z

    if-eqz v0, :cond_0

    .line 269
    invoke-direct {p0, p2, p3}, Lcom/daily2fun/pay/union/PayInterFace;->showFail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "priciePointId"    # Ljava/lang/String;
    .param p2, "okCode"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 279
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 280
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "priciePointId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v2, "okCode"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v2, "result"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 283
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 284
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 285
    iget-object v2, p0, Lcom/daily2fun/pay/union/PayInterFace;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 286
    sput-boolean v3, Lcom/daily2fun/pay/union/PayInterFace;->hasCalled:Z

    .line 287
    const/4 v2, 0x0

    sput-boolean v2, Lcom/daily2fun/pay/union/PayInterFace;->isPaying:Z

    .line 288
    return-void
.end method

.method private startDnPay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "Paycode"    # Ljava/lang/String;
    .param p3, "extData"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/door/frame/DnPayServer;->startPayservice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
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
    .line 174
    .local p2, "payInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/daily2fun/pay/union/PayInterFace$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/daily2fun/pay/union/PayInterFace$5;-><init>(Lcom/daily2fun/pay/union/PayInterFace;Landroid/content/Context;Ljava/util/Map;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 181
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 182
    return-void
.end method

.method private startmaiPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "gid"    # Ljava/lang/String;
    .param p2, "cpOid"    # Ljava/lang/String;
    .param p3, "price"    # Ljava/lang/String;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/daily2fun/pay/union/PayInterFace;->mPay:Lcom/android/mtools/MPay;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Lcom/daily2fun/pay/union/PayInterFace$MyListener;

    invoke-direct {v2, p0}, Lcom/daily2fun/pay/union/PayInterFace$MyListener;-><init>(Lcom/daily2fun/pay/union/PayInterFace;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/mtools/MPay;->xPay(Ljava/lang/String;Ljava/lang/String;ILcom/android/mtools/MPayListener;)V

    .line 191
    return-void
.end method


# virtual methods
.method public initPaySdk(Landroid/app/Activity;Ljava/util/Map;)V
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
    .line 70
    .local p2, "initInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/daily2fun/pay/union/PayInterFace;->getPayType()I

    move-result v0

    .line 71
    .local v0, "payType":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 72
    const-string v1, "channelId"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 73
    const-string v2, "appId"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "qd"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 72
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/daily2fun/pay/union/PayInterFace;->initZhangPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 75
    const-string v1, "appid"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "cpid"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 76
    const-string v3, "chid"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 75
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/daily2fun/pay/union/PayInterFace;->initDnPay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 78
    const-string v1, "channelId"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 79
    const-string v2, "appId"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "qd"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 78
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/daily2fun/pay/union/PayInterFace;->initZhangPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v1, "appid"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "cpid"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 82
    const-string v3, "chid"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 81
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/daily2fun/pay/union/PayInterFace;->initDnPay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 84
    const-string v1, "channelId"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 85
    const-string v2, "appId"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "qd"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 84
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/daily2fun/pay/union/PayInterFace;->initZhangPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v1, "appid"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "cpid"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 88
    const-string v3, "chid"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 87
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/daily2fun/pay/union/PayInterFace;->initDnPay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v1, "MAI_MSA"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 91
    const-string v2, "MAI_CHANNELID"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 90
    invoke-direct {p0, p1, v1, v2}, Lcom/daily2fun/pay/union/PayInterFace;->initMaiPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
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

    .line 122
    iput-object p3, p0, Lcom/daily2fun/pay/union/PayInterFace;->payCallBack:Lcom/daily2fun/pay/union/ResultCallBack;

    .line 123
    iput-object p2, p0, Lcom/daily2fun/pay/union/PayInterFace;->payInfo:Ljava/util/Map;

    .line 124
    iput-object p1, p0, Lcom/daily2fun/pay/union/PayInterFace;->activity:Landroid/app/Activity;

    .line 125
    sget-boolean v0, Lcom/daily2fun/pay/union/PayInterFace;->isPaying:Z

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "\u6709\u8ba2\u5355\u6b63\u5728\u652f\u4ed8"

    invoke-static {v0}, Lcom/daily2fun/pay/union/Log;->V(Ljava/lang/String;)V

    .line 158
    :goto_0
    return-void

    .line 129
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/daily2fun/pay/union/PayInterFace;->isPaying:Z

    .line 130
    sput-boolean v1, Lcom/daily2fun/pay/union/PayInterFace;->hasCalled:Z

    .line 131
    sput-boolean v1, Lcom/daily2fun/pay/union/PayInterFace;->zhangPayStatus:Z

    .line 132
    sput-boolean v1, Lcom/daily2fun/pay/union/PayInterFace;->DnPayStatus:Z

    .line 133
    sput-boolean v1, Lcom/daily2fun/pay/union/PayInterFace;->maiPayStatus:Z

    .line 153
    const-string v0, "payCode"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "extData"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/daily2fun/pay/union/PayInterFace;->startDnPay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/daily2fun/pay/union/PayInterFace;->startZhangPay(Landroid/content/Context;Ljava/util/Map;)V

    .line 155
    const-string v0, "gid"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "cpOid"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 156
    const-string v2, "price"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 155
    invoke-direct {p0, v0, v1, v2}, Lcom/daily2fun/pay/union/PayInterFace;->startmaiPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.class public Lorg/cocos2dx/pay/PayInterface;
.super Ljava/lang/Object;
.source "PayInterface.java"


# static fields
.field private static final MSG_PAY:I

.field private static isFirst:Z

.field private static object:Ljava/lang/Object;

.field private static orderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/cocos2dx/pay/OrderBean;",
            ">;"
        }
    .end annotation
.end field

.field private static sdkEntry:Lorg/cocos2dx/pay/PayInterface;


# instance fields
.field private appHandler:Landroid/os/Handler;

.field private bean:Lorg/cocos2dx/pay/OrderBean;

.field private handler:Landroid/os/Handler;

.field private mActivity:Landroid/app/Activity;

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/cocos2dx/pay/PayInterface;->object:Ljava/lang/Object;

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lorg/cocos2dx/pay/PayInterface;->sdkEntry:Lorg/cocos2dx/pay/PayInterface;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/cocos2dx/pay/PayInterface;->orderList:Ljava/util/List;

    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lorg/cocos2dx/pay/PayInterface;->isFirst:Z

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lorg/cocos2dx/pay/PayInterface;->bean:Lorg/cocos2dx/pay/OrderBean;

    .line 27
    iput-object v0, p0, Lorg/cocos2dx/pay/PayInterface;->timer:Ljava/util/Timer;

    .line 435
    new-instance v0, Lorg/cocos2dx/pay/PayInterface$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/cocos2dx/pay/PayInterface$1;-><init>(Lorg/cocos2dx/pay/PayInterface;Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/cocos2dx/pay/PayInterface;->appHandler:Landroid/os/Handler;

    .line 475
    new-instance v0, Lorg/cocos2dx/pay/PayInterface$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/cocos2dx/pay/PayInterface$2;-><init>(Lorg/cocos2dx/pay/PayInterface;Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/cocos2dx/pay/PayInterface;->handler:Landroid/os/Handler;

    .line 35
    return-void
.end method

.method static synthetic access$0()Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lorg/cocos2dx/pay/PayInterface;->orderList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lorg/cocos2dx/pay/PayInterface;)V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Lorg/cocos2dx/pay/PayInterface;->pay()V

    return-void
.end method

.method static synthetic access$2(Z)V
    .locals 0

    .prologue
    .line 26
    sput-boolean p0, Lorg/cocos2dx/pay/PayInterface;->isFirst:Z

    return-void
.end method

.method static synthetic access$3(Lorg/cocos2dx/pay/PayInterface;)V
    .locals 0

    .prologue
    .line 470
    invoke-direct {p0}, Lorg/cocos2dx/pay/PayInterface;->onNext()V

    return-void
.end method

.method private dotimeOut()V
    .locals 4

    .prologue
    .line 491
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/pay/PayInterface;->timer:Ljava/util/Timer;

    .line 492
    iget-object v0, p0, Lorg/cocos2dx/pay/PayInterface;->timer:Ljava/util/Timer;

    new-instance v1, Lorg/cocos2dx/pay/PayInterface$3;

    invoke-direct {v1, p0}, Lorg/cocos2dx/pay/PayInterface$3;-><init>(Lorg/cocos2dx/pay/PayInterface;)V

    .line 498
    const-wide/16 v2, 0x3a98

    .line 492
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 499
    return-void
.end method

.method public static getInstance()Lorg/cocos2dx/pay/PayInterface;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lorg/cocos2dx/pay/PayInterface;->sdkEntry:Lorg/cocos2dx/pay/PayInterface;

    if-nez v0, :cond_1

    .line 39
    sget-object v1, Lorg/cocos2dx/pay/PayInterface;->object:Ljava/lang/Object;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lorg/cocos2dx/pay/PayInterface;->sdkEntry:Lorg/cocos2dx/pay/PayInterface;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lorg/cocos2dx/pay/PayInterface;

    invoke-direct {v0}, Lorg/cocos2dx/pay/PayInterface;-><init>()V

    sput-object v0, Lorg/cocos2dx/pay/PayInterface;->sdkEntry:Lorg/cocos2dx/pay/PayInterface;

    .line 39
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Lorg/cocos2dx/pay/PayInterface;->sdkEntry:Lorg/cocos2dx/pay/PayInterface;

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initBeiaiPay(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    return-void
.end method

.method private initLemiPay(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    return-void
.end method

.method private initMaiPay(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 206
    return-void
.end method

.method private initMoxinPay(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 144
    return-void
.end method

.method private initQipaPay(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 201
    return-void
.end method

.method private initWeiyunPay(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    return-void
.end method

.method private initYingmeiPay(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 126
    return-void
.end method

.method private initYuanlang(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 116
    return-void
.end method

.method private initYueyouPay(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 71
    return-void
.end method

.method private initYufengPay(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 174
    return-void
.end method

.method private initZhongzhiPay(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 91
    return-void
.end method

.method private onNext()V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lorg/cocos2dx/pay/PayInterface;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 472
    iget-object v0, p0, Lorg/cocos2dx/pay/PayInterface;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 473
    return-void
.end method

.method private pay()V
    .locals 2

    .prologue
    .line 259
    sget-object v0, Lorg/cocos2dx/pay/PayInterface;->orderList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/pay/OrderBean;

    iput-object v0, p0, Lorg/cocos2dx/pay/PayInterface;->bean:Lorg/cocos2dx/pay/OrderBean;

    .line 260
    invoke-direct {p0}, Lorg/cocos2dx/pay/PayInterface;->dotimeOut()V

    .line 261
    iget-object v0, p0, Lorg/cocos2dx/pay/PayInterface;->bean:Lorg/cocos2dx/pay/OrderBean;

    invoke-virtual {v0}, Lorg/cocos2dx/pay/OrderBean;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/pay/PayInterface;->bean:Lorg/cocos2dx/pay/OrderBean;

    invoke-virtual {v1}, Lorg/cocos2dx/pay/OrderBean;->getPayIndex()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/cocos2dx/pay/PayInterface;->startBeiaiPay(Landroid/app/Activity;I)V

    .line 262
    iget-object v0, p0, Lorg/cocos2dx/pay/PayInterface;->bean:Lorg/cocos2dx/pay/OrderBean;

    invoke-virtual {v0}, Lorg/cocos2dx/pay/OrderBean;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/pay/PayInterface;->bean:Lorg/cocos2dx/pay/OrderBean;

    invoke-virtual {v1}, Lorg/cocos2dx/pay/OrderBean;->getPayIndex()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/cocos2dx/pay/PayInterface;->startDnPay(Landroid/content/Context;I)V

    .line 263
    iget-object v0, p0, Lorg/cocos2dx/pay/PayInterface;->bean:Lorg/cocos2dx/pay/OrderBean;

    invoke-virtual {v0}, Lorg/cocos2dx/pay/OrderBean;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/pay/PayInterface;->bean:Lorg/cocos2dx/pay/OrderBean;

    invoke-virtual {v1}, Lorg/cocos2dx/pay/OrderBean;->getPayIndex()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/cocos2dx/pay/PayInterface;->startLemiPay(Landroid/content/Context;I)V

    .line 264
    iget-object v0, p0, Lorg/cocos2dx/pay/PayInterface;->bean:Lorg/cocos2dx/pay/OrderBean;

    invoke-virtual {v0}, Lorg/cocos2dx/pay/OrderBean;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/pay/PayInterface;->bean:Lorg/cocos2dx/pay/OrderBean;

    invoke-virtual {v1}, Lorg/cocos2dx/pay/OrderBean;->getPayIndex()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/cocos2dx/pay/PayInterface;->startmaiPay(Landroid/app/Activity;I)V

    .line 265
    iget-object v0, p0, Lorg/cocos2dx/pay/PayInterface;->bean:Lorg/cocos2dx/pay/OrderBean;

    invoke-virtual {v0}, Lorg/cocos2dx/pay/OrderBean;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/pay/PayInterface;->bean:Lorg/cocos2dx/pay/OrderBean;

    invoke-virtual {v1}, Lorg/cocos2dx/pay/OrderBean;->getPayIndex()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/cocos2dx/pay/PayInterface;->startYufengPay(Landroid/app/Activity;I)V

    .line 266
    iget-object v0, p0, Lorg/cocos2dx/pay/PayInterface;->bean:Lorg/cocos2dx/pay/OrderBean;

    invoke-virtual {v0}, Lorg/cocos2dx/pay/OrderBean;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/pay/PayInterface;->bean:Lorg/cocos2dx/pay/OrderBean;

    invoke-virtual {v1}, Lorg/cocos2dx/pay/OrderBean;->getPayIndex()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/cocos2dx/pay/PayInterface;->startMoxinPay(Landroid/app/Activity;I)V

    .line 267
    iget-object v0, p0, Lorg/cocos2dx/pay/PayInterface;->bean:Lorg/cocos2dx/pay/OrderBean;

    invoke-virtual {v0}, Lorg/cocos2dx/pay/OrderBean;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/pay/PayInterface;->bean:Lorg/cocos2dx/pay/OrderBean;

    invoke-virtual {v1}, Lorg/cocos2dx/pay/OrderBean;->getPayIndex()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/cocos2dx/pay/PayInterface;->startWeiyunPay(Landroid/app/Activity;I)V

    .line 268
    iget-object v0, p0, Lorg/cocos2dx/pay/PayInterface;->bean:Lorg/cocos2dx/pay/OrderBean;

    invoke-virtual {v0}, Lorg/cocos2dx/pay/OrderBean;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/pay/PayInterface;->bean:Lorg/cocos2dx/pay/OrderBean;

    invoke-virtual {v1}, Lorg/cocos2dx/pay/OrderBean;->getPayIndex()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/cocos2dx/pay/PayInterface;->startDylPay(Landroid/app/Activity;I)V

    .line 269
    iget-object v0, p0, Lorg/cocos2dx/pay/PayInterface;->bean:Lorg/cocos2dx/pay/OrderBean;

    invoke-virtual {v0}, Lorg/cocos2dx/pay/OrderBean;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/pay/PayInterface;->bean:Lorg/cocos2dx/pay/OrderBean;

    invoke-virtual {v1}, Lorg/cocos2dx/pay/OrderBean;->getPayIndex()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/cocos2dx/pay/PayInterface;->startYuanlangPay(Landroid/app/Activity;I)V

    .line 270
    iget-object v0, p0, Lorg/cocos2dx/pay/PayInterface;->bean:Lorg/cocos2dx/pay/OrderBean;

    invoke-virtual {v0}, Lorg/cocos2dx/pay/OrderBean;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/pay/PayInterface;->bean:Lorg/cocos2dx/pay/OrderBean;

    invoke-virtual {v1}, Lorg/cocos2dx/pay/OrderBean;->getPayIndex()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/cocos2dx/pay/PayInterface;->startZhongzhiPay(Landroid/app/Activity;I)V

    .line 271
    iget-object v0, p0, Lorg/cocos2dx/pay/PayInterface;->bean:Lorg/cocos2dx/pay/OrderBean;

    invoke-virtual {v0}, Lorg/cocos2dx/pay/OrderBean;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/pay/PayInterface;->bean:Lorg/cocos2dx/pay/OrderBean;

    invoke-virtual {v1}, Lorg/cocos2dx/pay/OrderBean;->getPayIndex()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/cocos2dx/pay/PayInterface;->startYueyouPay(Landroid/app/Activity;I)V

    .line 272
    return-void
.end method

.method private startBeiaiPay(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "index"    # I

    .prologue
    .line 345
    return-void
.end method

.method private startDnPay(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .prologue
    .line 412
    return-void
.end method

.method private startDylPay(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "index"    # I

    .prologue
    .line 340
    return-void
.end method

.method private startLemiPay(Landroid/content/Context;I)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "index"    # I

    .prologue
    .line 386
    return-void
.end method

.method private startMoxinPay(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "index"    # I

    .prologue
    .line 382
    return-void
.end method

.method private startWeiyunPay(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "index"    # I

    .prologue
    .line 375
    return-void
.end method

.method private startYuanlangPay(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "index"    # I

    .prologue
    .line 233
    return-void
.end method

.method private startYueyouPay(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "index"    # I

    .prologue
    .line 287
    return-void
.end method

.method private startYufengPay(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "index"    # I

    .prologue
    .line 407
    return-void
.end method

.method private startZhongzhiPay(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "index"    # I

    .prologue
    .line 304
    return-void
.end method

.method private startmaiPay(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "index"    # I

    .prologue
    .line 419
    return-void
.end method


# virtual methods
.method public init(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 54
    iput-object p1, p0, Lorg/cocos2dx/pay/PayInterface;->mActivity:Landroid/app/Activity;

    .line 55
    iget-object v0, p0, Lorg/cocos2dx/pay/PayInterface;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lorg/cocos2dx/pay/PayInterface;->initWeiyunPay(Landroid/content/Context;)V

    .line 56
    iget-object v0, p0, Lorg/cocos2dx/pay/PayInterface;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lorg/cocos2dx/pay/PayInterface;->initBeiaiPay(Landroid/content/Context;)V

    .line 57
    iget-object v0, p0, Lorg/cocos2dx/pay/PayInterface;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lorg/cocos2dx/pay/PayInterface;->initLemiPay(Landroid/content/Context;)V

    .line 58
    iget-object v0, p0, Lorg/cocos2dx/pay/PayInterface;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lorg/cocos2dx/pay/PayInterface;->initMaiPay(Landroid/app/Activity;)V

    .line 59
    iget-object v0, p0, Lorg/cocos2dx/pay/PayInterface;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lorg/cocos2dx/pay/PayInterface;->initMoxinPay(Landroid/app/Activity;)V

    .line 60
    iget-object v0, p0, Lorg/cocos2dx/pay/PayInterface;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lorg/cocos2dx/pay/PayInterface;->initYingmeiPay(Landroid/app/Activity;)V

    .line 62
    iget-object v0, p0, Lorg/cocos2dx/pay/PayInterface;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lorg/cocos2dx/pay/PayInterface;->initQipaPay(Landroid/content/Context;)V

    .line 63
    iget-object v0, p0, Lorg/cocos2dx/pay/PayInterface;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lorg/cocos2dx/pay/PayInterface;->initYuanlang(Landroid/app/Activity;)V

    .line 64
    iget-object v0, p0, Lorg/cocos2dx/pay/PayInterface;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lorg/cocos2dx/pay/PayInterface;->initZhongzhiPay(Landroid/app/Activity;)V

    .line 65
    iget-object v0, p0, Lorg/cocos2dx/pay/PayInterface;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lorg/cocos2dx/pay/PayInterface;->initYufengPay(Landroid/app/Activity;)V

    .line 66
    iget-object v0, p0, Lorg/cocos2dx/pay/PayInterface;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lorg/cocos2dx/pay/PayInterface;->initYueyouPay(Landroid/app/Activity;)V

    .line 67
    return-void
.end method

.method public initDuoyile(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    return-void
.end method

.method public initYueyouPay(Landroid/app/Application;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 75
    return-void
.end method

.method public onDestroy(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 468
    return-void
.end method

.method public pay(Landroid/app/Activity;ILorg/cocos2dx/pay/ResultCallback;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "payIndex"    # I
    .param p3, "callback"    # Lorg/cocos2dx/pay/ResultCallback;

    .prologue
    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Lorg/cocos2dx/pay/ResultCallback;->onPaySuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    new-instance v0, Lorg/cocos2dx/pay/OrderBean;

    invoke-direct {v0, p1, p2, p3}, Lorg/cocos2dx/pay/OrderBean;-><init>(Landroid/app/Activity;ILorg/cocos2dx/pay/ResultCallback;)V

    .line 220
    .local v0, "origBean":Lorg/cocos2dx/pay/OrderBean;
    sget-object v1, Lorg/cocos2dx/pay/PayInterface;->orderList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    sget-boolean v1, Lorg/cocos2dx/pay/PayInterface;->isFirst:Z

    if-eqz v1, :cond_0

    .line 222
    const/4 v1, 0x0

    sput-boolean v1, Lorg/cocos2dx/pay/PayInterface;->isFirst:Z

    .line 223
    invoke-direct {p0}, Lorg/cocos2dx/pay/PayInterface;->pay()V

    .line 225
    :cond_0
    return-void
.end method
